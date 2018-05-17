/*!
 *  Copyright (c) 2018 by Contributors
 * \file vta.cc
 * \brief VTA HLS design.
 */

#include <string.h>

#include "./vta.h"

void vta(
  uint32_t insn_count,
  volatile insn_T *insns,
  volatile uop_T *uops,
  volatile inp_vec_T *inputs,
  volatile wgt_vec_T *weights,
  volatile acc_vec_T *biases,
  volatile acc_vec_T *outputs) {
#pragma HLS INTERFACE s_axilite port = insn_count bundle = CONTROL_BUS
#pragma HLS INTERFACE m_axi port = insns offset = slave bundle = ins_port
#pragma HLS INTERFACE m_axi port = uops offset = slave bundle = uop_port
#pragma HLS INTERFACE m_axi port = inputs offset = slave bundle = narrow_port
#pragma HLS INTERFACE m_axi port = weights offset = slave bundle = narrow_port
#pragma HLS INTERFACE m_axi port = biases offset = slave bundle = wide_port
#pragma HLS INTERFACE m_axi port = outputs offset = slave bundle = wide_port
#pragma HLS INTERFACE s_axilite port = return bundle = CONTROL_BUS

  // Local SRAMs
  uop_T uop_mem[VTA_UOP_BUFF_DEPTH];
  inp_vec_T inp_mem[VTA_INP_BUFF_DEPTH][VTA_BATCH];     // inp_vec_T is VTA_BLOCK_IN wide
  wgt_vec_T wgt_mem[VTA_WGT_BUFF_DEPTH][VTA_BLOCK_OUT]; // wgt_vec_T is VTA_BLOCK_IN wide
  acc_vec_T acc_mem[VTA_ACC_BUFF_DEPTH][VTA_BATCH];     // acc_vec_T is VTA_BLOCK_OUT wide
  // TODO Part 1.b: Insert storage pragmas to improve READ_GEMM_UOP II
#pragma HLS ARRAY_PARTITION variable=inp_mem factor=16 dim=2 partition
#pragma HLS ARRAY_PARTITION variable=wgt_mem factor=16 dim=2 partition
#pragma HLS ARRAY_PARTITION variable=acc_mem factor=16 dim=2 partition
	
  INSN_LOOP: for (int pc = 0; pc < insn_count; pc++) {
    // Load instruction fields
    VTAInsn insn;
    insn.generic = (insn_T) insns[pc];
    // Do some partial decoding
    opcode_T opcode = insn.mem.opcode;
    // Perform appropriate hardware action
    if (opcode == VTA_OPCODE_LOAD || opcode == VTA_OPCODE_STORE) {
      // Decode load instruction
      memop_id_T memory_type = insn.mem.memory_type;
      memop_sram_T sram_base = insn.mem.sram_base;
      memop_dram_T dram_base = insn.mem.dram_base;
      memop_sram_T size = insn.mem.size;
      if (opcode == VTA_OPCODE_LOAD) {
        // Copy the data to the target SRAM
        if (memory_type == VTA_MEM_ID_UOP) {
          memcpy(&uop_mem[sram_base],
                 (const uop_T*) &uops[dram_base],
                 size * sizeof(uop_T));
        } else if (memory_type == VTA_MEM_ID_INP) {
          memcpy(&inp_mem[sram_base][0],
                 (const inp_vec_T*) &inputs[dram_base * VTA_BATCH],
                 size * sizeof(inp_vec_T) * VTA_BATCH);
          //printf("DEBUG - size= %d, %d, %d \n", static_cast<uint>(size), sizeof(inp_vec_T), VTA_BATCH);
          /*for (int i = 0; i < size * sizeof(inp_vec_T) * VTA_BATCH / sizeof(inp_vec_T); ++i){
              printf("DEBUG - i= %d, data= 0x%x \n",i,
                static_cast<uint16_t>(inp_mem[sram_base][i]));
            for (int k = 0; k < sizeof(inp_vec_T) * 8; ++k){
              printf("DEBUG - k= %d, bit= %d \n", k, 
              static_cast<uint16_t>(inp_mem[sram_base][i].range((k+1) * VTA_INP_WIDTH - 1, k * VTA_INP_WIDTH)));
            }
          }*/       
        } else if (memory_type == VTA_MEM_ID_WGT) {
          memcpy(&wgt_mem[sram_base][0],
                 (const wgt_vec_T*) &weights[dram_base * VTA_BLOCK_OUT],
                 size * sizeof(wgt_vec_T) * VTA_BLOCK_OUT);
          /*for (int i = 0; i < size * sizeof(wgt_vec_T) * VTA_BLOCK_OUT / sizeof(wgt_vec_T); ++i){
              printf("DEBUG - i= %d, dweight= 0x%x \n",i,
                static_cast<uint16_t>(wgt_mem[sram_base][i]));
          }*/
        } else if (memory_type == VTA_MEM_ID_ACC) {
          memcpy(&acc_mem[sram_base][0],
                 (const acc_vec_T*) &biases[dram_base * VTA_BATCH],
                 size * sizeof(acc_vec_T) * VTA_BATCH);
        }
      } else {
        // Copy the accumulator data to DRAM
        memcpy(const_cast<acc_vec_T*>(&outputs[dram_base * VTA_BATCH]),
               (const acc_vec_T*) &acc_mem[sram_base][0],
               size * sizeof(acc_vec_T) * VTA_BATCH);
      }
    } else if (opcode == VTA_OPCODE_GEMM) {
      printf("INFO - VTA_OPCODE_GEMM\n");
      // Decode GEMM instruction
      bool reset_acc = insn.gemm.reset_reg;
      uop_idx_T uop_bgn = insn.gemm.uop_bgn;
      uop_idx_T uop_end = insn.gemm.uop_end;
      // Iterate over micro ops
      READ_GEMM_UOP: for (int upc = uop_bgn; upc < uop_end; upc++) {
      // TODO Part 1.1b: Insert loop pragmas to improve READ_GEMM_UOP II
#pragma HLS PIPELINE II=1
#pragma HLS dependence variable=acc_mem inter false
		  // TODO Part 1.1a: Implement GEMM core
        VTAUop uop_insn;
        uop_insn.generic = (insn_T) uop_mem[upc];
        inp_idx_T in_idx = uop_insn.gemm.src_idx;
        wgt_idx_T wt_idx = uop_insn.gemm.wgt_idx;
        acc_idx_T ac_idx = uop_insn.gemm.dst_idx;  
        if (reset_acc){
          for (int i = 0; i < VTA_BATCH ; ++i){
            acc_mem[ac_idx][i] = 0;
          }
          //acc_mem[ac_idx][i].range((j+1) * VTA_ACC_WIDTH - 1, j * VTA_ACC_WIDTH) = 0;
        }
        else{    
          for (int i = 0; i < VTA_BATCH ; ++i){
            for (int j=0; j < VTA_BLOCK_OUT; ++j){
              acc_T temp = acc_mem[ac_idx][i].range((j+1) * VTA_ACC_WIDTH - 1, j * VTA_ACC_WIDTH);
              for (int k=0; k < VTA_BLOCK_IN; ++k){
                inp_T elem = inp_mem[in_idx][i].range((k+1) * VTA_INP_WIDTH - 1, k * VTA_INP_WIDTH);
                wgt_T weight = wgt_mem[wt_idx][j].range((k+1) * VTA_WGT_WIDTH - 1, k * VTA_WGT_WIDTH);
                temp = temp + elem * weight;
                //temp = temp + ((inp_T)inp_mem[in_idx][i].range((k+1) * VTA_INP_WIDTH - 1, k * VTA_INP_WIDTH)) * ((wgt_T)wgt_mem[wt_idx][j].range((k+1) * VTA_WGT_WIDTH - 1, k * VTA_WGT_WIDTH));
              }
              acc_mem[ac_idx][i].range((j+1) * VTA_ACC_WIDTH - 1, j * VTA_ACC_WIDTH) = temp;
            }
          }
        }
      }
    }else if (opcode == VTA_OPCODE_BGEMM) {
      printf("INFO - VTA_OPCODE_BGEMM\n");
      // Decode BGEMM instruction
      bool reset_acc = insn.gemm.reset_reg;
      uop_idx_T uop_bgn = insn.gemm.uop_bgn;
      uop_idx_T uop_end = insn.gemm.uop_end;
      // Iterate over micro ops
      READ_BGEMM_UOP: for (int upc = uop_bgn; upc < uop_end; upc++) {
      // Loop pragmas to improve READ_BGEMM_UOP II
  #pragma HLS PIPELINE II=1
  #pragma HLS dependence variable=acc_mem inter false
      // BGEMM core
        VTAUop uop_insn;
        uop_insn.generic = (insn_T) uop_mem[upc];
        inp_idx_T in_idx = uop_insn.bgemm.src_idx;
        wgt_idx_T wt_idx = uop_insn.bgemm.wgt_idx;
        acc_idx_T ac_idx = uop_insn.bgemm.dst_idx;
        /*printf("DEBUG - in_idx= %d, wt_idx=%d, ac_idx=%d: \n",
                static_cast<uint>(in_idx), 
                static_cast<uint>(wt_idx), 
                static_cast<uint>(ac_idx));*/
        //sft_val_T st_val = uop_insn.bgemm.sft_val;   
        if (reset_acc){
          for (int i = 0; i < VTA_BATCH ; ++i){
            acc_mem[ac_idx][i] = 0;
          }
          //acc_mem[ac_idx][i].range((j+1) * VTA_ACC_WIDTH - 1, j * VTA_ACC_WIDTH) = 0;
        }
        else{
          /*for (int i = 0; i < VTA_BATCH; ++i){
            for (int k=0; k < VTA_BLOCK_IN; ++k){
              printf("DEBUG - %d, %d, data= %d \n",i,k,
                static_cast<uint>(inp_mem[in_idx][i].range((k+1) * VTA_INP_WIDTH - 1, k * VTA_INP_WIDTH)));
            }
          }*/   
          for (int i = 0; i < VTA_BATCH ; ++i){
            for (int j=0; j < VTA_BLOCK_OUT; ++j){
              acc_T temp = acc_mem[ac_idx][i].range((j+1) * VTA_ACC_WIDTH - 1, j * VTA_ACC_WIDTH);
              for (int k=0; k < VTA_BLOCK_IN; ++k){
                inp_T elem = inp_mem[in_idx][i].range((k+1) * VTA_INP_WIDTH - 1, k * VTA_INP_WIDTH);
                wgt_T weight = wgt_mem[wt_idx][j].range((k+1) * VTA_WGT_WIDTH - 1, k * VTA_WGT_WIDTH);
                temp = temp + (elem & weight) ;//<< st_val;     
                //temp = temp + ((inp_T)inp_mem[in_idx][i].range((k+1) * VTA_INP_WIDTH - 1, k * VTA_INP_WIDTH)) * ((wgt_T)wgt_mem[wt_idx][j].range((k+1) * VTA_WGT_WIDTH - 1, k * VTA_WGT_WIDTH));
                /*printf("DEBUG - %d, %d, %d, elem= %d, weight=%d, temp=%d: \n",i,j,k, 
                static_cast<uint>(elem), 
                static_cast<uint>(weight), 
                static_cast<uint>(temp));*/
              }
              acc_mem[ac_idx][i].range((j+1) * VTA_ACC_WIDTH - 1, j * VTA_ACC_WIDTH) = temp;
            }
          }
        }
      }
    }
  }
}

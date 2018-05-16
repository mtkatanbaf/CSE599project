; ModuleID = '/home/mohamad/Documents/CSE599/lab1/build/hls/vta/solution0/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vta_str = internal unnamed_addr constant [4 x i8] c"vta\00"
@mode9 = internal constant [10 x i8] c"s_axilite\00"
@mode7 = internal constant [10 x i8] c"s_axilite\00"
@mode5 = internal constant [10 x i8] c"s_axilite\00"
@mode3 = internal constant [10 x i8] c"s_axilite\00"
@mode1 = internal constant [10 x i8] c"s_axilite\00"
@mode = internal constant [10 x i8] c"s_axilite\00"
@memcpy_OC_wgt_mem_OC = internal unnamed_addr constant [34 x i8] c"memcpy.wgt_mem.V.addr.1.weights.V\00"
@memcpy_OC_outputs_OC = internal unnamed_addr constant [34 x i8] c"memcpy.outputs.V.acc_mem.V.addr.1\00"
@memcpy_OC_inp_mem_OC = internal unnamed_addr constant [33 x i8] c"memcpy.inp_mem.V.addr.1.inputs.V\00"
@memcpy_OC_acc_mem_OC = internal unnamed_addr constant [33 x i8] c"memcpy.acc_mem.V.addr.2.biases.V\00"
@memcpy_OC_OC_uops_s = internal unnamed_addr constant [13 x i8] c"memcpy..uops\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@burstwrite_OC_region = internal unnamed_addr constant [18 x i8] c"burstwrite.region\00"
@burstread_OC_region_s = internal unnamed_addr constant [17 x i8] c"burstread.region\00"
@bundle8 = internal constant [1 x i8] zeroinitializer
@bundle6 = internal constant [1 x i8] zeroinitializer
@bundle4 = internal constant [1 x i8] zeroinitializer
@bundle2 = internal constant [1 x i8] zeroinitializer
@bundle10 = internal constant [1 x i8] zeroinitializer
@bundle = internal constant [1 x i8] zeroinitializer
@p_str8 = private unnamed_addr constant [10 x i8] c"wide_port\00", align 1
@p_str7 = private unnamed_addr constant [12 x i8] c"narrow_port\00", align 1
@p_str6 = private unnamed_addr constant [9 x i8] c"uop_port\00", align 1
@p_str5 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@p_str4 = private unnamed_addr constant [9 x i8] c"ins_port\00", align 1
@p_str3 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str2 = private unnamed_addr constant [12 x i8] c"CONTROL_BUS\00", align 1
@p_str16 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str15 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str14 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str13 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str12 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str11 = private unnamed_addr constant [14 x i8] c"READ_GEMM_UOP\00", align 1
@p_str10 = private unnamed_addr constant [10 x i8] c"INSN_LOOP\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

define void @vta(i64* %ins_port, i32* %uop_port, i128* %narrow_port, i512* %wide_port, i32 %insn_count, i32 %insns, i32 %uops, i32 %inputs_V, i32 %weights_V, i32 %biases_V, i32 %outputs_V) {
arrayctor.loop4.preheader:
  %outputs_V_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %outputs_V)
  %biases_V_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %biases_V)
  %weights_V_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %weights_V)
  %inputs_V_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %inputs_V)
  %uops_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %uops)
  %insns_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %insns)
  %insn_count_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %insn_count)
  %tmp = call i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32 %outputs_V_read, i32 6, i32 31)
  %tmp_2_cast = zext i26 %tmp to i33
  %tmp_2 = call i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32 %biases_V_read, i32 6, i32 31)
  %tmp_3_cast = zext i26 %tmp_2 to i33
  %tmp_3 = call i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32 %weights_V_read, i32 4, i32 31)
  %tmp_5_cast = zext i28 %tmp_3 to i37
  %tmp_5 = call i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32 %inputs_V_read, i32 4, i32 31)
  %tmp_7_cast = zext i28 %tmp_5 to i33
  %tmp_7 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %uops_read, i32 2, i32 31)
  %tmp_9_cast = zext i30 %tmp_7 to i33
  %insns1 = call i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32 %insns_read, i32 3, i32 31)
  %tmp_9 = zext i29 %insns1 to i64
  %ins_port_addr = getelementptr i64* %ins_port, i64 %tmp_9
  call void (...)* @_ssdm_op_SpecBitsMap(i512* %wide_port), !map !105
  call void (...)* @_ssdm_op_SpecBitsMap(i128* %narrow_port), !map !110
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %uop_port), !map !115
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %ins_port), !map !119
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %insn_count), !map !123
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @vta_str) nounwind
  %uop_mem = alloca [4096 x i32], align 16
  %inp_mem_0_V = alloca [2048 x i128], align 8
  %wgt_mem_0_V = alloca [1024 x i128], align 8
  %wgt_mem_1_V = alloca [1024 x i128], align 8
  %wgt_mem_2_V = alloca [1024 x i128], align 8
  %wgt_mem_3_V = alloca [1024 x i128], align 8
  %wgt_mem_4_V = alloca [1024 x i128], align 8
  %wgt_mem_5_V = alloca [1024 x i128], align 8
  %wgt_mem_6_V = alloca [1024 x i128], align 8
  %wgt_mem_7_V = alloca [1024 x i128], align 8
  %wgt_mem_8_V = alloca [1024 x i128], align 8
  %wgt_mem_9_V = alloca [1024 x i128], align 8
  %wgt_mem_10_V = alloca [1024 x i128], align 8
  %wgt_mem_11_V = alloca [1024 x i128], align 8
  %wgt_mem_12_V = alloca [1024 x i128], align 8
  %wgt_mem_13_V = alloca [1024 x i128], align 8
  %wgt_mem_14_V = alloca [1024 x i128], align 8
  %wgt_mem_15_V = alloca [1024 x i128], align 8
  %acc_mem_0_V = alloca [2048 x i512], align 8
  call void (...)* @_ssdm_op_SpecInterface(i32 %insn_count, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [12 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* %ins_port, [6 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str4, [6 x i8]* @p_str5, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %insns, [10 x i8]* @mode, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @bundle, [6 x i8]* @p_str5, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %uop_port, [6 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str6, [6 x i8]* @p_str5, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %uops, [10 x i8]* @mode1, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @bundle2, [6 x i8]* @p_str5, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i128* %narrow_port, [6 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [12 x i8]* @p_str7, [6 x i8]* @p_str5, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %inputs_V, [10 x i8]* @mode3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @bundle4, [6 x i8]* @p_str5, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %weights_V, [10 x i8]* @mode5, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @bundle6, [6 x i8]* @p_str5, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i512* %wide_port, [6 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [10 x i8]* @p_str8, [6 x i8]* @p_str5, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %biases_V, [10 x i8]* @mode7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @bundle8, [6 x i8]* @p_str5, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %outputs_V, [10 x i8]* @mode9, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @bundle10, [6 x i8]* @p_str5, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [12 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %ins_port_addr_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i64P(i64* %ins_port_addr, i32 %insn_count_read)
  br label %0

; <label>:0                                       ; preds = %16, %arrayctor.loop4.preheader
  %pc = phi i32 [ 0, %arrayctor.loop4.preheader ], [ %pc_1, %16 ]
  %exitcond1 = icmp eq i32 %pc, %insn_count_read
  %pc_1 = add nsw i32 %pc, 1
  br i1 %exitcond1, label %17, label %1

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([10 x i8]* @p_str10) nounwind
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([10 x i8]* @p_str10)
  %insn = call i64 @_ssdm_op_Read.m_axi.i64P(i64* %ins_port_addr)
  %opcode_V = trunc i64 %insn to i2
  %tmp_13 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %insn, i32 1)
  br i1 %tmp_13, label %12, label %2

; <label>:2                                       ; preds = %1
  %memory_type_V = call i2 @_ssdm_op_PartSelect.i2.i64.i32.i32(i64 %insn, i32 2, i32 3)
  %sram_base_V = call i14 @_ssdm_op_PartSelect.i14.i64.i32.i32(i64 %insn, i32 4, i32 17)
  %dram_base_V = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %insn, i32 18, i32 49)
  %size_V = call i14 @_ssdm_op_PartSelect.i14.i64.i32.i32(i64 %insn, i32 50, i32 63)
  %tmp_s = icmp eq i2 %opcode_V, 0
  br i1 %tmp_s, label %3, label %11

; <label>:3                                       ; preds = %2
  %tmp_4 = icmp eq i2 %memory_type_V, 0
  br i1 %tmp_4, label %4, label %5

; <label>:4                                       ; preds = %3
  %tmp_13_cast = zext i32 %dram_base_V to i33
  %uops4_sum = add i33 %tmp_13_cast, %tmp_9_cast
  %uops4_sum_cast = zext i33 %uops4_sum to i64
  %uop_port_addr = getelementptr inbounds i32* %uop_port, i64 %uops4_sum_cast
  %tmp_14 = zext i14 %size_V to i32
  %p_i_cast = zext i14 %sram_base_V to i15
  %uop_port_addr_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32* %uop_port_addr, i32 %tmp_14)
  br label %burst.rd.header

burst.rd.header:                                  ; preds = %burst.rd.body, %4
  %indvar = phi i14 [ 0, %4 ], [ %indvar_next, %burst.rd.body ]
  %exitcond2 = icmp eq i14 %indvar, %size_V
  %indvar_next = add i14 %indvar, 1
  br i1 %exitcond2, label %burst.rd.end.loopexit, label %burst.rd.body

burst.rd.body:                                    ; preds = %burst.rd.header
  %indvar_cast = zext i14 %indvar to i15
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 16383, i64 0)
  %burstread_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_s) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str12)
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @memcpy_OC_OC_uops_s)
  %uop_port_addr_read = call i32 @_ssdm_op_Read.m_axi.i32P(i32* %uop_port_addr)
  %tmp_27 = add i15 %indvar_cast, %p_i_cast
  %tmp_28 = zext i15 %tmp_27 to i64
  %uop_mem_addr_1 = getelementptr [4096 x i32]* %uop_mem, i64 0, i64 %tmp_28
  store i32 %uop_port_addr_read, i32* %uop_mem_addr_1, align 4
  %burstread_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_s, i32 %burstread_rbegin) nounwind
  br label %burst.rd.header

; <label>:5                                       ; preds = %3
  %tmp_15 = icmp eq i2 %memory_type_V, -2
  br i1 %tmp_15, label %6, label %7

; <label>:6                                       ; preds = %5
  %lhs_V_cast = zext i32 %dram_base_V to i33
  %inputs_V6_sum = add i33 %lhs_V_cast, %tmp_7_cast
  %inputs_V6_sum_cast = zext i33 %inputs_V6_sum to i64
  %narrow_port_addr = getelementptr i128* %narrow_port, i64 %inputs_V6_sum_cast
  %tmp_17 = zext i14 %size_V to i32
  %tmp_23_i_cast = zext i14 %sram_base_V to i15
  %narrow_port_addr_rd_s = call i1 @_ssdm_op_ReadReq.m_axi.i128P(i128* %narrow_port_addr, i32 %tmp_17)
  br label %burst.rd.header8

burst.rd.header8:                                 ; preds = %burst.rd.body9, %6
  %indvar2 = phi i14 [ 0, %6 ], [ %indvar_next2, %burst.rd.body9 ]
  %exitcond3 = icmp eq i14 %indvar2, %size_V
  %indvar_next2 = add i14 %indvar2, 1
  br i1 %exitcond3, label %burst.rd.end7.loopexit, label %burst.rd.body9

burst.rd.body9:                                   ; preds = %burst.rd.header8
  %indvar2_cast = zext i14 %indvar2 to i15
  %empty_13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 16383, i64 0)
  %burstread_rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_s)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str13)
  call void (...)* @_ssdm_op_SpecLoopName([33 x i8]* @memcpy_OC_inp_mem_OC)
  %narrow_port_addr_rea = call i128 @_ssdm_op_Read.m_axi.i128P(i128* %narrow_port_addr)
  %tmp_36 = add i15 %indvar2_cast, %tmp_23_i_cast
  %tmp_37 = zext i15 %tmp_36 to i64
  %inp_mem_0_V_addr_1 = getelementptr [2048 x i128]* %inp_mem_0_V, i64 0, i64 %tmp_37
  store i128 %narrow_port_addr_rea, i128* %inp_mem_0_V_addr_1, align 8
  %burstread_rend17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_s, i32 %burstread_rbegin1)
  br label %burst.rd.header8

; <label>:7                                       ; preds = %5
  %tmp_18 = icmp eq i2 %memory_type_V, 1
  br i1 %tmp_18, label %8, label %9

; <label>:8                                       ; preds = %7
  %r_V = call i36 @_ssdm_op_BitConcatenate.i36.i32.i4(i32 %dram_base_V, i4 0)
  %r_V_2_cast_cast = zext i36 %r_V to i37
  %weights_V8_sum = add i37 %r_V_2_cast_cast, %tmp_5_cast
  %weights_V8_sum_cast = zext i37 %weights_V8_sum to i64
  %narrow_port_addr_1 = getelementptr i128* %narrow_port, i64 %weights_V8_sum_cast
  %tmp_36_add_i32_shr = call i18 @_ssdm_op_BitConcatenate.i18.i14.i4(i14 %size_V, i4 0)
  %tmp_36_add_i32_shr_c = zext i18 %tmp_36_add_i32_shr to i32
  %tmp_33 = call i18 @_ssdm_op_BitConcatenate.i18.i14.i4(i14 %sram_base_V, i4 0)
  %tmp_45_cast = zext i18 %tmp_33 to i19
  %narrow_port_addr_1_r = call i1 @_ssdm_op_ReadReq.m_axi.i128P(i128* %narrow_port_addr_1, i32 %tmp_36_add_i32_shr_c)
  br label %burst.rd.header19

burst.rd.header19:                                ; preds = %burst.rd.body20361, %8
  %indvar3 = phi i18 [ 0, %8 ], [ %indvar_next3, %burst.rd.body20361 ]
  %exitcond4 = icmp eq i18 %indvar3, %tmp_36_add_i32_shr
  %indvar_next3 = add i18 %indvar3, 1
  br i1 %exitcond4, label %burst.rd.end18.loopexit, label %burst.rd.body20

burst.rd.body20:                                  ; preds = %burst.rd.header19
  %indvar3_cast = zext i18 %indvar3 to i19
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 262128, i64 0)
  %burstread_rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_s)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str14)
  call void (...)* @_ssdm_op_SpecLoopName([34 x i8]* @memcpy_OC_wgt_mem_OC)
  %narrow_port_addr_1_r_1 = call i128 @_ssdm_op_Read.m_axi.i128P(i128* %narrow_port_addr_1)
  %tmp_241 = trunc i18 %indvar3 to i4
  %tmp_39 = add i19 %tmp_45_cast, %indvar3_cast
  %tmp_40 = call i15 @_ssdm_op_PartSelect.i15.i19.i32.i32(i19 %tmp_39, i32 4, i32 18)
  %tmp_41 = zext i15 %tmp_40 to i64
  %wgt_mem_0_V_addr_1 = getelementptr [1024 x i128]* %wgt_mem_0_V, i64 0, i64 %tmp_41
  %wgt_mem_1_V_addr_1 = getelementptr [1024 x i128]* %wgt_mem_1_V, i64 0, i64 %tmp_41
  %wgt_mem_2_V_addr_1 = getelementptr [1024 x i128]* %wgt_mem_2_V, i64 0, i64 %tmp_41
  %wgt_mem_3_V_addr_1 = getelementptr [1024 x i128]* %wgt_mem_3_V, i64 0, i64 %tmp_41
  %wgt_mem_4_V_addr_1 = getelementptr [1024 x i128]* %wgt_mem_4_V, i64 0, i64 %tmp_41
  %wgt_mem_5_V_addr_1 = getelementptr [1024 x i128]* %wgt_mem_5_V, i64 0, i64 %tmp_41
  %wgt_mem_6_V_addr_1 = getelementptr [1024 x i128]* %wgt_mem_6_V, i64 0, i64 %tmp_41
  %wgt_mem_7_V_addr_1 = getelementptr [1024 x i128]* %wgt_mem_7_V, i64 0, i64 %tmp_41
  %wgt_mem_8_V_addr_1 = getelementptr [1024 x i128]* %wgt_mem_8_V, i64 0, i64 %tmp_41
  %wgt_mem_9_V_addr_1 = getelementptr [1024 x i128]* %wgt_mem_9_V, i64 0, i64 %tmp_41
  %wgt_mem_10_V_addr_1 = getelementptr [1024 x i128]* %wgt_mem_10_V, i64 0, i64 %tmp_41
  %wgt_mem_11_V_addr_1 = getelementptr [1024 x i128]* %wgt_mem_11_V, i64 0, i64 %tmp_41
  %wgt_mem_12_V_addr_1 = getelementptr [1024 x i128]* %wgt_mem_12_V, i64 0, i64 %tmp_41
  %wgt_mem_13_V_addr_1 = getelementptr [1024 x i128]* %wgt_mem_13_V, i64 0, i64 %tmp_41
  %wgt_mem_14_V_addr_1 = getelementptr [1024 x i128]* %wgt_mem_14_V, i64 0, i64 %tmp_41
  %wgt_mem_15_V_addr_1 = getelementptr [1024 x i128]* %wgt_mem_15_V, i64 0, i64 %tmp_41
  switch i4 %tmp_241, label %branch15 [
    i4 0, label %branch0
    i4 1, label %branch1
    i4 2, label %branch2
    i4 3, label %branch3
    i4 4, label %branch4
    i4 5, label %branch5
    i4 6, label %branch6
    i4 7, label %branch7
    i4 -8, label %branch8
    i4 -7, label %branch9
    i4 -6, label %branch10
    i4 -5, label %branch11
    i4 -4, label %branch12
    i4 -3, label %branch13
    i4 -2, label %branch14
  ]

burst.rd.body20361:                               ; preds = %branch15, %branch14, %branch13, %branch12, %branch11, %branch10, %branch9, %branch8, %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %burstread_rend29 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_s, i32 %burstread_rbegin2)
  br label %burst.rd.header19

; <label>:9                                       ; preds = %7
  %tmp_34 = icmp eq i2 %memory_type_V, -1
  br i1 %tmp_34, label %10, label %._crit_edge

; <label>:10                                      ; preds = %9
  %lhs_V_4_cast = zext i32 %dram_base_V to i33
  %biases_V10_sum = add i33 %lhs_V_4_cast, %tmp_3_cast
  %biases_V10_sum_cast = zext i33 %biases_V10_sum to i64
  %wide_port_addr_1 = getelementptr i512* %wide_port, i64 %biases_V10_sum_cast
  %tmp_38 = zext i14 %size_V to i32
  %tmp_42_i_cast = zext i14 %sram_base_V to i15
  %wide_port_addr_2_rd_s = call i1 @_ssdm_op_ReadReq.m_axi.i512P(i512* %wide_port_addr_1, i32 %tmp_38)
  br label %burst.rd.header31

burst.rd.header31:                                ; preds = %burst.rd.body32, %10
  %indvar4 = phi i14 [ 0, %10 ], [ %indvar_next4, %burst.rd.body32 ]
  %exitcond5 = icmp eq i14 %indvar4, %size_V
  %indvar_next4 = add i14 %indvar4, 1
  br i1 %exitcond5, label %._crit_edge.loopexit, label %burst.rd.body32

burst.rd.body32:                                  ; preds = %burst.rd.header31
  %indvar4_cast = zext i14 %indvar4 to i15
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 16383, i64 0)
  %burstread_rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_s)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str15)
  call void (...)* @_ssdm_op_SpecLoopName([33 x i8]* @memcpy_OC_acc_mem_OC)
  %wide_port_addr_1_rea = call i512 @_ssdm_op_Read.m_axi.i512P(i512* %wide_port_addr_1)
  %tmp_42 = add i15 %indvar4_cast, %tmp_42_i_cast
  %tmp_43 = zext i15 %tmp_42 to i64
  %acc_mem_0_V_addr_3 = getelementptr [2048 x i512]* %acc_mem_0_V, i64 0, i64 %tmp_43
  store i512 %wide_port_addr_1_rea, i512* %acc_mem_0_V_addr_3, align 8
  %burstread_rend41 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_s, i32 %burstread_rbegin3)
  br label %burst.rd.header31

._crit_edge.loopexit:                             ; preds = %burst.rd.header31
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %9
  br label %burst.rd.end18

burst.rd.end18.loopexit:                          ; preds = %burst.rd.header19
  br label %burst.rd.end18

burst.rd.end18:                                   ; preds = %burst.rd.end18.loopexit, %._crit_edge
  br label %burst.rd.end7

burst.rd.end7.loopexit:                           ; preds = %burst.rd.header8
  br label %burst.rd.end7

burst.rd.end7:                                    ; preds = %burst.rd.end7.loopexit, %burst.rd.end18
  br label %burst.rd.end

burst.rd.end.loopexit:                            ; preds = %burst.rd.header
  br label %burst.rd.end

burst.rd.end:                                     ; preds = %burst.rd.end.loopexit, %burst.rd.end7
  br label %memcpy.tail

; <label>:11                                      ; preds = %2
  %lhs_V_5_cast = zext i32 %dram_base_V to i33
  %outputs_V12_sum = add i33 %lhs_V_5_cast, %tmp_2_cast
  %outputs_V12_sum_cast = zext i33 %outputs_V12_sum to i64
  %wide_port_addr = getelementptr i512* %wide_port, i64 %outputs_V12_sum_cast
  %tmp_8 = zext i14 %size_V to i32
  %tmp_6_i_cast = zext i14 %sram_base_V to i15
  %wide_port_addr_wr_re = call i1 @_ssdm_op_WriteReq.m_axi.i512P(i512* %wide_port_addr, i32 %tmp_8)
  br label %burst.wr.header

burst.wr.header:                                  ; preds = %burst.wr.body, %11
  %indvar1 = phi i14 [ 0, %11 ], [ %indvar_next1, %burst.wr.body ]
  %exitcond = icmp eq i14 %indvar1, %size_V
  %indvar_next1 = add i14 %indvar1, 1
  br i1 %exitcond, label %memcpy.tail.loopexit, label %burst.wr.body

burst.wr.body:                                    ; preds = %burst.wr.header
  %indvar1_cast = zext i14 %indvar1 to i15
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 16383, i64 0)
  %burstwrite_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str16)
  call void (...)* @_ssdm_op_SpecLoopName([34 x i8]* @memcpy_OC_outputs_OC)
  %tmp_19 = add i15 %indvar1_cast, %tmp_6_i_cast
  %tmp_20 = zext i15 %tmp_19 to i64
  %acc_mem_0_V_addr = getelementptr [2048 x i512]* %acc_mem_0_V, i64 0, i64 %tmp_20
  %acc_mem_0_V_load = load i512* %acc_mem_0_V_addr, align 8
  call void @_ssdm_op_Write.m_axi.i512P(i512* %wide_port_addr, i512 %acc_mem_0_V_load, i64 -1)
  %burstwrite_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region, i32 %burstwrite_rbegin)
  br label %burst.wr.header

memcpy.tail.loopexit:                             ; preds = %burst.wr.header
  %wide_port_addr_wr_re_1 = call i1 @_ssdm_op_WriteResp.m_axi.i512P(i512* %wide_port_addr)
  br label %memcpy.tail

memcpy.tail:                                      ; preds = %memcpy.tail.loopexit, %burst.rd.end
  br label %16

; <label>:12                                      ; preds = %1
  %tmp_1 = icmp eq i2 %opcode_V, -2
  br i1 %tmp_1, label %13, label %.loopexit805

; <label>:13                                      ; preds = %12
  %reset_acc = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %insn, i32 2)
  %tmp_10 = call i12 @_ssdm_op_PartSelect.i12.i64.i32.i32(i64 %insn, i32 3, i32 14)
  %uop_end_V = call i13 @_ssdm_op_PartSelect.i13.i64.i32.i32(i64 %insn, i32 15, i32 27)
  %upc = zext i12 %tmp_10 to i32
  %tmp_11 = zext i13 %uop_end_V to i32
  br label %14

; <label>:14                                      ; preds = %.loopexit, %13
  %upc1 = phi i32 [ %upc, %13 ], [ %upc_1, %.loopexit ]
  %tmp_12 = icmp slt i32 %upc1, %tmp_11
  br i1 %tmp_12, label %15, label %.loopexit805.loopexit

; <label>:15                                      ; preds = %14
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str11) nounwind
  %tmp_16 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str11)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_21 = sext i32 %upc1 to i64
  %uop_mem_addr = getelementptr inbounds [4096 x i32]* %uop_mem, i64 0, i64 %tmp_21
  %uop_mem_load = load i32* %uop_mem_addr, align 4
  %in_idx_V = call i11 @_ssdm_op_PartSelect.i11.i32.i32.i32(i32 %uop_mem_load, i32 11, i32 21)
  %tmp_22 = call i10 @_ssdm_op_PartSelect.i10.i32.i32.i32(i32 %uop_mem_load, i32 22, i32 31)
  %ac_idx_V = trunc i32 %uop_mem_load to i11
  %tmp_23 = zext i11 %ac_idx_V to i64
  br i1 %reset_acc, label %.preheader803.0, label %.preheader802.preheader

.preheader802.preheader:                          ; preds = %15
  %tmp_24 = zext i11 %in_idx_V to i64
  %tmp_25 = zext i10 %tmp_22 to i64
  %acc_mem_0_V_addr_2 = getelementptr [2048 x i512]* %acc_mem_0_V, i64 0, i64 %tmp_23
  %inp_mem_0_V_addr = getelementptr [2048 x i128]* %inp_mem_0_V, i64 0, i64 %tmp_24
  %inp_mem_0_V_load = load i128* %inp_mem_0_V_addr, align 16
  %acc_mem_0_V_load_1 = load i512* %acc_mem_0_V_addr_2, align 64
  %tmp_26 = trunc i512 %acc_mem_0_V_load_1 to i32
  %wgt_mem_0_V_addr = getelementptr [1024 x i128]* %wgt_mem_0_V, i64 0, i64 %tmp_25
  %wgt_mem_0_V_load = load i128* %wgt_mem_0_V_addr, align 16
  %tmp_29 = trunc i128 %inp_mem_0_V_load to i8
  %tmp_30 = trunc i128 %wgt_mem_0_V_load to i8
  %lhs_V_2 = sext i8 %tmp_29 to i16
  %rhs_V = sext i8 %tmp_30 to i16
  %r_V_4 = mul i16 %rhs_V, %lhs_V_2
  %tmp_31 = sext i16 %r_V_4 to i32
  %p_Result_5_0_0_1 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %inp_mem_0_V_load, i32 8, i32 15)
  %p_Result_6_0_0_1 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_0_V_load, i32 8, i32 15)
  %lhs_V_2_0_0_1 = sext i8 %p_Result_5_0_0_1 to i16
  %rhs_V_0_0_1 = sext i8 %p_Result_6_0_0_1 to i16
  %r_V_4_0_0_1 = mul i16 %rhs_V_0_0_1, %lhs_V_2_0_0_1
  %tmp_48_0_0_1_cast = sext i16 %r_V_4_0_0_1 to i17
  %p_Result_5_0_0_2 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %inp_mem_0_V_load, i32 16, i32 23)
  %p_Result_6_0_0_2 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_0_V_load, i32 16, i32 23)
  %lhs_V_2_0_0_2 = sext i8 %p_Result_5_0_0_2 to i16
  %rhs_V_0_0_2 = sext i8 %p_Result_6_0_0_2 to i16
  %r_V_4_0_0_2 = mul i16 %rhs_V_0_0_2, %lhs_V_2_0_0_2
  %tmp_48_0_0_2_cast = sext i16 %r_V_4_0_0_2 to i17
  %p_Result_5_0_0_3 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %inp_mem_0_V_load, i32 24, i32 31)
  %p_Result_6_0_0_3 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_0_V_load, i32 24, i32 31)
  %lhs_V_2_0_0_3 = sext i8 %p_Result_5_0_0_3 to i16
  %rhs_V_0_0_3 = sext i8 %p_Result_6_0_0_3 to i16
  %r_V_4_0_0_3 = mul i16 %rhs_V_0_0_3, %lhs_V_2_0_0_3
  %tmp_48_0_0_3_cast = sext i16 %r_V_4_0_0_3 to i17
  %p_Result_5_0_0_4 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %inp_mem_0_V_load, i32 32, i32 39)
  %p_Result_6_0_0_4 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_0_V_load, i32 32, i32 39)
  %lhs_V_2_0_0_4 = sext i8 %p_Result_5_0_0_4 to i16
  %rhs_V_0_0_4 = sext i8 %p_Result_6_0_0_4 to i16
  %r_V_4_0_0_4 = mul i16 %rhs_V_0_0_4, %lhs_V_2_0_0_4
  %tmp_48_0_0_4_cast = sext i16 %r_V_4_0_0_4 to i17
  %p_Result_5_0_0_5 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %inp_mem_0_V_load, i32 40, i32 47)
  %p_Result_6_0_0_5 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_0_V_load, i32 40, i32 47)
  %lhs_V_2_0_0_5 = sext i8 %p_Result_5_0_0_5 to i16
  %rhs_V_0_0_5 = sext i8 %p_Result_6_0_0_5 to i16
  %r_V_4_0_0_5 = mul i16 %rhs_V_0_0_5, %lhs_V_2_0_0_5
  %tmp_48_0_0_5_cast = sext i16 %r_V_4_0_0_5 to i17
  %p_Result_5_0_0_6 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %inp_mem_0_V_load, i32 48, i32 55)
  %p_Result_6_0_0_6 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_0_V_load, i32 48, i32 55)
  %lhs_V_2_0_0_6 = sext i8 %p_Result_5_0_0_6 to i16
  %rhs_V_0_0_6 = sext i8 %p_Result_6_0_0_6 to i16
  %r_V_4_0_0_6 = mul i16 %rhs_V_0_0_6, %lhs_V_2_0_0_6
  %tmp_48_0_0_6_cast = sext i16 %r_V_4_0_0_6 to i17
  %p_Result_5_0_0_7 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %inp_mem_0_V_load, i32 56, i32 63)
  %p_Result_6_0_0_7 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_0_V_load, i32 56, i32 63)
  %lhs_V_2_0_0_7 = sext i8 %p_Result_5_0_0_7 to i16
  %rhs_V_0_0_7 = sext i8 %p_Result_6_0_0_7 to i16
  %r_V_4_0_0_7 = mul i16 %rhs_V_0_0_7, %lhs_V_2_0_0_7
  %tmp_48_0_0_7_cast = sext i16 %r_V_4_0_0_7 to i17
  %p_Result_5_0_0_8 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %inp_mem_0_V_load, i32 64, i32 71)
  %p_Result_6_0_0_8 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_0_V_load, i32 64, i32 71)
  %lhs_V_2_0_0_8 = sext i8 %p_Result_5_0_0_8 to i16
  %rhs_V_0_0_8 = sext i8 %p_Result_6_0_0_8 to i16
  %r_V_4_0_0_8 = mul i16 %rhs_V_0_0_8, %lhs_V_2_0_0_8
  %tmp_48_0_0_8_cast = sext i16 %r_V_4_0_0_8 to i17
  %p_Result_5_0_0_9 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %inp_mem_0_V_load, i32 72, i32 79)
  %p_Result_6_0_0_9 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_0_V_load, i32 72, i32 79)
  %lhs_V_2_0_0_9 = sext i8 %p_Result_5_0_0_9 to i16
  %rhs_V_0_0_9 = sext i8 %p_Result_6_0_0_9 to i16
  %r_V_4_0_0_9 = mul i16 %rhs_V_0_0_9, %lhs_V_2_0_0_9
  %tmp_48_0_0_9_cast = sext i16 %r_V_4_0_0_9 to i17
  %p_Result_5_0_0_s = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %inp_mem_0_V_load, i32 80, i32 87)
  %p_Result_6_0_0_s = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_0_V_load, i32 80, i32 87)
  %lhs_V_2_0_0_s = sext i8 %p_Result_5_0_0_s to i16
  %rhs_V_0_0_s = sext i8 %p_Result_6_0_0_s to i16
  %r_V_4_0_0_s = mul i16 %rhs_V_0_0_s, %lhs_V_2_0_0_s
  %tmp_48_0_0_cast = sext i16 %r_V_4_0_0_s to i17
  %p_Result_5_0_0_10 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %inp_mem_0_V_load, i32 88, i32 95)
  %p_Result_6_0_0_10 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_0_V_load, i32 88, i32 95)
  %lhs_V_2_0_0_10 = sext i8 %p_Result_5_0_0_10 to i16
  %rhs_V_0_0_10 = sext i8 %p_Result_6_0_0_10 to i16
  %r_V_4_0_0_10 = mul i16 %rhs_V_0_0_10, %lhs_V_2_0_0_10
  %tmp_48_0_0_10_cast = sext i16 %r_V_4_0_0_10 to i17
  %p_Result_5_0_0_11 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %inp_mem_0_V_load, i32 96, i32 103)
  %p_Result_6_0_0_11 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_0_V_load, i32 96, i32 103)
  %lhs_V_2_0_0_11 = sext i8 %p_Result_5_0_0_11 to i16
  %rhs_V_0_0_11 = sext i8 %p_Result_6_0_0_11 to i16
  %r_V_4_0_0_11 = mul i16 %rhs_V_0_0_11, %lhs_V_2_0_0_11
  %tmp_48_0_0_11_cast = sext i16 %r_V_4_0_0_11 to i17
  %p_Result_5_0_0_12 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %inp_mem_0_V_load, i32 104, i32 111)
  %p_Result_6_0_0_12 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_0_V_load, i32 104, i32 111)
  %lhs_V_2_0_0_12 = sext i8 %p_Result_5_0_0_12 to i16
  %rhs_V_0_0_12 = sext i8 %p_Result_6_0_0_12 to i16
  %r_V_4_0_0_12 = mul i16 %rhs_V_0_0_12, %lhs_V_2_0_0_12
  %tmp_48_0_0_12_cast = sext i16 %r_V_4_0_0_12 to i17
  %p_Result_5_0_0_13 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %inp_mem_0_V_load, i32 112, i32 119)
  %p_Result_6_0_0_13 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_0_V_load, i32 112, i32 119)
  %lhs_V_2_0_0_13 = sext i8 %p_Result_5_0_0_13 to i16
  %rhs_V_0_0_13 = sext i8 %p_Result_6_0_0_13 to i16
  %r_V_4_0_0_13 = mul i16 %rhs_V_0_0_13, %lhs_V_2_0_0_13
  %tmp_48_0_0_13_cast = sext i16 %r_V_4_0_0_13 to i17
  %p_Result_5_0_0_14 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %inp_mem_0_V_load, i32 120, i32 127)
  %p_Result_6_0_0_14 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_0_V_load, i32 120, i32 127)
  %lhs_V_2_0_0_14 = sext i8 %p_Result_5_0_0_14 to i16
  %rhs_V_0_0_14 = sext i8 %p_Result_6_0_0_14 to i16
  %r_V_4_0_0_14 = mul i16 %rhs_V_0_0_14, %lhs_V_2_0_0_14
  %tmp_48_0_0_14_cast = sext i16 %r_V_4_0_0_14 to i17
  %tmp3 = add i32 %tmp_26, %tmp_31
  %tmp4 = add i17 %tmp_48_0_0_1_cast, %tmp_48_0_0_2_cast
  %tmp4_cast = sext i17 %tmp4 to i32
  %tmp2 = add i32 %tmp4_cast, %tmp3
  %tmp6 = add i17 %tmp_48_0_0_3_cast, %tmp_48_0_0_4_cast
  %tmp6_cast = sext i17 %tmp6 to i18
  %tmp7 = add i17 %tmp_48_0_0_5_cast, %tmp_48_0_0_6_cast
  %tmp7_cast = sext i17 %tmp7 to i18
  %tmp5 = add i18 %tmp7_cast, %tmp6_cast
  %tmp5_cast = sext i18 %tmp5 to i32
  %tmp1 = add i32 %tmp5_cast, %tmp2
  %tmp10 = add i17 %tmp_48_0_0_7_cast, %tmp_48_0_0_8_cast
  %tmp10_cast = sext i17 %tmp10 to i18
  %tmp11 = add i17 %tmp_48_0_0_9_cast, %tmp_48_0_0_cast
  %tmp11_cast = sext i17 %tmp11 to i18
  %tmp9 = add i18 %tmp11_cast, %tmp10_cast
  %tmp9_cast = sext i18 %tmp9 to i19
  %tmp13 = add i17 %tmp_48_0_0_10_cast, %tmp_48_0_0_11_cast
  %tmp13_cast = sext i17 %tmp13 to i18
  %tmp15 = add i17 %tmp_48_0_0_13_cast, %tmp_48_0_0_14_cast
  %tmp14 = add i17 %tmp15, %tmp_48_0_0_12_cast
  %tmp14_cast = sext i17 %tmp14 to i18
  %tmp12 = add i18 %tmp14_cast, %tmp13_cast
  %tmp12_cast = sext i18 %tmp12 to i19
  %tmp8 = add i19 %tmp12_cast, %tmp9_cast
  %tmp8_cast = sext i19 %tmp8 to i32
  %temp_V_1_0_0_s = add i32 %tmp8_cast, %tmp1
  %p_Result_4_0_1 = call i32 @_ssdm_op_PartSelect.i32.i512.i32.i32(i512 %acc_mem_0_V_load_1, i32 32, i32 63)
  %wgt_mem_1_V_addr = getelementptr [1024 x i128]* %wgt_mem_1_V, i64 0, i64 %tmp_25
  %wgt_mem_1_V_load = load i128* %wgt_mem_1_V_addr, align 16
  %tmp_32 = trunc i128 %wgt_mem_1_V_load to i8
  %rhs_V_0_1 = sext i8 %tmp_32 to i16
  %r_V_4_0_1 = mul i16 %rhs_V_0_1, %lhs_V_2
  %tmp_48_0_1 = sext i16 %r_V_4_0_1 to i32
  %p_Result_6_0_1_1 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_1_V_load, i32 8, i32 15)
  %rhs_V_0_1_1 = sext i8 %p_Result_6_0_1_1 to i16
  %r_V_4_0_1_1 = mul i16 %rhs_V_0_1_1, %lhs_V_2_0_0_1
  %tmp_48_0_1_1_cast = sext i16 %r_V_4_0_1_1 to i17
  %p_Result_6_0_1_2 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_1_V_load, i32 16, i32 23)
  %rhs_V_0_1_2 = sext i8 %p_Result_6_0_1_2 to i16
  %r_V_4_0_1_2 = mul i16 %rhs_V_0_1_2, %lhs_V_2_0_0_2
  %tmp_48_0_1_2_cast = sext i16 %r_V_4_0_1_2 to i17
  %p_Result_6_0_1_3 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_1_V_load, i32 24, i32 31)
  %rhs_V_0_1_3 = sext i8 %p_Result_6_0_1_3 to i16
  %r_V_4_0_1_3 = mul i16 %rhs_V_0_1_3, %lhs_V_2_0_0_3
  %tmp_48_0_1_3_cast = sext i16 %r_V_4_0_1_3 to i17
  %p_Result_6_0_1_4 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_1_V_load, i32 32, i32 39)
  %rhs_V_0_1_4 = sext i8 %p_Result_6_0_1_4 to i16
  %r_V_4_0_1_4 = mul i16 %rhs_V_0_1_4, %lhs_V_2_0_0_4
  %tmp_48_0_1_4_cast = sext i16 %r_V_4_0_1_4 to i17
  %p_Result_6_0_1_5 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_1_V_load, i32 40, i32 47)
  %rhs_V_0_1_5 = sext i8 %p_Result_6_0_1_5 to i16
  %r_V_4_0_1_5 = mul i16 %rhs_V_0_1_5, %lhs_V_2_0_0_5
  %tmp_48_0_1_5_cast = sext i16 %r_V_4_0_1_5 to i17
  %p_Result_6_0_1_6 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_1_V_load, i32 48, i32 55)
  %rhs_V_0_1_6 = sext i8 %p_Result_6_0_1_6 to i16
  %r_V_4_0_1_6 = mul i16 %rhs_V_0_1_6, %lhs_V_2_0_0_6
  %tmp_48_0_1_6_cast = sext i16 %r_V_4_0_1_6 to i17
  %p_Result_6_0_1_7 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_1_V_load, i32 56, i32 63)
  %rhs_V_0_1_7 = sext i8 %p_Result_6_0_1_7 to i16
  %r_V_4_0_1_7 = mul i16 %rhs_V_0_1_7, %lhs_V_2_0_0_7
  %tmp_48_0_1_7_cast = sext i16 %r_V_4_0_1_7 to i17
  %p_Result_6_0_1_8 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_1_V_load, i32 64, i32 71)
  %rhs_V_0_1_8 = sext i8 %p_Result_6_0_1_8 to i16
  %r_V_4_0_1_8 = mul i16 %rhs_V_0_1_8, %lhs_V_2_0_0_8
  %tmp_48_0_1_8_cast = sext i16 %r_V_4_0_1_8 to i17
  %p_Result_6_0_1_9 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_1_V_load, i32 72, i32 79)
  %rhs_V_0_1_9 = sext i8 %p_Result_6_0_1_9 to i16
  %r_V_4_0_1_9 = mul i16 %rhs_V_0_1_9, %lhs_V_2_0_0_9
  %tmp_48_0_1_9_cast = sext i16 %r_V_4_0_1_9 to i17
  %p_Result_6_0_1_s = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_1_V_load, i32 80, i32 87)
  %rhs_V_0_1_s = sext i8 %p_Result_6_0_1_s to i16
  %r_V_4_0_1_s = mul i16 %rhs_V_0_1_s, %lhs_V_2_0_0_s
  %tmp_48_0_1_cast = sext i16 %r_V_4_0_1_s to i17
  %p_Result_6_0_1_10 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_1_V_load, i32 88, i32 95)
  %rhs_V_0_1_10 = sext i8 %p_Result_6_0_1_10 to i16
  %r_V_4_0_1_10 = mul i16 %rhs_V_0_1_10, %lhs_V_2_0_0_10
  %tmp_48_0_1_10_cast = sext i16 %r_V_4_0_1_10 to i17
  %p_Result_6_0_1_11 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_1_V_load, i32 96, i32 103)
  %rhs_V_0_1_11 = sext i8 %p_Result_6_0_1_11 to i16
  %r_V_4_0_1_11 = mul i16 %rhs_V_0_1_11, %lhs_V_2_0_0_11
  %tmp_48_0_1_11_cast = sext i16 %r_V_4_0_1_11 to i17
  %p_Result_6_0_1_12 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_1_V_load, i32 104, i32 111)
  %rhs_V_0_1_12 = sext i8 %p_Result_6_0_1_12 to i16
  %r_V_4_0_1_12 = mul i16 %rhs_V_0_1_12, %lhs_V_2_0_0_12
  %tmp_48_0_1_12_cast = sext i16 %r_V_4_0_1_12 to i17
  %p_Result_6_0_1_13 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_1_V_load, i32 112, i32 119)
  %rhs_V_0_1_13 = sext i8 %p_Result_6_0_1_13 to i16
  %r_V_4_0_1_13 = mul i16 %rhs_V_0_1_13, %lhs_V_2_0_0_13
  %tmp_48_0_1_13_cast = sext i16 %r_V_4_0_1_13 to i17
  %p_Result_6_0_1_14 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_1_V_load, i32 120, i32 127)
  %rhs_V_0_1_14 = sext i8 %p_Result_6_0_1_14 to i16
  %r_V_4_0_1_14 = mul i16 %rhs_V_0_1_14, %lhs_V_2_0_0_14
  %tmp_48_0_1_14_cast = sext i16 %r_V_4_0_1_14 to i17
  %tmp18 = add i32 %p_Result_4_0_1, %tmp_48_0_1
  %tmp19 = add i17 %tmp_48_0_1_1_cast, %tmp_48_0_1_2_cast
  %tmp19_cast = sext i17 %tmp19 to i32
  %tmp17 = add i32 %tmp19_cast, %tmp18
  %tmp21 = add i17 %tmp_48_0_1_3_cast, %tmp_48_0_1_4_cast
  %tmp21_cast = sext i17 %tmp21 to i18
  %tmp22 = add i17 %tmp_48_0_1_5_cast, %tmp_48_0_1_6_cast
  %tmp22_cast = sext i17 %tmp22 to i18
  %tmp20 = add i18 %tmp22_cast, %tmp21_cast
  %tmp20_cast = sext i18 %tmp20 to i32
  %tmp16 = add i32 %tmp20_cast, %tmp17
  %tmp25 = add i17 %tmp_48_0_1_7_cast, %tmp_48_0_1_8_cast
  %tmp25_cast = sext i17 %tmp25 to i18
  %tmp26 = add i17 %tmp_48_0_1_9_cast, %tmp_48_0_1_cast
  %tmp26_cast = sext i17 %tmp26 to i18
  %tmp24 = add i18 %tmp26_cast, %tmp25_cast
  %tmp24_cast = sext i18 %tmp24 to i19
  %tmp28 = add i17 %tmp_48_0_1_10_cast, %tmp_48_0_1_11_cast
  %tmp28_cast = sext i17 %tmp28 to i18
  %tmp30 = add i17 %tmp_48_0_1_13_cast, %tmp_48_0_1_14_cast
  %tmp29 = add i17 %tmp30, %tmp_48_0_1_12_cast
  %tmp29_cast = sext i17 %tmp29 to i18
  %tmp27 = add i18 %tmp29_cast, %tmp28_cast
  %tmp27_cast = sext i18 %tmp27 to i19
  %tmp23 = add i19 %tmp27_cast, %tmp24_cast
  %tmp23_cast = sext i19 %tmp23 to i32
  %temp_V_1_0_1_s = add i32 %tmp23_cast, %tmp16
  %p_Result_4_0_2 = call i32 @_ssdm_op_PartSelect.i32.i512.i32.i32(i512 %acc_mem_0_V_load_1, i32 64, i32 95)
  %wgt_mem_2_V_addr = getelementptr [1024 x i128]* %wgt_mem_2_V, i64 0, i64 %tmp_25
  %wgt_mem_2_V_load = load i128* %wgt_mem_2_V_addr, align 16
  %tmp_35 = trunc i128 %wgt_mem_2_V_load to i8
  %rhs_V_0_2 = sext i8 %tmp_35 to i16
  %r_V_4_0_2 = mul i16 %rhs_V_0_2, %lhs_V_2
  %tmp_48_0_2 = sext i16 %r_V_4_0_2 to i32
  %p_Result_6_0_2_1 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_2_V_load, i32 8, i32 15)
  %rhs_V_0_2_1 = sext i8 %p_Result_6_0_2_1 to i16
  %r_V_4_0_2_1 = mul i16 %rhs_V_0_2_1, %lhs_V_2_0_0_1
  %tmp_48_0_2_1_cast = sext i16 %r_V_4_0_2_1 to i17
  %p_Result_6_0_2_2 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_2_V_load, i32 16, i32 23)
  %rhs_V_0_2_2 = sext i8 %p_Result_6_0_2_2 to i16
  %r_V_4_0_2_2 = mul i16 %rhs_V_0_2_2, %lhs_V_2_0_0_2
  %tmp_48_0_2_2_cast = sext i16 %r_V_4_0_2_2 to i17
  %p_Result_6_0_2_3 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_2_V_load, i32 24, i32 31)
  %rhs_V_0_2_3 = sext i8 %p_Result_6_0_2_3 to i16
  %r_V_4_0_2_3 = mul i16 %rhs_V_0_2_3, %lhs_V_2_0_0_3
  %tmp_48_0_2_3_cast = sext i16 %r_V_4_0_2_3 to i17
  %p_Result_6_0_2_4 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_2_V_load, i32 32, i32 39)
  %rhs_V_0_2_4 = sext i8 %p_Result_6_0_2_4 to i16
  %r_V_4_0_2_4 = mul i16 %rhs_V_0_2_4, %lhs_V_2_0_0_4
  %tmp_48_0_2_4_cast = sext i16 %r_V_4_0_2_4 to i17
  %p_Result_6_0_2_5 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_2_V_load, i32 40, i32 47)
  %rhs_V_0_2_5 = sext i8 %p_Result_6_0_2_5 to i16
  %r_V_4_0_2_5 = mul i16 %rhs_V_0_2_5, %lhs_V_2_0_0_5
  %tmp_48_0_2_5_cast = sext i16 %r_V_4_0_2_5 to i17
  %p_Result_6_0_2_6 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_2_V_load, i32 48, i32 55)
  %rhs_V_0_2_6 = sext i8 %p_Result_6_0_2_6 to i16
  %r_V_4_0_2_6 = mul i16 %rhs_V_0_2_6, %lhs_V_2_0_0_6
  %tmp_48_0_2_6_cast = sext i16 %r_V_4_0_2_6 to i17
  %p_Result_6_0_2_7 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_2_V_load, i32 56, i32 63)
  %rhs_V_0_2_7 = sext i8 %p_Result_6_0_2_7 to i16
  %r_V_4_0_2_7 = mul i16 %rhs_V_0_2_7, %lhs_V_2_0_0_7
  %tmp_48_0_2_7_cast = sext i16 %r_V_4_0_2_7 to i17
  %p_Result_6_0_2_8 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_2_V_load, i32 64, i32 71)
  %rhs_V_0_2_8 = sext i8 %p_Result_6_0_2_8 to i16
  %r_V_4_0_2_8 = mul i16 %rhs_V_0_2_8, %lhs_V_2_0_0_8
  %tmp_48_0_2_8_cast = sext i16 %r_V_4_0_2_8 to i17
  %p_Result_6_0_2_9 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_2_V_load, i32 72, i32 79)
  %rhs_V_0_2_9 = sext i8 %p_Result_6_0_2_9 to i16
  %r_V_4_0_2_9 = mul i16 %rhs_V_0_2_9, %lhs_V_2_0_0_9
  %tmp_48_0_2_9_cast = sext i16 %r_V_4_0_2_9 to i17
  %p_Result_6_0_2_s = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_2_V_load, i32 80, i32 87)
  %rhs_V_0_2_s = sext i8 %p_Result_6_0_2_s to i16
  %r_V_4_0_2_s = mul i16 %rhs_V_0_2_s, %lhs_V_2_0_0_s
  %tmp_48_0_2_cast = sext i16 %r_V_4_0_2_s to i17
  %p_Result_6_0_2_10 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_2_V_load, i32 88, i32 95)
  %rhs_V_0_2_10 = sext i8 %p_Result_6_0_2_10 to i16
  %r_V_4_0_2_10 = mul i16 %rhs_V_0_2_10, %lhs_V_2_0_0_10
  %tmp_48_0_2_10_cast = sext i16 %r_V_4_0_2_10 to i17
  %p_Result_6_0_2_11 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_2_V_load, i32 96, i32 103)
  %rhs_V_0_2_11 = sext i8 %p_Result_6_0_2_11 to i16
  %r_V_4_0_2_11 = mul i16 %rhs_V_0_2_11, %lhs_V_2_0_0_11
  %tmp_48_0_2_11_cast = sext i16 %r_V_4_0_2_11 to i17
  %p_Result_6_0_2_12 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_2_V_load, i32 104, i32 111)
  %rhs_V_0_2_12 = sext i8 %p_Result_6_0_2_12 to i16
  %r_V_4_0_2_12 = mul i16 %rhs_V_0_2_12, %lhs_V_2_0_0_12
  %tmp_48_0_2_12_cast = sext i16 %r_V_4_0_2_12 to i17
  %p_Result_6_0_2_13 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_2_V_load, i32 112, i32 119)
  %rhs_V_0_2_13 = sext i8 %p_Result_6_0_2_13 to i16
  %r_V_4_0_2_13 = mul i16 %rhs_V_0_2_13, %lhs_V_2_0_0_13
  %tmp_48_0_2_13_cast = sext i16 %r_V_4_0_2_13 to i17
  %p_Result_6_0_2_14 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_2_V_load, i32 120, i32 127)
  %rhs_V_0_2_14 = sext i8 %p_Result_6_0_2_14 to i16
  %r_V_4_0_2_14 = mul i16 %rhs_V_0_2_14, %lhs_V_2_0_0_14
  %tmp_48_0_2_14_cast = sext i16 %r_V_4_0_2_14 to i17
  %tmp33 = add i32 %p_Result_4_0_2, %tmp_48_0_2
  %tmp34 = add i17 %tmp_48_0_2_1_cast, %tmp_48_0_2_2_cast
  %tmp34_cast = sext i17 %tmp34 to i32
  %tmp32 = add i32 %tmp34_cast, %tmp33
  %tmp36 = add i17 %tmp_48_0_2_3_cast, %tmp_48_0_2_4_cast
  %tmp36_cast = sext i17 %tmp36 to i18
  %tmp37 = add i17 %tmp_48_0_2_5_cast, %tmp_48_0_2_6_cast
  %tmp37_cast = sext i17 %tmp37 to i18
  %tmp35 = add i18 %tmp37_cast, %tmp36_cast
  %tmp35_cast = sext i18 %tmp35 to i32
  %tmp31 = add i32 %tmp35_cast, %tmp32
  %tmp40 = add i17 %tmp_48_0_2_7_cast, %tmp_48_0_2_8_cast
  %tmp40_cast = sext i17 %tmp40 to i18
  %tmp41 = add i17 %tmp_48_0_2_9_cast, %tmp_48_0_2_cast
  %tmp41_cast = sext i17 %tmp41 to i18
  %tmp39 = add i18 %tmp41_cast, %tmp40_cast
  %tmp39_cast = sext i18 %tmp39 to i19
  %tmp43 = add i17 %tmp_48_0_2_10_cast, %tmp_48_0_2_11_cast
  %tmp43_cast = sext i17 %tmp43 to i18
  %tmp45 = add i17 %tmp_48_0_2_13_cast, %tmp_48_0_2_14_cast
  %tmp44 = add i17 %tmp45, %tmp_48_0_2_12_cast
  %tmp44_cast = sext i17 %tmp44 to i18
  %tmp42 = add i18 %tmp44_cast, %tmp43_cast
  %tmp42_cast = sext i18 %tmp42 to i19
  %tmp38 = add i19 %tmp42_cast, %tmp39_cast
  %tmp38_cast = sext i19 %tmp38 to i32
  %temp_V_1_0_2_s = add i32 %tmp38_cast, %tmp31
  %p_Result_4_0_3 = call i32 @_ssdm_op_PartSelect.i32.i512.i32.i32(i512 %acc_mem_0_V_load_1, i32 96, i32 127)
  %wgt_mem_3_V_addr = getelementptr [1024 x i128]* %wgt_mem_3_V, i64 0, i64 %tmp_25
  %wgt_mem_3_V_load = load i128* %wgt_mem_3_V_addr, align 16
  %tmp_46 = trunc i128 %wgt_mem_3_V_load to i8
  %rhs_V_0_3 = sext i8 %tmp_46 to i16
  %r_V_4_0_3 = mul i16 %rhs_V_0_3, %lhs_V_2
  %tmp_48_0_3 = sext i16 %r_V_4_0_3 to i32
  %p_Result_6_0_3_1 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_3_V_load, i32 8, i32 15)
  %rhs_V_0_3_1 = sext i8 %p_Result_6_0_3_1 to i16
  %r_V_4_0_3_1 = mul i16 %rhs_V_0_3_1, %lhs_V_2_0_0_1
  %tmp_48_0_3_1_cast = sext i16 %r_V_4_0_3_1 to i17
  %p_Result_6_0_3_2 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_3_V_load, i32 16, i32 23)
  %rhs_V_0_3_2 = sext i8 %p_Result_6_0_3_2 to i16
  %r_V_4_0_3_2 = mul i16 %rhs_V_0_3_2, %lhs_V_2_0_0_2
  %tmp_48_0_3_2_cast = sext i16 %r_V_4_0_3_2 to i17
  %p_Result_6_0_3_3 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_3_V_load, i32 24, i32 31)
  %rhs_V_0_3_3 = sext i8 %p_Result_6_0_3_3 to i16
  %r_V_4_0_3_3 = mul i16 %rhs_V_0_3_3, %lhs_V_2_0_0_3
  %tmp_48_0_3_3_cast = sext i16 %r_V_4_0_3_3 to i17
  %p_Result_6_0_3_4 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_3_V_load, i32 32, i32 39)
  %rhs_V_0_3_4 = sext i8 %p_Result_6_0_3_4 to i16
  %r_V_4_0_3_4 = mul i16 %rhs_V_0_3_4, %lhs_V_2_0_0_4
  %tmp_48_0_3_4_cast = sext i16 %r_V_4_0_3_4 to i17
  %p_Result_6_0_3_5 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_3_V_load, i32 40, i32 47)
  %rhs_V_0_3_5 = sext i8 %p_Result_6_0_3_5 to i16
  %r_V_4_0_3_5 = mul i16 %rhs_V_0_3_5, %lhs_V_2_0_0_5
  %tmp_48_0_3_5_cast = sext i16 %r_V_4_0_3_5 to i17
  %p_Result_6_0_3_6 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_3_V_load, i32 48, i32 55)
  %rhs_V_0_3_6 = sext i8 %p_Result_6_0_3_6 to i16
  %r_V_4_0_3_6 = mul i16 %rhs_V_0_3_6, %lhs_V_2_0_0_6
  %tmp_48_0_3_6_cast = sext i16 %r_V_4_0_3_6 to i17
  %p_Result_6_0_3_7 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_3_V_load, i32 56, i32 63)
  %rhs_V_0_3_7 = sext i8 %p_Result_6_0_3_7 to i16
  %r_V_4_0_3_7 = mul i16 %rhs_V_0_3_7, %lhs_V_2_0_0_7
  %tmp_48_0_3_7_cast = sext i16 %r_V_4_0_3_7 to i17
  %p_Result_6_0_3_8 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_3_V_load, i32 64, i32 71)
  %rhs_V_0_3_8 = sext i8 %p_Result_6_0_3_8 to i16
  %r_V_4_0_3_8 = mul i16 %rhs_V_0_3_8, %lhs_V_2_0_0_8
  %tmp_48_0_3_8_cast = sext i16 %r_V_4_0_3_8 to i17
  %p_Result_6_0_3_9 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_3_V_load, i32 72, i32 79)
  %rhs_V_0_3_9 = sext i8 %p_Result_6_0_3_9 to i16
  %r_V_4_0_3_9 = mul i16 %rhs_V_0_3_9, %lhs_V_2_0_0_9
  %tmp_48_0_3_9_cast = sext i16 %r_V_4_0_3_9 to i17
  %p_Result_6_0_3_s = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_3_V_load, i32 80, i32 87)
  %rhs_V_0_3_s = sext i8 %p_Result_6_0_3_s to i16
  %r_V_4_0_3_s = mul i16 %rhs_V_0_3_s, %lhs_V_2_0_0_s
  %tmp_48_0_3_cast = sext i16 %r_V_4_0_3_s to i17
  %p_Result_6_0_3_10 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_3_V_load, i32 88, i32 95)
  %rhs_V_0_3_10 = sext i8 %p_Result_6_0_3_10 to i16
  %r_V_4_0_3_10 = mul i16 %rhs_V_0_3_10, %lhs_V_2_0_0_10
  %tmp_48_0_3_10_cast = sext i16 %r_V_4_0_3_10 to i17
  %p_Result_6_0_3_11 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_3_V_load, i32 96, i32 103)
  %rhs_V_0_3_11 = sext i8 %p_Result_6_0_3_11 to i16
  %r_V_4_0_3_11 = mul i16 %rhs_V_0_3_11, %lhs_V_2_0_0_11
  %tmp_48_0_3_11_cast = sext i16 %r_V_4_0_3_11 to i17
  %p_Result_6_0_3_12 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_3_V_load, i32 104, i32 111)
  %rhs_V_0_3_12 = sext i8 %p_Result_6_0_3_12 to i16
  %r_V_4_0_3_12 = mul i16 %rhs_V_0_3_12, %lhs_V_2_0_0_12
  %tmp_48_0_3_12_cast = sext i16 %r_V_4_0_3_12 to i17
  %p_Result_6_0_3_13 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_3_V_load, i32 112, i32 119)
  %rhs_V_0_3_13 = sext i8 %p_Result_6_0_3_13 to i16
  %r_V_4_0_3_13 = mul i16 %rhs_V_0_3_13, %lhs_V_2_0_0_13
  %tmp_48_0_3_13_cast = sext i16 %r_V_4_0_3_13 to i17
  %p_Result_6_0_3_14 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_3_V_load, i32 120, i32 127)
  %rhs_V_0_3_14 = sext i8 %p_Result_6_0_3_14 to i16
  %r_V_4_0_3_14 = mul i16 %rhs_V_0_3_14, %lhs_V_2_0_0_14
  %tmp_48_0_3_14_cast = sext i16 %r_V_4_0_3_14 to i17
  %tmp48 = add i32 %p_Result_4_0_3, %tmp_48_0_3
  %tmp49 = add i17 %tmp_48_0_3_1_cast, %tmp_48_0_3_2_cast
  %tmp49_cast = sext i17 %tmp49 to i32
  %tmp47 = add i32 %tmp49_cast, %tmp48
  %tmp51 = add i17 %tmp_48_0_3_3_cast, %tmp_48_0_3_4_cast
  %tmp51_cast = sext i17 %tmp51 to i18
  %tmp52 = add i17 %tmp_48_0_3_5_cast, %tmp_48_0_3_6_cast
  %tmp52_cast = sext i17 %tmp52 to i18
  %tmp50 = add i18 %tmp52_cast, %tmp51_cast
  %tmp50_cast = sext i18 %tmp50 to i32
  %tmp46 = add i32 %tmp50_cast, %tmp47
  %tmp55 = add i17 %tmp_48_0_3_7_cast, %tmp_48_0_3_8_cast
  %tmp55_cast = sext i17 %tmp55 to i18
  %tmp56 = add i17 %tmp_48_0_3_9_cast, %tmp_48_0_3_cast
  %tmp56_cast = sext i17 %tmp56 to i18
  %tmp54 = add i18 %tmp56_cast, %tmp55_cast
  %tmp54_cast = sext i18 %tmp54 to i19
  %tmp58 = add i17 %tmp_48_0_3_10_cast, %tmp_48_0_3_11_cast
  %tmp58_cast = sext i17 %tmp58 to i18
  %tmp60 = add i17 %tmp_48_0_3_13_cast, %tmp_48_0_3_14_cast
  %tmp59 = add i17 %tmp60, %tmp_48_0_3_12_cast
  %tmp59_cast = sext i17 %tmp59 to i18
  %tmp57 = add i18 %tmp59_cast, %tmp58_cast
  %tmp57_cast = sext i18 %tmp57 to i19
  %tmp53 = add i19 %tmp57_cast, %tmp54_cast
  %tmp53_cast = sext i19 %tmp53 to i32
  %temp_V_1_0_3_s = add i32 %tmp53_cast, %tmp46
  %p_Result_4_0_4 = call i32 @_ssdm_op_PartSelect.i32.i512.i32.i32(i512 %acc_mem_0_V_load_1, i32 128, i32 159)
  %wgt_mem_4_V_addr = getelementptr [1024 x i128]* %wgt_mem_4_V, i64 0, i64 %tmp_25
  %wgt_mem_4_V_load = load i128* %wgt_mem_4_V_addr, align 16
  %tmp_61 = trunc i128 %wgt_mem_4_V_load to i8
  %rhs_V_0_4 = sext i8 %tmp_61 to i16
  %r_V_4_0_4 = mul i16 %rhs_V_0_4, %lhs_V_2
  %tmp_48_0_4 = sext i16 %r_V_4_0_4 to i32
  %p_Result_6_0_4_1 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_4_V_load, i32 8, i32 15)
  %rhs_V_0_4_1 = sext i8 %p_Result_6_0_4_1 to i16
  %r_V_4_0_4_1 = mul i16 %rhs_V_0_4_1, %lhs_V_2_0_0_1
  %tmp_48_0_4_1_cast = sext i16 %r_V_4_0_4_1 to i17
  %p_Result_6_0_4_2 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_4_V_load, i32 16, i32 23)
  %rhs_V_0_4_2 = sext i8 %p_Result_6_0_4_2 to i16
  %r_V_4_0_4_2 = mul i16 %rhs_V_0_4_2, %lhs_V_2_0_0_2
  %tmp_48_0_4_2_cast = sext i16 %r_V_4_0_4_2 to i17
  %p_Result_6_0_4_3 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_4_V_load, i32 24, i32 31)
  %rhs_V_0_4_3 = sext i8 %p_Result_6_0_4_3 to i16
  %r_V_4_0_4_3 = mul i16 %rhs_V_0_4_3, %lhs_V_2_0_0_3
  %tmp_48_0_4_3_cast = sext i16 %r_V_4_0_4_3 to i17
  %p_Result_6_0_4_4 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_4_V_load, i32 32, i32 39)
  %rhs_V_0_4_4 = sext i8 %p_Result_6_0_4_4 to i16
  %r_V_4_0_4_4 = mul i16 %rhs_V_0_4_4, %lhs_V_2_0_0_4
  %tmp_48_0_4_4_cast = sext i16 %r_V_4_0_4_4 to i17
  %p_Result_6_0_4_5 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_4_V_load, i32 40, i32 47)
  %rhs_V_0_4_5 = sext i8 %p_Result_6_0_4_5 to i16
  %r_V_4_0_4_5 = mul i16 %rhs_V_0_4_5, %lhs_V_2_0_0_5
  %tmp_48_0_4_5_cast = sext i16 %r_V_4_0_4_5 to i17
  %p_Result_6_0_4_6 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_4_V_load, i32 48, i32 55)
  %rhs_V_0_4_6 = sext i8 %p_Result_6_0_4_6 to i16
  %r_V_4_0_4_6 = mul i16 %rhs_V_0_4_6, %lhs_V_2_0_0_6
  %tmp_48_0_4_6_cast = sext i16 %r_V_4_0_4_6 to i17
  %p_Result_6_0_4_7 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_4_V_load, i32 56, i32 63)
  %rhs_V_0_4_7 = sext i8 %p_Result_6_0_4_7 to i16
  %r_V_4_0_4_7 = mul i16 %rhs_V_0_4_7, %lhs_V_2_0_0_7
  %tmp_48_0_4_7_cast = sext i16 %r_V_4_0_4_7 to i17
  %p_Result_6_0_4_8 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_4_V_load, i32 64, i32 71)
  %rhs_V_0_4_8 = sext i8 %p_Result_6_0_4_8 to i16
  %r_V_4_0_4_8 = mul i16 %rhs_V_0_4_8, %lhs_V_2_0_0_8
  %tmp_48_0_4_8_cast = sext i16 %r_V_4_0_4_8 to i17
  %p_Result_6_0_4_9 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_4_V_load, i32 72, i32 79)
  %rhs_V_0_4_9 = sext i8 %p_Result_6_0_4_9 to i16
  %r_V_4_0_4_9 = mul i16 %rhs_V_0_4_9, %lhs_V_2_0_0_9
  %tmp_48_0_4_9_cast = sext i16 %r_V_4_0_4_9 to i17
  %p_Result_6_0_4_s = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_4_V_load, i32 80, i32 87)
  %rhs_V_0_4_s = sext i8 %p_Result_6_0_4_s to i16
  %r_V_4_0_4_s = mul i16 %rhs_V_0_4_s, %lhs_V_2_0_0_s
  %tmp_48_0_4_cast = sext i16 %r_V_4_0_4_s to i17
  %p_Result_6_0_4_10 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_4_V_load, i32 88, i32 95)
  %rhs_V_0_4_10 = sext i8 %p_Result_6_0_4_10 to i16
  %r_V_4_0_4_10 = mul i16 %rhs_V_0_4_10, %lhs_V_2_0_0_10
  %tmp_48_0_4_10_cast = sext i16 %r_V_4_0_4_10 to i17
  %p_Result_6_0_4_11 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_4_V_load, i32 96, i32 103)
  %rhs_V_0_4_11 = sext i8 %p_Result_6_0_4_11 to i16
  %r_V_4_0_4_11 = mul i16 %rhs_V_0_4_11, %lhs_V_2_0_0_11
  %tmp_48_0_4_11_cast = sext i16 %r_V_4_0_4_11 to i17
  %p_Result_6_0_4_12 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_4_V_load, i32 104, i32 111)
  %rhs_V_0_4_12 = sext i8 %p_Result_6_0_4_12 to i16
  %r_V_4_0_4_12 = mul i16 %rhs_V_0_4_12, %lhs_V_2_0_0_12
  %tmp_48_0_4_12_cast = sext i16 %r_V_4_0_4_12 to i17
  %p_Result_6_0_4_13 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_4_V_load, i32 112, i32 119)
  %rhs_V_0_4_13 = sext i8 %p_Result_6_0_4_13 to i16
  %r_V_4_0_4_13 = mul i16 %rhs_V_0_4_13, %lhs_V_2_0_0_13
  %tmp_48_0_4_13_cast = sext i16 %r_V_4_0_4_13 to i17
  %p_Result_6_0_4_14 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_4_V_load, i32 120, i32 127)
  %rhs_V_0_4_14 = sext i8 %p_Result_6_0_4_14 to i16
  %r_V_4_0_4_14 = mul i16 %rhs_V_0_4_14, %lhs_V_2_0_0_14
  %tmp_48_0_4_14_cast = sext i16 %r_V_4_0_4_14 to i17
  %tmp63 = add i32 %p_Result_4_0_4, %tmp_48_0_4
  %tmp64 = add i17 %tmp_48_0_4_1_cast, %tmp_48_0_4_2_cast
  %tmp64_cast = sext i17 %tmp64 to i32
  %tmp62 = add i32 %tmp64_cast, %tmp63
  %tmp66 = add i17 %tmp_48_0_4_3_cast, %tmp_48_0_4_4_cast
  %tmp66_cast = sext i17 %tmp66 to i18
  %tmp67 = add i17 %tmp_48_0_4_5_cast, %tmp_48_0_4_6_cast
  %tmp67_cast = sext i17 %tmp67 to i18
  %tmp65 = add i18 %tmp67_cast, %tmp66_cast
  %tmp65_cast = sext i18 %tmp65 to i32
  %tmp61 = add i32 %tmp65_cast, %tmp62
  %tmp70 = add i17 %tmp_48_0_4_7_cast, %tmp_48_0_4_8_cast
  %tmp70_cast = sext i17 %tmp70 to i18
  %tmp71 = add i17 %tmp_48_0_4_9_cast, %tmp_48_0_4_cast
  %tmp71_cast = sext i17 %tmp71 to i18
  %tmp69 = add i18 %tmp71_cast, %tmp70_cast
  %tmp69_cast = sext i18 %tmp69 to i19
  %tmp73 = add i17 %tmp_48_0_4_10_cast, %tmp_48_0_4_11_cast
  %tmp73_cast = sext i17 %tmp73 to i18
  %tmp75 = add i17 %tmp_48_0_4_13_cast, %tmp_48_0_4_14_cast
  %tmp74 = add i17 %tmp75, %tmp_48_0_4_12_cast
  %tmp74_cast = sext i17 %tmp74 to i18
  %tmp72 = add i18 %tmp74_cast, %tmp73_cast
  %tmp72_cast = sext i18 %tmp72 to i19
  %tmp68 = add i19 %tmp72_cast, %tmp69_cast
  %tmp68_cast = sext i19 %tmp68 to i32
  %temp_V_1_0_4_s = add i32 %tmp68_cast, %tmp61
  %p_Result_4_0_5 = call i32 @_ssdm_op_PartSelect.i32.i512.i32.i32(i512 %acc_mem_0_V_load_1, i32 160, i32 191)
  %wgt_mem_5_V_addr = getelementptr [1024 x i128]* %wgt_mem_5_V, i64 0, i64 %tmp_25
  %wgt_mem_5_V_load = load i128* %wgt_mem_5_V_addr, align 16
  %tmp_76 = trunc i128 %wgt_mem_5_V_load to i8
  %rhs_V_0_5 = sext i8 %tmp_76 to i16
  %r_V_4_0_5 = mul i16 %rhs_V_0_5, %lhs_V_2
  %tmp_48_0_5 = sext i16 %r_V_4_0_5 to i32
  %p_Result_6_0_5_1 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_5_V_load, i32 8, i32 15)
  %rhs_V_0_5_1 = sext i8 %p_Result_6_0_5_1 to i16
  %r_V_4_0_5_1 = mul i16 %rhs_V_0_5_1, %lhs_V_2_0_0_1
  %tmp_48_0_5_1_cast = sext i16 %r_V_4_0_5_1 to i17
  %p_Result_6_0_5_2 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_5_V_load, i32 16, i32 23)
  %rhs_V_0_5_2 = sext i8 %p_Result_6_0_5_2 to i16
  %r_V_4_0_5_2 = mul i16 %rhs_V_0_5_2, %lhs_V_2_0_0_2
  %tmp_48_0_5_2_cast = sext i16 %r_V_4_0_5_2 to i17
  %p_Result_6_0_5_3 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_5_V_load, i32 24, i32 31)
  %rhs_V_0_5_3 = sext i8 %p_Result_6_0_5_3 to i16
  %r_V_4_0_5_3 = mul i16 %rhs_V_0_5_3, %lhs_V_2_0_0_3
  %tmp_48_0_5_3_cast = sext i16 %r_V_4_0_5_3 to i17
  %p_Result_6_0_5_4 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_5_V_load, i32 32, i32 39)
  %rhs_V_0_5_4 = sext i8 %p_Result_6_0_5_4 to i16
  %r_V_4_0_5_4 = mul i16 %rhs_V_0_5_4, %lhs_V_2_0_0_4
  %tmp_48_0_5_4_cast = sext i16 %r_V_4_0_5_4 to i17
  %p_Result_6_0_5_5 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_5_V_load, i32 40, i32 47)
  %rhs_V_0_5_5 = sext i8 %p_Result_6_0_5_5 to i16
  %r_V_4_0_5_5 = mul i16 %rhs_V_0_5_5, %lhs_V_2_0_0_5
  %tmp_48_0_5_5_cast = sext i16 %r_V_4_0_5_5 to i17
  %p_Result_6_0_5_6 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_5_V_load, i32 48, i32 55)
  %rhs_V_0_5_6 = sext i8 %p_Result_6_0_5_6 to i16
  %r_V_4_0_5_6 = mul i16 %rhs_V_0_5_6, %lhs_V_2_0_0_6
  %tmp_48_0_5_6_cast = sext i16 %r_V_4_0_5_6 to i17
  %p_Result_6_0_5_7 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_5_V_load, i32 56, i32 63)
  %rhs_V_0_5_7 = sext i8 %p_Result_6_0_5_7 to i16
  %r_V_4_0_5_7 = mul i16 %rhs_V_0_5_7, %lhs_V_2_0_0_7
  %tmp_48_0_5_7_cast = sext i16 %r_V_4_0_5_7 to i17
  %p_Result_6_0_5_8 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_5_V_load, i32 64, i32 71)
  %rhs_V_0_5_8 = sext i8 %p_Result_6_0_5_8 to i16
  %r_V_4_0_5_8 = mul i16 %rhs_V_0_5_8, %lhs_V_2_0_0_8
  %tmp_48_0_5_8_cast = sext i16 %r_V_4_0_5_8 to i17
  %p_Result_6_0_5_9 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_5_V_load, i32 72, i32 79)
  %rhs_V_0_5_9 = sext i8 %p_Result_6_0_5_9 to i16
  %r_V_4_0_5_9 = mul i16 %rhs_V_0_5_9, %lhs_V_2_0_0_9
  %tmp_48_0_5_9_cast = sext i16 %r_V_4_0_5_9 to i17
  %p_Result_6_0_5_s = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_5_V_load, i32 80, i32 87)
  %rhs_V_0_5_s = sext i8 %p_Result_6_0_5_s to i16
  %r_V_4_0_5_s = mul i16 %rhs_V_0_5_s, %lhs_V_2_0_0_s
  %tmp_48_0_5_cast = sext i16 %r_V_4_0_5_s to i17
  %p_Result_6_0_5_10 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_5_V_load, i32 88, i32 95)
  %rhs_V_0_5_10 = sext i8 %p_Result_6_0_5_10 to i16
  %r_V_4_0_5_10 = mul i16 %rhs_V_0_5_10, %lhs_V_2_0_0_10
  %tmp_48_0_5_10_cast = sext i16 %r_V_4_0_5_10 to i17
  %p_Result_6_0_5_11 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_5_V_load, i32 96, i32 103)
  %rhs_V_0_5_11 = sext i8 %p_Result_6_0_5_11 to i16
  %r_V_4_0_5_11 = mul i16 %rhs_V_0_5_11, %lhs_V_2_0_0_11
  %tmp_48_0_5_11_cast = sext i16 %r_V_4_0_5_11 to i17
  %p_Result_6_0_5_12 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_5_V_load, i32 104, i32 111)
  %rhs_V_0_5_12 = sext i8 %p_Result_6_0_5_12 to i16
  %r_V_4_0_5_12 = mul i16 %rhs_V_0_5_12, %lhs_V_2_0_0_12
  %tmp_48_0_5_12_cast = sext i16 %r_V_4_0_5_12 to i17
  %p_Result_6_0_5_13 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_5_V_load, i32 112, i32 119)
  %rhs_V_0_5_13 = sext i8 %p_Result_6_0_5_13 to i16
  %r_V_4_0_5_13 = mul i16 %rhs_V_0_5_13, %lhs_V_2_0_0_13
  %tmp_48_0_5_13_cast = sext i16 %r_V_4_0_5_13 to i17
  %p_Result_6_0_5_14 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_5_V_load, i32 120, i32 127)
  %rhs_V_0_5_14 = sext i8 %p_Result_6_0_5_14 to i16
  %r_V_4_0_5_14 = mul i16 %rhs_V_0_5_14, %lhs_V_2_0_0_14
  %tmp_48_0_5_14_cast = sext i16 %r_V_4_0_5_14 to i17
  %tmp78 = add i32 %p_Result_4_0_5, %tmp_48_0_5
  %tmp79 = add i17 %tmp_48_0_5_1_cast, %tmp_48_0_5_2_cast
  %tmp79_cast = sext i17 %tmp79 to i32
  %tmp77 = add i32 %tmp79_cast, %tmp78
  %tmp81 = add i17 %tmp_48_0_5_3_cast, %tmp_48_0_5_4_cast
  %tmp81_cast = sext i17 %tmp81 to i18
  %tmp82 = add i17 %tmp_48_0_5_5_cast, %tmp_48_0_5_6_cast
  %tmp82_cast = sext i17 %tmp82 to i18
  %tmp80 = add i18 %tmp82_cast, %tmp81_cast
  %tmp80_cast = sext i18 %tmp80 to i32
  %tmp76 = add i32 %tmp80_cast, %tmp77
  %tmp85 = add i17 %tmp_48_0_5_7_cast, %tmp_48_0_5_8_cast
  %tmp85_cast = sext i17 %tmp85 to i18
  %tmp86 = add i17 %tmp_48_0_5_9_cast, %tmp_48_0_5_cast
  %tmp86_cast = sext i17 %tmp86 to i18
  %tmp84 = add i18 %tmp86_cast, %tmp85_cast
  %tmp84_cast = sext i18 %tmp84 to i19
  %tmp88 = add i17 %tmp_48_0_5_10_cast, %tmp_48_0_5_11_cast
  %tmp88_cast = sext i17 %tmp88 to i18
  %tmp90 = add i17 %tmp_48_0_5_13_cast, %tmp_48_0_5_14_cast
  %tmp89 = add i17 %tmp90, %tmp_48_0_5_12_cast
  %tmp89_cast = sext i17 %tmp89 to i18
  %tmp87 = add i18 %tmp89_cast, %tmp88_cast
  %tmp87_cast = sext i18 %tmp87 to i19
  %tmp83 = add i19 %tmp87_cast, %tmp84_cast
  %tmp83_cast = sext i19 %tmp83 to i32
  %temp_V_1_0_5_s = add i32 %tmp83_cast, %tmp76
  %p_Result_4_0_6 = call i32 @_ssdm_op_PartSelect.i32.i512.i32.i32(i512 %acc_mem_0_V_load_1, i32 192, i32 223)
  %wgt_mem_6_V_addr = getelementptr [1024 x i128]* %wgt_mem_6_V, i64 0, i64 %tmp_25
  %wgt_mem_6_V_load = load i128* %wgt_mem_6_V_addr, align 16
  %tmp_91 = trunc i128 %wgt_mem_6_V_load to i8
  %rhs_V_0_6 = sext i8 %tmp_91 to i16
  %r_V_4_0_6 = mul i16 %rhs_V_0_6, %lhs_V_2
  %tmp_48_0_6 = sext i16 %r_V_4_0_6 to i32
  %p_Result_6_0_6_1 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_6_V_load, i32 8, i32 15)
  %rhs_V_0_6_1 = sext i8 %p_Result_6_0_6_1 to i16
  %r_V_4_0_6_1 = mul i16 %rhs_V_0_6_1, %lhs_V_2_0_0_1
  %tmp_48_0_6_1_cast = sext i16 %r_V_4_0_6_1 to i17
  %p_Result_6_0_6_2 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_6_V_load, i32 16, i32 23)
  %rhs_V_0_6_2 = sext i8 %p_Result_6_0_6_2 to i16
  %r_V_4_0_6_2 = mul i16 %rhs_V_0_6_2, %lhs_V_2_0_0_2
  %tmp_48_0_6_2_cast = sext i16 %r_V_4_0_6_2 to i17
  %p_Result_6_0_6_3 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_6_V_load, i32 24, i32 31)
  %rhs_V_0_6_3 = sext i8 %p_Result_6_0_6_3 to i16
  %r_V_4_0_6_3 = mul i16 %rhs_V_0_6_3, %lhs_V_2_0_0_3
  %tmp_48_0_6_3_cast = sext i16 %r_V_4_0_6_3 to i17
  %p_Result_6_0_6_4 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_6_V_load, i32 32, i32 39)
  %rhs_V_0_6_4 = sext i8 %p_Result_6_0_6_4 to i16
  %r_V_4_0_6_4 = mul i16 %rhs_V_0_6_4, %lhs_V_2_0_0_4
  %tmp_48_0_6_4_cast = sext i16 %r_V_4_0_6_4 to i17
  %p_Result_6_0_6_5 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_6_V_load, i32 40, i32 47)
  %rhs_V_0_6_5 = sext i8 %p_Result_6_0_6_5 to i16
  %r_V_4_0_6_5 = mul i16 %rhs_V_0_6_5, %lhs_V_2_0_0_5
  %tmp_48_0_6_5_cast = sext i16 %r_V_4_0_6_5 to i17
  %p_Result_6_0_6_6 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_6_V_load, i32 48, i32 55)
  %rhs_V_0_6_6 = sext i8 %p_Result_6_0_6_6 to i16
  %r_V_4_0_6_6 = mul i16 %rhs_V_0_6_6, %lhs_V_2_0_0_6
  %tmp_48_0_6_6_cast = sext i16 %r_V_4_0_6_6 to i17
  %p_Result_6_0_6_7 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_6_V_load, i32 56, i32 63)
  %rhs_V_0_6_7 = sext i8 %p_Result_6_0_6_7 to i16
  %r_V_4_0_6_7 = mul i16 %rhs_V_0_6_7, %lhs_V_2_0_0_7
  %tmp_48_0_6_7_cast = sext i16 %r_V_4_0_6_7 to i17
  %p_Result_6_0_6_8 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_6_V_load, i32 64, i32 71)
  %rhs_V_0_6_8 = sext i8 %p_Result_6_0_6_8 to i16
  %r_V_4_0_6_8 = mul i16 %rhs_V_0_6_8, %lhs_V_2_0_0_8
  %tmp_48_0_6_8_cast = sext i16 %r_V_4_0_6_8 to i17
  %p_Result_6_0_6_9 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_6_V_load, i32 72, i32 79)
  %rhs_V_0_6_9 = sext i8 %p_Result_6_0_6_9 to i16
  %r_V_4_0_6_9 = mul i16 %rhs_V_0_6_9, %lhs_V_2_0_0_9
  %tmp_48_0_6_9_cast = sext i16 %r_V_4_0_6_9 to i17
  %p_Result_6_0_6_s = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_6_V_load, i32 80, i32 87)
  %rhs_V_0_6_s = sext i8 %p_Result_6_0_6_s to i16
  %r_V_4_0_6_s = mul i16 %rhs_V_0_6_s, %lhs_V_2_0_0_s
  %tmp_48_0_6_cast = sext i16 %r_V_4_0_6_s to i17
  %p_Result_6_0_6_10 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_6_V_load, i32 88, i32 95)
  %rhs_V_0_6_10 = sext i8 %p_Result_6_0_6_10 to i16
  %r_V_4_0_6_10 = mul i16 %rhs_V_0_6_10, %lhs_V_2_0_0_10
  %tmp_48_0_6_10_cast = sext i16 %r_V_4_0_6_10 to i17
  %p_Result_6_0_6_11 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_6_V_load, i32 96, i32 103)
  %rhs_V_0_6_11 = sext i8 %p_Result_6_0_6_11 to i16
  %r_V_4_0_6_11 = mul i16 %rhs_V_0_6_11, %lhs_V_2_0_0_11
  %tmp_48_0_6_11_cast = sext i16 %r_V_4_0_6_11 to i17
  %p_Result_6_0_6_12 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_6_V_load, i32 104, i32 111)
  %rhs_V_0_6_12 = sext i8 %p_Result_6_0_6_12 to i16
  %r_V_4_0_6_12 = mul i16 %rhs_V_0_6_12, %lhs_V_2_0_0_12
  %tmp_48_0_6_12_cast = sext i16 %r_V_4_0_6_12 to i17
  %p_Result_6_0_6_13 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_6_V_load, i32 112, i32 119)
  %rhs_V_0_6_13 = sext i8 %p_Result_6_0_6_13 to i16
  %r_V_4_0_6_13 = mul i16 %rhs_V_0_6_13, %lhs_V_2_0_0_13
  %tmp_48_0_6_13_cast = sext i16 %r_V_4_0_6_13 to i17
  %p_Result_6_0_6_14 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_6_V_load, i32 120, i32 127)
  %rhs_V_0_6_14 = sext i8 %p_Result_6_0_6_14 to i16
  %r_V_4_0_6_14 = mul i16 %rhs_V_0_6_14, %lhs_V_2_0_0_14
  %tmp_48_0_6_14_cast = sext i16 %r_V_4_0_6_14 to i17
  %tmp93 = add i32 %p_Result_4_0_6, %tmp_48_0_6
  %tmp94 = add i17 %tmp_48_0_6_1_cast, %tmp_48_0_6_2_cast
  %tmp94_cast = sext i17 %tmp94 to i32
  %tmp92 = add i32 %tmp94_cast, %tmp93
  %tmp96 = add i17 %tmp_48_0_6_3_cast, %tmp_48_0_6_4_cast
  %tmp96_cast = sext i17 %tmp96 to i18
  %tmp97 = add i17 %tmp_48_0_6_5_cast, %tmp_48_0_6_6_cast
  %tmp97_cast = sext i17 %tmp97 to i18
  %tmp95 = add i18 %tmp97_cast, %tmp96_cast
  %tmp95_cast = sext i18 %tmp95 to i32
  %tmp91 = add i32 %tmp95_cast, %tmp92
  %tmp100 = add i17 %tmp_48_0_6_7_cast, %tmp_48_0_6_8_cast
  %tmp100_cast = sext i17 %tmp100 to i18
  %tmp101 = add i17 %tmp_48_0_6_9_cast, %tmp_48_0_6_cast
  %tmp101_cast = sext i17 %tmp101 to i18
  %tmp99 = add i18 %tmp101_cast, %tmp100_cast
  %tmp99_cast = sext i18 %tmp99 to i19
  %tmp103 = add i17 %tmp_48_0_6_10_cast, %tmp_48_0_6_11_cast
  %tmp103_cast = sext i17 %tmp103 to i18
  %tmp105 = add i17 %tmp_48_0_6_13_cast, %tmp_48_0_6_14_cast
  %tmp104 = add i17 %tmp105, %tmp_48_0_6_12_cast
  %tmp104_cast = sext i17 %tmp104 to i18
  %tmp102 = add i18 %tmp104_cast, %tmp103_cast
  %tmp102_cast = sext i18 %tmp102 to i19
  %tmp98 = add i19 %tmp102_cast, %tmp99_cast
  %tmp98_cast = sext i19 %tmp98 to i32
  %temp_V_1_0_6_s = add i32 %tmp98_cast, %tmp91
  %p_Result_4_0_7 = call i32 @_ssdm_op_PartSelect.i32.i512.i32.i32(i512 %acc_mem_0_V_load_1, i32 224, i32 255)
  %wgt_mem_7_V_addr = getelementptr [1024 x i128]* %wgt_mem_7_V, i64 0, i64 %tmp_25
  %wgt_mem_7_V_load = load i128* %wgt_mem_7_V_addr, align 16
  %tmp_106 = trunc i128 %wgt_mem_7_V_load to i8
  %rhs_V_0_7 = sext i8 %tmp_106 to i16
  %r_V_4_0_7 = mul i16 %rhs_V_0_7, %lhs_V_2
  %tmp_48_0_7 = sext i16 %r_V_4_0_7 to i32
  %p_Result_6_0_7_1 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_7_V_load, i32 8, i32 15)
  %rhs_V_0_7_1 = sext i8 %p_Result_6_0_7_1 to i16
  %r_V_4_0_7_1 = mul i16 %rhs_V_0_7_1, %lhs_V_2_0_0_1
  %tmp_48_0_7_1_cast = sext i16 %r_V_4_0_7_1 to i17
  %p_Result_6_0_7_2 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_7_V_load, i32 16, i32 23)
  %rhs_V_0_7_2 = sext i8 %p_Result_6_0_7_2 to i16
  %r_V_4_0_7_2 = mul i16 %rhs_V_0_7_2, %lhs_V_2_0_0_2
  %tmp_48_0_7_2_cast = sext i16 %r_V_4_0_7_2 to i17
  %p_Result_6_0_7_3 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_7_V_load, i32 24, i32 31)
  %rhs_V_0_7_3 = sext i8 %p_Result_6_0_7_3 to i16
  %r_V_4_0_7_3 = mul i16 %rhs_V_0_7_3, %lhs_V_2_0_0_3
  %tmp_48_0_7_3_cast = sext i16 %r_V_4_0_7_3 to i17
  %p_Result_6_0_7_4 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_7_V_load, i32 32, i32 39)
  %rhs_V_0_7_4 = sext i8 %p_Result_6_0_7_4 to i16
  %r_V_4_0_7_4 = mul i16 %rhs_V_0_7_4, %lhs_V_2_0_0_4
  %tmp_48_0_7_4_cast = sext i16 %r_V_4_0_7_4 to i17
  %p_Result_6_0_7_5 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_7_V_load, i32 40, i32 47)
  %rhs_V_0_7_5 = sext i8 %p_Result_6_0_7_5 to i16
  %r_V_4_0_7_5 = mul i16 %rhs_V_0_7_5, %lhs_V_2_0_0_5
  %tmp_48_0_7_5_cast = sext i16 %r_V_4_0_7_5 to i17
  %p_Result_6_0_7_6 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_7_V_load, i32 48, i32 55)
  %rhs_V_0_7_6 = sext i8 %p_Result_6_0_7_6 to i16
  %r_V_4_0_7_6 = mul i16 %rhs_V_0_7_6, %lhs_V_2_0_0_6
  %tmp_48_0_7_6_cast = sext i16 %r_V_4_0_7_6 to i17
  %p_Result_6_0_7_7 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_7_V_load, i32 56, i32 63)
  %rhs_V_0_7_7 = sext i8 %p_Result_6_0_7_7 to i16
  %r_V_4_0_7_7 = mul i16 %rhs_V_0_7_7, %lhs_V_2_0_0_7
  %tmp_48_0_7_7_cast = sext i16 %r_V_4_0_7_7 to i17
  %p_Result_6_0_7_8 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_7_V_load, i32 64, i32 71)
  %rhs_V_0_7_8 = sext i8 %p_Result_6_0_7_8 to i16
  %r_V_4_0_7_8 = mul i16 %rhs_V_0_7_8, %lhs_V_2_0_0_8
  %tmp_48_0_7_8_cast = sext i16 %r_V_4_0_7_8 to i17
  %p_Result_6_0_7_9 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_7_V_load, i32 72, i32 79)
  %rhs_V_0_7_9 = sext i8 %p_Result_6_0_7_9 to i16
  %r_V_4_0_7_9 = mul i16 %rhs_V_0_7_9, %lhs_V_2_0_0_9
  %tmp_48_0_7_9_cast = sext i16 %r_V_4_0_7_9 to i17
  %p_Result_6_0_7_s = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_7_V_load, i32 80, i32 87)
  %rhs_V_0_7_s = sext i8 %p_Result_6_0_7_s to i16
  %r_V_4_0_7_s = mul i16 %rhs_V_0_7_s, %lhs_V_2_0_0_s
  %tmp_48_0_7_cast = sext i16 %r_V_4_0_7_s to i17
  %p_Result_6_0_7_10 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_7_V_load, i32 88, i32 95)
  %rhs_V_0_7_10 = sext i8 %p_Result_6_0_7_10 to i16
  %r_V_4_0_7_10 = mul i16 %rhs_V_0_7_10, %lhs_V_2_0_0_10
  %tmp_48_0_7_10_cast = sext i16 %r_V_4_0_7_10 to i17
  %p_Result_6_0_7_11 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_7_V_load, i32 96, i32 103)
  %rhs_V_0_7_11 = sext i8 %p_Result_6_0_7_11 to i16
  %r_V_4_0_7_11 = mul i16 %rhs_V_0_7_11, %lhs_V_2_0_0_11
  %tmp_48_0_7_11_cast = sext i16 %r_V_4_0_7_11 to i17
  %p_Result_6_0_7_12 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_7_V_load, i32 104, i32 111)
  %rhs_V_0_7_12 = sext i8 %p_Result_6_0_7_12 to i16
  %r_V_4_0_7_12 = mul i16 %rhs_V_0_7_12, %lhs_V_2_0_0_12
  %tmp_48_0_7_12_cast = sext i16 %r_V_4_0_7_12 to i17
  %p_Result_6_0_7_13 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_7_V_load, i32 112, i32 119)
  %rhs_V_0_7_13 = sext i8 %p_Result_6_0_7_13 to i16
  %r_V_4_0_7_13 = mul i16 %rhs_V_0_7_13, %lhs_V_2_0_0_13
  %tmp_48_0_7_13_cast = sext i16 %r_V_4_0_7_13 to i17
  %p_Result_6_0_7_14 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_7_V_load, i32 120, i32 127)
  %rhs_V_0_7_14 = sext i8 %p_Result_6_0_7_14 to i16
  %r_V_4_0_7_14 = mul i16 %rhs_V_0_7_14, %lhs_V_2_0_0_14
  %tmp_48_0_7_14_cast = sext i16 %r_V_4_0_7_14 to i17
  %tmp108 = add i32 %p_Result_4_0_7, %tmp_48_0_7
  %tmp109 = add i17 %tmp_48_0_7_1_cast, %tmp_48_0_7_2_cast
  %tmp109_cast = sext i17 %tmp109 to i32
  %tmp107 = add i32 %tmp109_cast, %tmp108
  %tmp111 = add i17 %tmp_48_0_7_3_cast, %tmp_48_0_7_4_cast
  %tmp111_cast = sext i17 %tmp111 to i18
  %tmp112 = add i17 %tmp_48_0_7_5_cast, %tmp_48_0_7_6_cast
  %tmp112_cast = sext i17 %tmp112 to i18
  %tmp110 = add i18 %tmp112_cast, %tmp111_cast
  %tmp110_cast = sext i18 %tmp110 to i32
  %tmp106 = add i32 %tmp110_cast, %tmp107
  %tmp115 = add i17 %tmp_48_0_7_7_cast, %tmp_48_0_7_8_cast
  %tmp115_cast = sext i17 %tmp115 to i18
  %tmp116 = add i17 %tmp_48_0_7_9_cast, %tmp_48_0_7_cast
  %tmp116_cast = sext i17 %tmp116 to i18
  %tmp114 = add i18 %tmp116_cast, %tmp115_cast
  %tmp114_cast = sext i18 %tmp114 to i19
  %tmp118 = add i17 %tmp_48_0_7_10_cast, %tmp_48_0_7_11_cast
  %tmp118_cast = sext i17 %tmp118 to i18
  %tmp120 = add i17 %tmp_48_0_7_13_cast, %tmp_48_0_7_14_cast
  %tmp119 = add i17 %tmp120, %tmp_48_0_7_12_cast
  %tmp119_cast = sext i17 %tmp119 to i18
  %tmp117 = add i18 %tmp119_cast, %tmp118_cast
  %tmp117_cast = sext i18 %tmp117 to i19
  %tmp113 = add i19 %tmp117_cast, %tmp114_cast
  %tmp113_cast = sext i19 %tmp113 to i32
  %temp_V_1_0_7_s = add i32 %tmp113_cast, %tmp106
  %p_Result_4_0_8 = call i32 @_ssdm_op_PartSelect.i32.i512.i32.i32(i512 %acc_mem_0_V_load_1, i32 256, i32 287)
  %wgt_mem_8_V_addr = getelementptr [1024 x i128]* %wgt_mem_8_V, i64 0, i64 %tmp_25
  %wgt_mem_8_V_load = load i128* %wgt_mem_8_V_addr, align 16
  %tmp_121 = trunc i128 %wgt_mem_8_V_load to i8
  %rhs_V_0_8 = sext i8 %tmp_121 to i16
  %r_V_4_0_8 = mul i16 %rhs_V_0_8, %lhs_V_2
  %tmp_48_0_8 = sext i16 %r_V_4_0_8 to i32
  %p_Result_6_0_8_1 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_8_V_load, i32 8, i32 15)
  %rhs_V_0_8_1 = sext i8 %p_Result_6_0_8_1 to i16
  %r_V_4_0_8_1 = mul i16 %rhs_V_0_8_1, %lhs_V_2_0_0_1
  %tmp_48_0_8_1_cast = sext i16 %r_V_4_0_8_1 to i17
  %p_Result_6_0_8_2 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_8_V_load, i32 16, i32 23)
  %rhs_V_0_8_2 = sext i8 %p_Result_6_0_8_2 to i16
  %r_V_4_0_8_2 = mul i16 %rhs_V_0_8_2, %lhs_V_2_0_0_2
  %tmp_48_0_8_2_cast = sext i16 %r_V_4_0_8_2 to i17
  %p_Result_6_0_8_3 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_8_V_load, i32 24, i32 31)
  %rhs_V_0_8_3 = sext i8 %p_Result_6_0_8_3 to i16
  %r_V_4_0_8_3 = mul i16 %rhs_V_0_8_3, %lhs_V_2_0_0_3
  %tmp_48_0_8_3_cast = sext i16 %r_V_4_0_8_3 to i17
  %p_Result_6_0_8_4 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_8_V_load, i32 32, i32 39)
  %rhs_V_0_8_4 = sext i8 %p_Result_6_0_8_4 to i16
  %r_V_4_0_8_4 = mul i16 %rhs_V_0_8_4, %lhs_V_2_0_0_4
  %tmp_48_0_8_4_cast = sext i16 %r_V_4_0_8_4 to i17
  %p_Result_6_0_8_5 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_8_V_load, i32 40, i32 47)
  %rhs_V_0_8_5 = sext i8 %p_Result_6_0_8_5 to i16
  %r_V_4_0_8_5 = mul i16 %rhs_V_0_8_5, %lhs_V_2_0_0_5
  %tmp_48_0_8_5_cast = sext i16 %r_V_4_0_8_5 to i17
  %p_Result_6_0_8_6 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_8_V_load, i32 48, i32 55)
  %rhs_V_0_8_6 = sext i8 %p_Result_6_0_8_6 to i16
  %r_V_4_0_8_6 = mul i16 %rhs_V_0_8_6, %lhs_V_2_0_0_6
  %tmp_48_0_8_6_cast = sext i16 %r_V_4_0_8_6 to i17
  %p_Result_6_0_8_7 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_8_V_load, i32 56, i32 63)
  %rhs_V_0_8_7 = sext i8 %p_Result_6_0_8_7 to i16
  %r_V_4_0_8_7 = mul i16 %rhs_V_0_8_7, %lhs_V_2_0_0_7
  %tmp_48_0_8_7_cast = sext i16 %r_V_4_0_8_7 to i17
  %p_Result_6_0_8_8 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_8_V_load, i32 64, i32 71)
  %rhs_V_0_8_8 = sext i8 %p_Result_6_0_8_8 to i16
  %r_V_4_0_8_8 = mul i16 %rhs_V_0_8_8, %lhs_V_2_0_0_8
  %tmp_48_0_8_8_cast = sext i16 %r_V_4_0_8_8 to i17
  %p_Result_6_0_8_9 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_8_V_load, i32 72, i32 79)
  %rhs_V_0_8_9 = sext i8 %p_Result_6_0_8_9 to i16
  %r_V_4_0_8_9 = mul i16 %rhs_V_0_8_9, %lhs_V_2_0_0_9
  %tmp_48_0_8_9_cast = sext i16 %r_V_4_0_8_9 to i17
  %p_Result_6_0_8_s = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_8_V_load, i32 80, i32 87)
  %rhs_V_0_8_s = sext i8 %p_Result_6_0_8_s to i16
  %r_V_4_0_8_s = mul i16 %rhs_V_0_8_s, %lhs_V_2_0_0_s
  %tmp_48_0_8_cast = sext i16 %r_V_4_0_8_s to i17
  %p_Result_6_0_8_10 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_8_V_load, i32 88, i32 95)
  %rhs_V_0_8_10 = sext i8 %p_Result_6_0_8_10 to i16
  %r_V_4_0_8_10 = mul i16 %rhs_V_0_8_10, %lhs_V_2_0_0_10
  %tmp_48_0_8_10_cast = sext i16 %r_V_4_0_8_10 to i17
  %p_Result_6_0_8_11 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_8_V_load, i32 96, i32 103)
  %rhs_V_0_8_11 = sext i8 %p_Result_6_0_8_11 to i16
  %r_V_4_0_8_11 = mul i16 %rhs_V_0_8_11, %lhs_V_2_0_0_11
  %tmp_48_0_8_11_cast = sext i16 %r_V_4_0_8_11 to i17
  %p_Result_6_0_8_12 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_8_V_load, i32 104, i32 111)
  %rhs_V_0_8_12 = sext i8 %p_Result_6_0_8_12 to i16
  %r_V_4_0_8_12 = mul i16 %rhs_V_0_8_12, %lhs_V_2_0_0_12
  %tmp_48_0_8_12_cast = sext i16 %r_V_4_0_8_12 to i17
  %p_Result_6_0_8_13 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_8_V_load, i32 112, i32 119)
  %rhs_V_0_8_13 = sext i8 %p_Result_6_0_8_13 to i16
  %r_V_4_0_8_13 = mul i16 %rhs_V_0_8_13, %lhs_V_2_0_0_13
  %tmp_48_0_8_13_cast = sext i16 %r_V_4_0_8_13 to i17
  %p_Result_6_0_8_14 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_8_V_load, i32 120, i32 127)
  %rhs_V_0_8_14 = sext i8 %p_Result_6_0_8_14 to i16
  %r_V_4_0_8_14 = mul i16 %rhs_V_0_8_14, %lhs_V_2_0_0_14
  %tmp_48_0_8_14_cast = sext i16 %r_V_4_0_8_14 to i17
  %tmp123 = add i32 %p_Result_4_0_8, %tmp_48_0_8
  %tmp124 = add i17 %tmp_48_0_8_1_cast, %tmp_48_0_8_2_cast
  %tmp124_cast = sext i17 %tmp124 to i32
  %tmp122 = add i32 %tmp124_cast, %tmp123
  %tmp126 = add i17 %tmp_48_0_8_3_cast, %tmp_48_0_8_4_cast
  %tmp126_cast = sext i17 %tmp126 to i18
  %tmp127 = add i17 %tmp_48_0_8_5_cast, %tmp_48_0_8_6_cast
  %tmp127_cast = sext i17 %tmp127 to i18
  %tmp125 = add i18 %tmp127_cast, %tmp126_cast
  %tmp125_cast = sext i18 %tmp125 to i32
  %tmp121 = add i32 %tmp125_cast, %tmp122
  %tmp130 = add i17 %tmp_48_0_8_7_cast, %tmp_48_0_8_8_cast
  %tmp130_cast = sext i17 %tmp130 to i18
  %tmp131 = add i17 %tmp_48_0_8_9_cast, %tmp_48_0_8_cast
  %tmp131_cast = sext i17 %tmp131 to i18
  %tmp129 = add i18 %tmp131_cast, %tmp130_cast
  %tmp129_cast = sext i18 %tmp129 to i19
  %tmp133 = add i17 %tmp_48_0_8_10_cast, %tmp_48_0_8_11_cast
  %tmp133_cast = sext i17 %tmp133 to i18
  %tmp135 = add i17 %tmp_48_0_8_13_cast, %tmp_48_0_8_14_cast
  %tmp134 = add i17 %tmp135, %tmp_48_0_8_12_cast
  %tmp134_cast = sext i17 %tmp134 to i18
  %tmp132 = add i18 %tmp134_cast, %tmp133_cast
  %tmp132_cast = sext i18 %tmp132 to i19
  %tmp128 = add i19 %tmp132_cast, %tmp129_cast
  %tmp128_cast = sext i19 %tmp128 to i32
  %temp_V_1_0_8_s = add i32 %tmp128_cast, %tmp121
  %p_Result_4_0_9 = call i32 @_ssdm_op_PartSelect.i32.i512.i32.i32(i512 %acc_mem_0_V_load_1, i32 288, i32 319)
  %wgt_mem_9_V_addr = getelementptr [1024 x i128]* %wgt_mem_9_V, i64 0, i64 %tmp_25
  %wgt_mem_9_V_load = load i128* %wgt_mem_9_V_addr, align 16
  %tmp_136 = trunc i128 %wgt_mem_9_V_load to i8
  %rhs_V_0_9 = sext i8 %tmp_136 to i16
  %r_V_4_0_9 = mul i16 %rhs_V_0_9, %lhs_V_2
  %tmp_48_0_9 = sext i16 %r_V_4_0_9 to i32
  %p_Result_6_0_9_1 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_9_V_load, i32 8, i32 15)
  %rhs_V_0_9_1 = sext i8 %p_Result_6_0_9_1 to i16
  %r_V_4_0_9_1 = mul i16 %rhs_V_0_9_1, %lhs_V_2_0_0_1
  %tmp_48_0_9_1_cast = sext i16 %r_V_4_0_9_1 to i17
  %p_Result_6_0_9_2 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_9_V_load, i32 16, i32 23)
  %rhs_V_0_9_2 = sext i8 %p_Result_6_0_9_2 to i16
  %r_V_4_0_9_2 = mul i16 %rhs_V_0_9_2, %lhs_V_2_0_0_2
  %tmp_48_0_9_2_cast = sext i16 %r_V_4_0_9_2 to i17
  %p_Result_6_0_9_3 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_9_V_load, i32 24, i32 31)
  %rhs_V_0_9_3 = sext i8 %p_Result_6_0_9_3 to i16
  %r_V_4_0_9_3 = mul i16 %rhs_V_0_9_3, %lhs_V_2_0_0_3
  %tmp_48_0_9_3_cast = sext i16 %r_V_4_0_9_3 to i17
  %p_Result_6_0_9_4 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_9_V_load, i32 32, i32 39)
  %rhs_V_0_9_4 = sext i8 %p_Result_6_0_9_4 to i16
  %r_V_4_0_9_4 = mul i16 %rhs_V_0_9_4, %lhs_V_2_0_0_4
  %tmp_48_0_9_4_cast = sext i16 %r_V_4_0_9_4 to i17
  %p_Result_6_0_9_5 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_9_V_load, i32 40, i32 47)
  %rhs_V_0_9_5 = sext i8 %p_Result_6_0_9_5 to i16
  %r_V_4_0_9_5 = mul i16 %rhs_V_0_9_5, %lhs_V_2_0_0_5
  %tmp_48_0_9_5_cast = sext i16 %r_V_4_0_9_5 to i17
  %p_Result_6_0_9_6 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_9_V_load, i32 48, i32 55)
  %rhs_V_0_9_6 = sext i8 %p_Result_6_0_9_6 to i16
  %r_V_4_0_9_6 = mul i16 %rhs_V_0_9_6, %lhs_V_2_0_0_6
  %tmp_48_0_9_6_cast = sext i16 %r_V_4_0_9_6 to i17
  %p_Result_6_0_9_7 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_9_V_load, i32 56, i32 63)
  %rhs_V_0_9_7 = sext i8 %p_Result_6_0_9_7 to i16
  %r_V_4_0_9_7 = mul i16 %rhs_V_0_9_7, %lhs_V_2_0_0_7
  %tmp_48_0_9_7_cast = sext i16 %r_V_4_0_9_7 to i17
  %p_Result_6_0_9_8 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_9_V_load, i32 64, i32 71)
  %rhs_V_0_9_8 = sext i8 %p_Result_6_0_9_8 to i16
  %r_V_4_0_9_8 = mul i16 %rhs_V_0_9_8, %lhs_V_2_0_0_8
  %tmp_48_0_9_8_cast = sext i16 %r_V_4_0_9_8 to i17
  %p_Result_6_0_9_9 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_9_V_load, i32 72, i32 79)
  %rhs_V_0_9_9 = sext i8 %p_Result_6_0_9_9 to i16
  %r_V_4_0_9_9 = mul i16 %rhs_V_0_9_9, %lhs_V_2_0_0_9
  %tmp_48_0_9_9_cast = sext i16 %r_V_4_0_9_9 to i17
  %p_Result_6_0_9_s = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_9_V_load, i32 80, i32 87)
  %rhs_V_0_9_s = sext i8 %p_Result_6_0_9_s to i16
  %r_V_4_0_9_s = mul i16 %rhs_V_0_9_s, %lhs_V_2_0_0_s
  %tmp_48_0_9_cast = sext i16 %r_V_4_0_9_s to i17
  %p_Result_6_0_9_10 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_9_V_load, i32 88, i32 95)
  %rhs_V_0_9_10 = sext i8 %p_Result_6_0_9_10 to i16
  %r_V_4_0_9_10 = mul i16 %rhs_V_0_9_10, %lhs_V_2_0_0_10
  %tmp_48_0_9_10_cast = sext i16 %r_V_4_0_9_10 to i17
  %p_Result_6_0_9_11 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_9_V_load, i32 96, i32 103)
  %rhs_V_0_9_11 = sext i8 %p_Result_6_0_9_11 to i16
  %r_V_4_0_9_11 = mul i16 %rhs_V_0_9_11, %lhs_V_2_0_0_11
  %tmp_48_0_9_11_cast = sext i16 %r_V_4_0_9_11 to i17
  %p_Result_6_0_9_12 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_9_V_load, i32 104, i32 111)
  %rhs_V_0_9_12 = sext i8 %p_Result_6_0_9_12 to i16
  %r_V_4_0_9_12 = mul i16 %rhs_V_0_9_12, %lhs_V_2_0_0_12
  %tmp_48_0_9_12_cast = sext i16 %r_V_4_0_9_12 to i17
  %p_Result_6_0_9_13 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_9_V_load, i32 112, i32 119)
  %rhs_V_0_9_13 = sext i8 %p_Result_6_0_9_13 to i16
  %r_V_4_0_9_13 = mul i16 %rhs_V_0_9_13, %lhs_V_2_0_0_13
  %tmp_48_0_9_13_cast = sext i16 %r_V_4_0_9_13 to i17
  %p_Result_6_0_9_14 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_9_V_load, i32 120, i32 127)
  %rhs_V_0_9_14 = sext i8 %p_Result_6_0_9_14 to i16
  %r_V_4_0_9_14 = mul i16 %rhs_V_0_9_14, %lhs_V_2_0_0_14
  %tmp_48_0_9_14_cast = sext i16 %r_V_4_0_9_14 to i17
  %tmp138 = add i32 %p_Result_4_0_9, %tmp_48_0_9
  %tmp139 = add i17 %tmp_48_0_9_1_cast, %tmp_48_0_9_2_cast
  %tmp139_cast = sext i17 %tmp139 to i32
  %tmp137 = add i32 %tmp139_cast, %tmp138
  %tmp141 = add i17 %tmp_48_0_9_3_cast, %tmp_48_0_9_4_cast
  %tmp141_cast = sext i17 %tmp141 to i18
  %tmp142 = add i17 %tmp_48_0_9_5_cast, %tmp_48_0_9_6_cast
  %tmp142_cast = sext i17 %tmp142 to i18
  %tmp140 = add i18 %tmp142_cast, %tmp141_cast
  %tmp140_cast = sext i18 %tmp140 to i32
  %tmp136 = add i32 %tmp140_cast, %tmp137
  %tmp145 = add i17 %tmp_48_0_9_7_cast, %tmp_48_0_9_8_cast
  %tmp145_cast = sext i17 %tmp145 to i18
  %tmp146 = add i17 %tmp_48_0_9_9_cast, %tmp_48_0_9_cast
  %tmp146_cast = sext i17 %tmp146 to i18
  %tmp144 = add i18 %tmp146_cast, %tmp145_cast
  %tmp144_cast = sext i18 %tmp144 to i19
  %tmp148 = add i17 %tmp_48_0_9_10_cast, %tmp_48_0_9_11_cast
  %tmp148_cast = sext i17 %tmp148 to i18
  %tmp150 = add i17 %tmp_48_0_9_13_cast, %tmp_48_0_9_14_cast
  %tmp149 = add i17 %tmp150, %tmp_48_0_9_12_cast
  %tmp149_cast = sext i17 %tmp149 to i18
  %tmp147 = add i18 %tmp149_cast, %tmp148_cast
  %tmp147_cast = sext i18 %tmp147 to i19
  %tmp143 = add i19 %tmp147_cast, %tmp144_cast
  %tmp143_cast = sext i19 %tmp143 to i32
  %temp_V_1_0_9_s = add i32 %tmp143_cast, %tmp136
  %p_Result_4_0_s = call i32 @_ssdm_op_PartSelect.i32.i512.i32.i32(i512 %acc_mem_0_V_load_1, i32 320, i32 351)
  %wgt_mem_10_V_addr = getelementptr [1024 x i128]* %wgt_mem_10_V, i64 0, i64 %tmp_25
  %wgt_mem_10_V_load = load i128* %wgt_mem_10_V_addr, align 16
  %tmp_151 = trunc i128 %wgt_mem_10_V_load to i8
  %rhs_V_0_s = sext i8 %tmp_151 to i16
  %r_V_4_0_s = mul i16 %rhs_V_0_s, %lhs_V_2
  %tmp_48_0_s = sext i16 %r_V_4_0_s to i32
  %p_Result_6_0_10_1 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_10_V_load, i32 8, i32 15)
  %rhs_V_0_10_1 = sext i8 %p_Result_6_0_10_1 to i16
  %r_V_4_0_10_1 = mul i16 %rhs_V_0_10_1, %lhs_V_2_0_0_1
  %tmp_48_0_10_1_cast = sext i16 %r_V_4_0_10_1 to i17
  %p_Result_6_0_10_2 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_10_V_load, i32 16, i32 23)
  %rhs_V_0_10_2 = sext i8 %p_Result_6_0_10_2 to i16
  %r_V_4_0_10_2 = mul i16 %rhs_V_0_10_2, %lhs_V_2_0_0_2
  %tmp_48_0_10_2_cast = sext i16 %r_V_4_0_10_2 to i17
  %p_Result_6_0_10_3 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_10_V_load, i32 24, i32 31)
  %rhs_V_0_10_3 = sext i8 %p_Result_6_0_10_3 to i16
  %r_V_4_0_10_3 = mul i16 %rhs_V_0_10_3, %lhs_V_2_0_0_3
  %tmp_48_0_10_3_cast = sext i16 %r_V_4_0_10_3 to i17
  %p_Result_6_0_10_4 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_10_V_load, i32 32, i32 39)
  %rhs_V_0_10_4 = sext i8 %p_Result_6_0_10_4 to i16
  %r_V_4_0_10_4 = mul i16 %rhs_V_0_10_4, %lhs_V_2_0_0_4
  %tmp_48_0_10_4_cast = sext i16 %r_V_4_0_10_4 to i17
  %p_Result_6_0_10_5 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_10_V_load, i32 40, i32 47)
  %rhs_V_0_10_5 = sext i8 %p_Result_6_0_10_5 to i16
  %r_V_4_0_10_5 = mul i16 %rhs_V_0_10_5, %lhs_V_2_0_0_5
  %tmp_48_0_10_5_cast = sext i16 %r_V_4_0_10_5 to i17
  %p_Result_6_0_10_6 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_10_V_load, i32 48, i32 55)
  %rhs_V_0_10_6 = sext i8 %p_Result_6_0_10_6 to i16
  %r_V_4_0_10_6 = mul i16 %rhs_V_0_10_6, %lhs_V_2_0_0_6
  %tmp_48_0_10_6_cast = sext i16 %r_V_4_0_10_6 to i17
  %p_Result_6_0_10_7 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_10_V_load, i32 56, i32 63)
  %rhs_V_0_10_7 = sext i8 %p_Result_6_0_10_7 to i16
  %r_V_4_0_10_7 = mul i16 %rhs_V_0_10_7, %lhs_V_2_0_0_7
  %tmp_48_0_10_7_cast = sext i16 %r_V_4_0_10_7 to i17
  %p_Result_6_0_10_8 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_10_V_load, i32 64, i32 71)
  %rhs_V_0_10_8 = sext i8 %p_Result_6_0_10_8 to i16
  %r_V_4_0_10_8 = mul i16 %rhs_V_0_10_8, %lhs_V_2_0_0_8
  %tmp_48_0_10_8_cast = sext i16 %r_V_4_0_10_8 to i17
  %p_Result_6_0_10_9 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_10_V_load, i32 72, i32 79)
  %rhs_V_0_10_9 = sext i8 %p_Result_6_0_10_9 to i16
  %r_V_4_0_10_9 = mul i16 %rhs_V_0_10_9, %lhs_V_2_0_0_9
  %tmp_48_0_10_9_cast = sext i16 %r_V_4_0_10_9 to i17
  %p_Result_6_0_10_s = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_10_V_load, i32 80, i32 87)
  %rhs_V_0_10_s = sext i8 %p_Result_6_0_10_s to i16
  %r_V_4_0_10_s = mul i16 %rhs_V_0_10_s, %lhs_V_2_0_0_s
  %tmp_48_0_10_cast = sext i16 %r_V_4_0_10_s to i17
  %p_Result_6_0_10_10 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_10_V_load, i32 88, i32 95)
  %rhs_V_0_10_10 = sext i8 %p_Result_6_0_10_10 to i16
  %r_V_4_0_10_10 = mul i16 %rhs_V_0_10_10, %lhs_V_2_0_0_10
  %tmp_48_0_10_10_cast = sext i16 %r_V_4_0_10_10 to i17
  %p_Result_6_0_10_11 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_10_V_load, i32 96, i32 103)
  %rhs_V_0_10_11 = sext i8 %p_Result_6_0_10_11 to i16
  %r_V_4_0_10_11 = mul i16 %rhs_V_0_10_11, %lhs_V_2_0_0_11
  %tmp_48_0_10_11_cast = sext i16 %r_V_4_0_10_11 to i17
  %p_Result_6_0_10_12 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_10_V_load, i32 104, i32 111)
  %rhs_V_0_10_12 = sext i8 %p_Result_6_0_10_12 to i16
  %r_V_4_0_10_12 = mul i16 %rhs_V_0_10_12, %lhs_V_2_0_0_12
  %tmp_48_0_10_12_cast = sext i16 %r_V_4_0_10_12 to i17
  %p_Result_6_0_10_13 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_10_V_load, i32 112, i32 119)
  %rhs_V_0_10_13 = sext i8 %p_Result_6_0_10_13 to i16
  %r_V_4_0_10_13 = mul i16 %rhs_V_0_10_13, %lhs_V_2_0_0_13
  %tmp_48_0_10_13_cast = sext i16 %r_V_4_0_10_13 to i17
  %p_Result_6_0_10_14 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_10_V_load, i32 120, i32 127)
  %rhs_V_0_10_14 = sext i8 %p_Result_6_0_10_14 to i16
  %r_V_4_0_10_14 = mul i16 %rhs_V_0_10_14, %lhs_V_2_0_0_14
  %tmp_48_0_10_14_cast = sext i16 %r_V_4_0_10_14 to i17
  %tmp153 = add i32 %p_Result_4_0_s, %tmp_48_0_s
  %tmp154 = add i17 %tmp_48_0_10_1_cast, %tmp_48_0_10_2_cast
  %tmp154_cast = sext i17 %tmp154 to i32
  %tmp152 = add i32 %tmp154_cast, %tmp153
  %tmp156 = add i17 %tmp_48_0_10_3_cast, %tmp_48_0_10_4_cast
  %tmp156_cast = sext i17 %tmp156 to i18
  %tmp157 = add i17 %tmp_48_0_10_5_cast, %tmp_48_0_10_6_cast
  %tmp157_cast = sext i17 %tmp157 to i18
  %tmp155 = add i18 %tmp157_cast, %tmp156_cast
  %tmp155_cast = sext i18 %tmp155 to i32
  %tmp151 = add i32 %tmp155_cast, %tmp152
  %tmp160 = add i17 %tmp_48_0_10_7_cast, %tmp_48_0_10_8_cast
  %tmp160_cast = sext i17 %tmp160 to i18
  %tmp161 = add i17 %tmp_48_0_10_9_cast, %tmp_48_0_10_cast
  %tmp161_cast = sext i17 %tmp161 to i18
  %tmp159 = add i18 %tmp161_cast, %tmp160_cast
  %tmp159_cast = sext i18 %tmp159 to i19
  %tmp163 = add i17 %tmp_48_0_10_10_cast, %tmp_48_0_10_11_cast
  %tmp163_cast = sext i17 %tmp163 to i18
  %tmp165 = add i17 %tmp_48_0_10_13_cast, %tmp_48_0_10_14_cast
  %tmp164 = add i17 %tmp165, %tmp_48_0_10_12_cast
  %tmp164_cast = sext i17 %tmp164 to i18
  %tmp162 = add i18 %tmp164_cast, %tmp163_cast
  %tmp162_cast = sext i18 %tmp162 to i19
  %tmp158 = add i19 %tmp162_cast, %tmp159_cast
  %tmp158_cast = sext i19 %tmp158 to i32
  %temp_V_1_0_10_s = add i32 %tmp158_cast, %tmp151
  %p_Result_4_0_10 = call i32 @_ssdm_op_PartSelect.i32.i512.i32.i32(i512 %acc_mem_0_V_load_1, i32 352, i32 383)
  %wgt_mem_11_V_addr = getelementptr [1024 x i128]* %wgt_mem_11_V, i64 0, i64 %tmp_25
  %wgt_mem_11_V_load = load i128* %wgt_mem_11_V_addr, align 16
  %tmp_166 = trunc i128 %wgt_mem_11_V_load to i8
  %rhs_V_0_10 = sext i8 %tmp_166 to i16
  %r_V_4_0_10 = mul i16 %rhs_V_0_10, %lhs_V_2
  %tmp_48_0_10 = sext i16 %r_V_4_0_10 to i32
  %p_Result_6_0_11_1 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_11_V_load, i32 8, i32 15)
  %rhs_V_0_11_1 = sext i8 %p_Result_6_0_11_1 to i16
  %r_V_4_0_11_1 = mul i16 %rhs_V_0_11_1, %lhs_V_2_0_0_1
  %tmp_48_0_11_1_cast = sext i16 %r_V_4_0_11_1 to i17
  %p_Result_6_0_11_2 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_11_V_load, i32 16, i32 23)
  %rhs_V_0_11_2 = sext i8 %p_Result_6_0_11_2 to i16
  %r_V_4_0_11_2 = mul i16 %rhs_V_0_11_2, %lhs_V_2_0_0_2
  %tmp_48_0_11_2_cast = sext i16 %r_V_4_0_11_2 to i17
  %p_Result_6_0_11_3 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_11_V_load, i32 24, i32 31)
  %rhs_V_0_11_3 = sext i8 %p_Result_6_0_11_3 to i16
  %r_V_4_0_11_3 = mul i16 %rhs_V_0_11_3, %lhs_V_2_0_0_3
  %tmp_48_0_11_3_cast = sext i16 %r_V_4_0_11_3 to i17
  %p_Result_6_0_11_4 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_11_V_load, i32 32, i32 39)
  %rhs_V_0_11_4 = sext i8 %p_Result_6_0_11_4 to i16
  %r_V_4_0_11_4 = mul i16 %rhs_V_0_11_4, %lhs_V_2_0_0_4
  %tmp_48_0_11_4_cast = sext i16 %r_V_4_0_11_4 to i17
  %p_Result_6_0_11_5 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_11_V_load, i32 40, i32 47)
  %rhs_V_0_11_5 = sext i8 %p_Result_6_0_11_5 to i16
  %r_V_4_0_11_5 = mul i16 %rhs_V_0_11_5, %lhs_V_2_0_0_5
  %tmp_48_0_11_5_cast = sext i16 %r_V_4_0_11_5 to i17
  %p_Result_6_0_11_6 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_11_V_load, i32 48, i32 55)
  %rhs_V_0_11_6 = sext i8 %p_Result_6_0_11_6 to i16
  %r_V_4_0_11_6 = mul i16 %rhs_V_0_11_6, %lhs_V_2_0_0_6
  %tmp_48_0_11_6_cast = sext i16 %r_V_4_0_11_6 to i17
  %p_Result_6_0_11_7 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_11_V_load, i32 56, i32 63)
  %rhs_V_0_11_7 = sext i8 %p_Result_6_0_11_7 to i16
  %r_V_4_0_11_7 = mul i16 %rhs_V_0_11_7, %lhs_V_2_0_0_7
  %tmp_48_0_11_7_cast = sext i16 %r_V_4_0_11_7 to i17
  %p_Result_6_0_11_8 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_11_V_load, i32 64, i32 71)
  %rhs_V_0_11_8 = sext i8 %p_Result_6_0_11_8 to i16
  %r_V_4_0_11_8 = mul i16 %rhs_V_0_11_8, %lhs_V_2_0_0_8
  %tmp_48_0_11_8_cast = sext i16 %r_V_4_0_11_8 to i17
  %p_Result_6_0_11_9 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_11_V_load, i32 72, i32 79)
  %rhs_V_0_11_9 = sext i8 %p_Result_6_0_11_9 to i16
  %r_V_4_0_11_9 = mul i16 %rhs_V_0_11_9, %lhs_V_2_0_0_9
  %tmp_48_0_11_9_cast = sext i16 %r_V_4_0_11_9 to i17
  %p_Result_6_0_11_s = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_11_V_load, i32 80, i32 87)
  %rhs_V_0_11_s = sext i8 %p_Result_6_0_11_s to i16
  %r_V_4_0_11_s = mul i16 %rhs_V_0_11_s, %lhs_V_2_0_0_s
  %tmp_48_0_11_cast = sext i16 %r_V_4_0_11_s to i17
  %p_Result_6_0_11_10 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_11_V_load, i32 88, i32 95)
  %rhs_V_0_11_10 = sext i8 %p_Result_6_0_11_10 to i16
  %r_V_4_0_11_10 = mul i16 %rhs_V_0_11_10, %lhs_V_2_0_0_10
  %tmp_48_0_11_10_cast = sext i16 %r_V_4_0_11_10 to i17
  %p_Result_6_0_11_11 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_11_V_load, i32 96, i32 103)
  %rhs_V_0_11_11 = sext i8 %p_Result_6_0_11_11 to i16
  %r_V_4_0_11_11 = mul i16 %rhs_V_0_11_11, %lhs_V_2_0_0_11
  %tmp_48_0_11_11_cast = sext i16 %r_V_4_0_11_11 to i17
  %p_Result_6_0_11_12 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_11_V_load, i32 104, i32 111)
  %rhs_V_0_11_12 = sext i8 %p_Result_6_0_11_12 to i16
  %r_V_4_0_11_12 = mul i16 %rhs_V_0_11_12, %lhs_V_2_0_0_12
  %tmp_48_0_11_12_cast = sext i16 %r_V_4_0_11_12 to i17
  %p_Result_6_0_11_13 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_11_V_load, i32 112, i32 119)
  %rhs_V_0_11_13 = sext i8 %p_Result_6_0_11_13 to i16
  %r_V_4_0_11_13 = mul i16 %rhs_V_0_11_13, %lhs_V_2_0_0_13
  %tmp_48_0_11_13_cast = sext i16 %r_V_4_0_11_13 to i17
  %p_Result_6_0_11_14 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_11_V_load, i32 120, i32 127)
  %rhs_V_0_11_14 = sext i8 %p_Result_6_0_11_14 to i16
  %r_V_4_0_11_14 = mul i16 %rhs_V_0_11_14, %lhs_V_2_0_0_14
  %tmp_48_0_11_14_cast = sext i16 %r_V_4_0_11_14 to i17
  %tmp168 = add i32 %p_Result_4_0_10, %tmp_48_0_10
  %tmp169 = add i17 %tmp_48_0_11_1_cast, %tmp_48_0_11_2_cast
  %tmp169_cast = sext i17 %tmp169 to i32
  %tmp167 = add i32 %tmp169_cast, %tmp168
  %tmp171 = add i17 %tmp_48_0_11_3_cast, %tmp_48_0_11_4_cast
  %tmp171_cast = sext i17 %tmp171 to i18
  %tmp172 = add i17 %tmp_48_0_11_5_cast, %tmp_48_0_11_6_cast
  %tmp172_cast = sext i17 %tmp172 to i18
  %tmp170 = add i18 %tmp172_cast, %tmp171_cast
  %tmp170_cast = sext i18 %tmp170 to i32
  %tmp166 = add i32 %tmp170_cast, %tmp167
  %tmp175 = add i17 %tmp_48_0_11_7_cast, %tmp_48_0_11_8_cast
  %tmp175_cast = sext i17 %tmp175 to i18
  %tmp176 = add i17 %tmp_48_0_11_9_cast, %tmp_48_0_11_cast
  %tmp176_cast = sext i17 %tmp176 to i18
  %tmp174 = add i18 %tmp176_cast, %tmp175_cast
  %tmp174_cast = sext i18 %tmp174 to i19
  %tmp178 = add i17 %tmp_48_0_11_10_cast, %tmp_48_0_11_11_cast
  %tmp178_cast = sext i17 %tmp178 to i18
  %tmp180 = add i17 %tmp_48_0_11_13_cast, %tmp_48_0_11_14_cast
  %tmp179 = add i17 %tmp180, %tmp_48_0_11_12_cast
  %tmp179_cast = sext i17 %tmp179 to i18
  %tmp177 = add i18 %tmp179_cast, %tmp178_cast
  %tmp177_cast = sext i18 %tmp177 to i19
  %tmp173 = add i19 %tmp177_cast, %tmp174_cast
  %tmp173_cast = sext i19 %tmp173 to i32
  %temp_V_1_0_11_s = add i32 %tmp173_cast, %tmp166
  %p_Result_4_0_11 = call i32 @_ssdm_op_PartSelect.i32.i512.i32.i32(i512 %acc_mem_0_V_load_1, i32 384, i32 415)
  %wgt_mem_12_V_addr = getelementptr [1024 x i128]* %wgt_mem_12_V, i64 0, i64 %tmp_25
  %wgt_mem_12_V_load = load i128* %wgt_mem_12_V_addr, align 16
  %tmp_181 = trunc i128 %wgt_mem_12_V_load to i8
  %rhs_V_0_11 = sext i8 %tmp_181 to i16
  %r_V_4_0_11 = mul i16 %rhs_V_0_11, %lhs_V_2
  %tmp_48_0_11 = sext i16 %r_V_4_0_11 to i32
  %p_Result_6_0_12_1 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_12_V_load, i32 8, i32 15)
  %rhs_V_0_12_1 = sext i8 %p_Result_6_0_12_1 to i16
  %r_V_4_0_12_1 = mul i16 %rhs_V_0_12_1, %lhs_V_2_0_0_1
  %tmp_48_0_12_1_cast = sext i16 %r_V_4_0_12_1 to i17
  %p_Result_6_0_12_2 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_12_V_load, i32 16, i32 23)
  %rhs_V_0_12_2 = sext i8 %p_Result_6_0_12_2 to i16
  %r_V_4_0_12_2 = mul i16 %rhs_V_0_12_2, %lhs_V_2_0_0_2
  %tmp_48_0_12_2_cast = sext i16 %r_V_4_0_12_2 to i17
  %p_Result_6_0_12_3 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_12_V_load, i32 24, i32 31)
  %rhs_V_0_12_3 = sext i8 %p_Result_6_0_12_3 to i16
  %r_V_4_0_12_3 = mul i16 %rhs_V_0_12_3, %lhs_V_2_0_0_3
  %tmp_48_0_12_3_cast = sext i16 %r_V_4_0_12_3 to i17
  %p_Result_6_0_12_4 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_12_V_load, i32 32, i32 39)
  %rhs_V_0_12_4 = sext i8 %p_Result_6_0_12_4 to i16
  %r_V_4_0_12_4 = mul i16 %rhs_V_0_12_4, %lhs_V_2_0_0_4
  %tmp_48_0_12_4_cast = sext i16 %r_V_4_0_12_4 to i17
  %p_Result_6_0_12_5 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_12_V_load, i32 40, i32 47)
  %rhs_V_0_12_5 = sext i8 %p_Result_6_0_12_5 to i16
  %r_V_4_0_12_5 = mul i16 %rhs_V_0_12_5, %lhs_V_2_0_0_5
  %tmp_48_0_12_5_cast = sext i16 %r_V_4_0_12_5 to i17
  %p_Result_6_0_12_6 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_12_V_load, i32 48, i32 55)
  %rhs_V_0_12_6 = sext i8 %p_Result_6_0_12_6 to i16
  %r_V_4_0_12_6 = mul i16 %rhs_V_0_12_6, %lhs_V_2_0_0_6
  %tmp_48_0_12_6_cast = sext i16 %r_V_4_0_12_6 to i17
  %p_Result_6_0_12_7 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_12_V_load, i32 56, i32 63)
  %rhs_V_0_12_7 = sext i8 %p_Result_6_0_12_7 to i16
  %r_V_4_0_12_7 = mul i16 %rhs_V_0_12_7, %lhs_V_2_0_0_7
  %tmp_48_0_12_7_cast = sext i16 %r_V_4_0_12_7 to i17
  %p_Result_6_0_12_8 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_12_V_load, i32 64, i32 71)
  %rhs_V_0_12_8 = sext i8 %p_Result_6_0_12_8 to i16
  %r_V_4_0_12_8 = mul i16 %rhs_V_0_12_8, %lhs_V_2_0_0_8
  %tmp_48_0_12_8_cast = sext i16 %r_V_4_0_12_8 to i17
  %p_Result_6_0_12_9 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_12_V_load, i32 72, i32 79)
  %rhs_V_0_12_9 = sext i8 %p_Result_6_0_12_9 to i16
  %r_V_4_0_12_9 = mul i16 %rhs_V_0_12_9, %lhs_V_2_0_0_9
  %tmp_48_0_12_9_cast = sext i16 %r_V_4_0_12_9 to i17
  %p_Result_6_0_12_s = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_12_V_load, i32 80, i32 87)
  %rhs_V_0_12_s = sext i8 %p_Result_6_0_12_s to i16
  %r_V_4_0_12_s = mul i16 %rhs_V_0_12_s, %lhs_V_2_0_0_s
  %tmp_48_0_12_cast = sext i16 %r_V_4_0_12_s to i17
  %p_Result_6_0_12_10 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_12_V_load, i32 88, i32 95)
  %rhs_V_0_12_10 = sext i8 %p_Result_6_0_12_10 to i16
  %r_V_4_0_12_10 = mul i16 %rhs_V_0_12_10, %lhs_V_2_0_0_10
  %tmp_48_0_12_10_cast = sext i16 %r_V_4_0_12_10 to i17
  %p_Result_6_0_12_11 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_12_V_load, i32 96, i32 103)
  %rhs_V_0_12_11 = sext i8 %p_Result_6_0_12_11 to i16
  %r_V_4_0_12_11 = mul i16 %rhs_V_0_12_11, %lhs_V_2_0_0_11
  %tmp_48_0_12_11_cast = sext i16 %r_V_4_0_12_11 to i17
  %p_Result_6_0_12_12 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_12_V_load, i32 104, i32 111)
  %rhs_V_0_12_12 = sext i8 %p_Result_6_0_12_12 to i16
  %r_V_4_0_12_12 = mul i16 %rhs_V_0_12_12, %lhs_V_2_0_0_12
  %tmp_48_0_12_12_cast = sext i16 %r_V_4_0_12_12 to i17
  %p_Result_6_0_12_13 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_12_V_load, i32 112, i32 119)
  %rhs_V_0_12_13 = sext i8 %p_Result_6_0_12_13 to i16
  %r_V_4_0_12_13 = mul i16 %rhs_V_0_12_13, %lhs_V_2_0_0_13
  %tmp_48_0_12_13_cast = sext i16 %r_V_4_0_12_13 to i17
  %p_Result_6_0_12_14 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_12_V_load, i32 120, i32 127)
  %rhs_V_0_12_14 = sext i8 %p_Result_6_0_12_14 to i16
  %r_V_4_0_12_14 = mul i16 %rhs_V_0_12_14, %lhs_V_2_0_0_14
  %tmp_48_0_12_14_cast = sext i16 %r_V_4_0_12_14 to i17
  %tmp183 = add i32 %p_Result_4_0_11, %tmp_48_0_11
  %tmp184 = add i17 %tmp_48_0_12_1_cast, %tmp_48_0_12_2_cast
  %tmp184_cast = sext i17 %tmp184 to i32
  %tmp182 = add i32 %tmp184_cast, %tmp183
  %tmp186 = add i17 %tmp_48_0_12_3_cast, %tmp_48_0_12_4_cast
  %tmp186_cast = sext i17 %tmp186 to i18
  %tmp187 = add i17 %tmp_48_0_12_5_cast, %tmp_48_0_12_6_cast
  %tmp187_cast = sext i17 %tmp187 to i18
  %tmp185 = add i18 %tmp187_cast, %tmp186_cast
  %tmp185_cast = sext i18 %tmp185 to i32
  %tmp181 = add i32 %tmp185_cast, %tmp182
  %tmp190 = add i17 %tmp_48_0_12_7_cast, %tmp_48_0_12_8_cast
  %tmp190_cast = sext i17 %tmp190 to i18
  %tmp191 = add i17 %tmp_48_0_12_9_cast, %tmp_48_0_12_cast
  %tmp191_cast = sext i17 %tmp191 to i18
  %tmp189 = add i18 %tmp191_cast, %tmp190_cast
  %tmp189_cast = sext i18 %tmp189 to i19
  %tmp193 = add i17 %tmp_48_0_12_10_cast, %tmp_48_0_12_11_cast
  %tmp193_cast = sext i17 %tmp193 to i18
  %tmp195 = add i17 %tmp_48_0_12_13_cast, %tmp_48_0_12_14_cast
  %tmp194 = add i17 %tmp195, %tmp_48_0_12_12_cast
  %tmp194_cast = sext i17 %tmp194 to i18
  %tmp192 = add i18 %tmp194_cast, %tmp193_cast
  %tmp192_cast = sext i18 %tmp192 to i19
  %tmp188 = add i19 %tmp192_cast, %tmp189_cast
  %tmp188_cast = sext i19 %tmp188 to i32
  %temp_V_1_0_12_s = add i32 %tmp188_cast, %tmp181
  %p_Result_4_0_12 = call i32 @_ssdm_op_PartSelect.i32.i512.i32.i32(i512 %acc_mem_0_V_load_1, i32 416, i32 447)
  %wgt_mem_13_V_addr = getelementptr [1024 x i128]* %wgt_mem_13_V, i64 0, i64 %tmp_25
  %wgt_mem_13_V_load = load i128* %wgt_mem_13_V_addr, align 16
  %tmp_196 = trunc i128 %wgt_mem_13_V_load to i8
  %rhs_V_0_12 = sext i8 %tmp_196 to i16
  %r_V_4_0_12 = mul i16 %rhs_V_0_12, %lhs_V_2
  %tmp_48_0_12 = sext i16 %r_V_4_0_12 to i32
  %p_Result_6_0_13_1 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_13_V_load, i32 8, i32 15)
  %rhs_V_0_13_1 = sext i8 %p_Result_6_0_13_1 to i16
  %r_V_4_0_13_1 = mul i16 %rhs_V_0_13_1, %lhs_V_2_0_0_1
  %tmp_48_0_13_1_cast = sext i16 %r_V_4_0_13_1 to i17
  %p_Result_6_0_13_2 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_13_V_load, i32 16, i32 23)
  %rhs_V_0_13_2 = sext i8 %p_Result_6_0_13_2 to i16
  %r_V_4_0_13_2 = mul i16 %rhs_V_0_13_2, %lhs_V_2_0_0_2
  %tmp_48_0_13_2_cast = sext i16 %r_V_4_0_13_2 to i17
  %p_Result_6_0_13_3 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_13_V_load, i32 24, i32 31)
  %rhs_V_0_13_3 = sext i8 %p_Result_6_0_13_3 to i16
  %r_V_4_0_13_3 = mul i16 %rhs_V_0_13_3, %lhs_V_2_0_0_3
  %tmp_48_0_13_3_cast = sext i16 %r_V_4_0_13_3 to i17
  %p_Result_6_0_13_4 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_13_V_load, i32 32, i32 39)
  %rhs_V_0_13_4 = sext i8 %p_Result_6_0_13_4 to i16
  %r_V_4_0_13_4 = mul i16 %rhs_V_0_13_4, %lhs_V_2_0_0_4
  %tmp_48_0_13_4_cast = sext i16 %r_V_4_0_13_4 to i17
  %p_Result_6_0_13_5 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_13_V_load, i32 40, i32 47)
  %rhs_V_0_13_5 = sext i8 %p_Result_6_0_13_5 to i16
  %r_V_4_0_13_5 = mul i16 %rhs_V_0_13_5, %lhs_V_2_0_0_5
  %tmp_48_0_13_5_cast = sext i16 %r_V_4_0_13_5 to i17
  %p_Result_6_0_13_6 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_13_V_load, i32 48, i32 55)
  %rhs_V_0_13_6 = sext i8 %p_Result_6_0_13_6 to i16
  %r_V_4_0_13_6 = mul i16 %rhs_V_0_13_6, %lhs_V_2_0_0_6
  %tmp_48_0_13_6_cast = sext i16 %r_V_4_0_13_6 to i17
  %p_Result_6_0_13_7 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_13_V_load, i32 56, i32 63)
  %rhs_V_0_13_7 = sext i8 %p_Result_6_0_13_7 to i16
  %r_V_4_0_13_7 = mul i16 %rhs_V_0_13_7, %lhs_V_2_0_0_7
  %tmp_48_0_13_7_cast = sext i16 %r_V_4_0_13_7 to i17
  %p_Result_6_0_13_8 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_13_V_load, i32 64, i32 71)
  %rhs_V_0_13_8 = sext i8 %p_Result_6_0_13_8 to i16
  %r_V_4_0_13_8 = mul i16 %rhs_V_0_13_8, %lhs_V_2_0_0_8
  %tmp_48_0_13_8_cast = sext i16 %r_V_4_0_13_8 to i17
  %p_Result_6_0_13_9 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_13_V_load, i32 72, i32 79)
  %rhs_V_0_13_9 = sext i8 %p_Result_6_0_13_9 to i16
  %r_V_4_0_13_9 = mul i16 %rhs_V_0_13_9, %lhs_V_2_0_0_9
  %tmp_48_0_13_9_cast = sext i16 %r_V_4_0_13_9 to i17
  %p_Result_6_0_13_s = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_13_V_load, i32 80, i32 87)
  %rhs_V_0_13_s = sext i8 %p_Result_6_0_13_s to i16
  %r_V_4_0_13_s = mul i16 %rhs_V_0_13_s, %lhs_V_2_0_0_s
  %tmp_48_0_13_cast = sext i16 %r_V_4_0_13_s to i17
  %p_Result_6_0_13_10 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_13_V_load, i32 88, i32 95)
  %rhs_V_0_13_10 = sext i8 %p_Result_6_0_13_10 to i16
  %r_V_4_0_13_10 = mul i16 %rhs_V_0_13_10, %lhs_V_2_0_0_10
  %tmp_48_0_13_10_cast = sext i16 %r_V_4_0_13_10 to i17
  %p_Result_6_0_13_11 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_13_V_load, i32 96, i32 103)
  %rhs_V_0_13_11 = sext i8 %p_Result_6_0_13_11 to i16
  %r_V_4_0_13_11 = mul i16 %rhs_V_0_13_11, %lhs_V_2_0_0_11
  %tmp_48_0_13_11_cast = sext i16 %r_V_4_0_13_11 to i17
  %p_Result_6_0_13_12 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_13_V_load, i32 104, i32 111)
  %rhs_V_0_13_12 = sext i8 %p_Result_6_0_13_12 to i16
  %r_V_4_0_13_12 = mul i16 %rhs_V_0_13_12, %lhs_V_2_0_0_12
  %tmp_48_0_13_12_cast = sext i16 %r_V_4_0_13_12 to i17
  %p_Result_6_0_13_13 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_13_V_load, i32 112, i32 119)
  %rhs_V_0_13_13 = sext i8 %p_Result_6_0_13_13 to i16
  %r_V_4_0_13_13 = mul i16 %rhs_V_0_13_13, %lhs_V_2_0_0_13
  %tmp_48_0_13_13_cast = sext i16 %r_V_4_0_13_13 to i17
  %p_Result_6_0_13_14 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_13_V_load, i32 120, i32 127)
  %rhs_V_0_13_14 = sext i8 %p_Result_6_0_13_14 to i16
  %r_V_4_0_13_14 = mul i16 %rhs_V_0_13_14, %lhs_V_2_0_0_14
  %tmp_48_0_13_14_cast = sext i16 %r_V_4_0_13_14 to i17
  %tmp198 = add i32 %p_Result_4_0_12, %tmp_48_0_12
  %tmp199 = add i17 %tmp_48_0_13_1_cast, %tmp_48_0_13_2_cast
  %tmp199_cast = sext i17 %tmp199 to i32
  %tmp197 = add i32 %tmp199_cast, %tmp198
  %tmp201 = add i17 %tmp_48_0_13_3_cast, %tmp_48_0_13_4_cast
  %tmp201_cast = sext i17 %tmp201 to i18
  %tmp202 = add i17 %tmp_48_0_13_5_cast, %tmp_48_0_13_6_cast
  %tmp202_cast = sext i17 %tmp202 to i18
  %tmp200 = add i18 %tmp202_cast, %tmp201_cast
  %tmp200_cast = sext i18 %tmp200 to i32
  %tmp196 = add i32 %tmp200_cast, %tmp197
  %tmp205 = add i17 %tmp_48_0_13_7_cast, %tmp_48_0_13_8_cast
  %tmp205_cast = sext i17 %tmp205 to i18
  %tmp206 = add i17 %tmp_48_0_13_9_cast, %tmp_48_0_13_cast
  %tmp206_cast = sext i17 %tmp206 to i18
  %tmp204 = add i18 %tmp206_cast, %tmp205_cast
  %tmp204_cast = sext i18 %tmp204 to i19
  %tmp208 = add i17 %tmp_48_0_13_10_cast, %tmp_48_0_13_11_cast
  %tmp208_cast = sext i17 %tmp208 to i18
  %tmp210 = add i17 %tmp_48_0_13_13_cast, %tmp_48_0_13_14_cast
  %tmp209 = add i17 %tmp210, %tmp_48_0_13_12_cast
  %tmp209_cast = sext i17 %tmp209 to i18
  %tmp207 = add i18 %tmp209_cast, %tmp208_cast
  %tmp207_cast = sext i18 %tmp207 to i19
  %tmp203 = add i19 %tmp207_cast, %tmp204_cast
  %tmp203_cast = sext i19 %tmp203 to i32
  %temp_V_1_0_13_s = add i32 %tmp203_cast, %tmp196
  %p_Result_4_0_13 = call i32 @_ssdm_op_PartSelect.i32.i512.i32.i32(i512 %acc_mem_0_V_load_1, i32 448, i32 479)
  %wgt_mem_14_V_addr = getelementptr [1024 x i128]* %wgt_mem_14_V, i64 0, i64 %tmp_25
  %wgt_mem_14_V_load = load i128* %wgt_mem_14_V_addr, align 16
  %tmp_211 = trunc i128 %wgt_mem_14_V_load to i8
  %rhs_V_0_13 = sext i8 %tmp_211 to i16
  %r_V_4_0_13 = mul i16 %rhs_V_0_13, %lhs_V_2
  %tmp_48_0_13 = sext i16 %r_V_4_0_13 to i32
  %p_Result_6_0_14_1 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_14_V_load, i32 8, i32 15)
  %rhs_V_0_14_1 = sext i8 %p_Result_6_0_14_1 to i16
  %r_V_4_0_14_1 = mul i16 %rhs_V_0_14_1, %lhs_V_2_0_0_1
  %tmp_48_0_14_1_cast = sext i16 %r_V_4_0_14_1 to i17
  %p_Result_6_0_14_2 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_14_V_load, i32 16, i32 23)
  %rhs_V_0_14_2 = sext i8 %p_Result_6_0_14_2 to i16
  %r_V_4_0_14_2 = mul i16 %rhs_V_0_14_2, %lhs_V_2_0_0_2
  %tmp_48_0_14_2_cast = sext i16 %r_V_4_0_14_2 to i17
  %p_Result_6_0_14_3 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_14_V_load, i32 24, i32 31)
  %rhs_V_0_14_3 = sext i8 %p_Result_6_0_14_3 to i16
  %r_V_4_0_14_3 = mul i16 %rhs_V_0_14_3, %lhs_V_2_0_0_3
  %tmp_48_0_14_3_cast = sext i16 %r_V_4_0_14_3 to i17
  %p_Result_6_0_14_4 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_14_V_load, i32 32, i32 39)
  %rhs_V_0_14_4 = sext i8 %p_Result_6_0_14_4 to i16
  %r_V_4_0_14_4 = mul i16 %rhs_V_0_14_4, %lhs_V_2_0_0_4
  %tmp_48_0_14_4_cast = sext i16 %r_V_4_0_14_4 to i17
  %p_Result_6_0_14_5 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_14_V_load, i32 40, i32 47)
  %rhs_V_0_14_5 = sext i8 %p_Result_6_0_14_5 to i16
  %r_V_4_0_14_5 = mul i16 %rhs_V_0_14_5, %lhs_V_2_0_0_5
  %tmp_48_0_14_5_cast = sext i16 %r_V_4_0_14_5 to i17
  %p_Result_6_0_14_6 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_14_V_load, i32 48, i32 55)
  %rhs_V_0_14_6 = sext i8 %p_Result_6_0_14_6 to i16
  %r_V_4_0_14_6 = mul i16 %rhs_V_0_14_6, %lhs_V_2_0_0_6
  %tmp_48_0_14_6_cast = sext i16 %r_V_4_0_14_6 to i17
  %p_Result_6_0_14_7 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_14_V_load, i32 56, i32 63)
  %rhs_V_0_14_7 = sext i8 %p_Result_6_0_14_7 to i16
  %r_V_4_0_14_7 = mul i16 %rhs_V_0_14_7, %lhs_V_2_0_0_7
  %tmp_48_0_14_7_cast = sext i16 %r_V_4_0_14_7 to i17
  %p_Result_6_0_14_8 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_14_V_load, i32 64, i32 71)
  %rhs_V_0_14_8 = sext i8 %p_Result_6_0_14_8 to i16
  %r_V_4_0_14_8 = mul i16 %rhs_V_0_14_8, %lhs_V_2_0_0_8
  %tmp_48_0_14_8_cast = sext i16 %r_V_4_0_14_8 to i17
  %p_Result_6_0_14_9 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_14_V_load, i32 72, i32 79)
  %rhs_V_0_14_9 = sext i8 %p_Result_6_0_14_9 to i16
  %r_V_4_0_14_9 = mul i16 %rhs_V_0_14_9, %lhs_V_2_0_0_9
  %tmp_48_0_14_9_cast = sext i16 %r_V_4_0_14_9 to i17
  %p_Result_6_0_14_s = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_14_V_load, i32 80, i32 87)
  %rhs_V_0_14_s = sext i8 %p_Result_6_0_14_s to i16
  %r_V_4_0_14_s = mul i16 %rhs_V_0_14_s, %lhs_V_2_0_0_s
  %tmp_48_0_14_cast = sext i16 %r_V_4_0_14_s to i17
  %p_Result_6_0_14_10 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_14_V_load, i32 88, i32 95)
  %rhs_V_0_14_10 = sext i8 %p_Result_6_0_14_10 to i16
  %r_V_4_0_14_10 = mul i16 %rhs_V_0_14_10, %lhs_V_2_0_0_10
  %tmp_48_0_14_10_cast = sext i16 %r_V_4_0_14_10 to i17
  %p_Result_6_0_14_11 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_14_V_load, i32 96, i32 103)
  %rhs_V_0_14_11 = sext i8 %p_Result_6_0_14_11 to i16
  %r_V_4_0_14_11 = mul i16 %rhs_V_0_14_11, %lhs_V_2_0_0_11
  %tmp_48_0_14_11_cast = sext i16 %r_V_4_0_14_11 to i17
  %p_Result_6_0_14_12 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_14_V_load, i32 104, i32 111)
  %rhs_V_0_14_12 = sext i8 %p_Result_6_0_14_12 to i16
  %r_V_4_0_14_12 = mul i16 %rhs_V_0_14_12, %lhs_V_2_0_0_12
  %tmp_48_0_14_12_cast = sext i16 %r_V_4_0_14_12 to i17
  %p_Result_6_0_14_13 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_14_V_load, i32 112, i32 119)
  %rhs_V_0_14_13 = sext i8 %p_Result_6_0_14_13 to i16
  %r_V_4_0_14_13 = mul i16 %rhs_V_0_14_13, %lhs_V_2_0_0_13
  %tmp_48_0_14_13_cast = sext i16 %r_V_4_0_14_13 to i17
  %p_Result_6_0_14_14 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_14_V_load, i32 120, i32 127)
  %rhs_V_0_14_14 = sext i8 %p_Result_6_0_14_14 to i16
  %r_V_4_0_14_14 = mul i16 %rhs_V_0_14_14, %lhs_V_2_0_0_14
  %tmp_48_0_14_14_cast = sext i16 %r_V_4_0_14_14 to i17
  %tmp213 = add i32 %p_Result_4_0_13, %tmp_48_0_13
  %tmp214 = add i17 %tmp_48_0_14_1_cast, %tmp_48_0_14_2_cast
  %tmp214_cast = sext i17 %tmp214 to i32
  %tmp212 = add i32 %tmp214_cast, %tmp213
  %tmp216 = add i17 %tmp_48_0_14_3_cast, %tmp_48_0_14_4_cast
  %tmp216_cast = sext i17 %tmp216 to i18
  %tmp217 = add i17 %tmp_48_0_14_5_cast, %tmp_48_0_14_6_cast
  %tmp217_cast = sext i17 %tmp217 to i18
  %tmp215 = add i18 %tmp217_cast, %tmp216_cast
  %tmp215_cast = sext i18 %tmp215 to i32
  %tmp211 = add i32 %tmp215_cast, %tmp212
  %tmp220 = add i17 %tmp_48_0_14_7_cast, %tmp_48_0_14_8_cast
  %tmp220_cast = sext i17 %tmp220 to i18
  %tmp221 = add i17 %tmp_48_0_14_9_cast, %tmp_48_0_14_cast
  %tmp221_cast = sext i17 %tmp221 to i18
  %tmp219 = add i18 %tmp221_cast, %tmp220_cast
  %tmp219_cast = sext i18 %tmp219 to i19
  %tmp223 = add i17 %tmp_48_0_14_10_cast, %tmp_48_0_14_11_cast
  %tmp223_cast = sext i17 %tmp223 to i18
  %tmp225 = add i17 %tmp_48_0_14_13_cast, %tmp_48_0_14_14_cast
  %tmp224 = add i17 %tmp225, %tmp_48_0_14_12_cast
  %tmp224_cast = sext i17 %tmp224 to i18
  %tmp222 = add i18 %tmp224_cast, %tmp223_cast
  %tmp222_cast = sext i18 %tmp222 to i19
  %tmp218 = add i19 %tmp222_cast, %tmp219_cast
  %tmp218_cast = sext i19 %tmp218 to i32
  %temp_V_1_0_14_s = add i32 %tmp218_cast, %tmp211
  %p_Result_4_0_14 = call i32 @_ssdm_op_PartSelect.i32.i512.i32.i32(i512 %acc_mem_0_V_load_1, i32 480, i32 511)
  %wgt_mem_15_V_addr = getelementptr [1024 x i128]* %wgt_mem_15_V, i64 0, i64 %tmp_25
  %wgt_mem_15_V_load = load i128* %wgt_mem_15_V_addr, align 16
  %tmp_226 = trunc i128 %wgt_mem_15_V_load to i8
  %rhs_V_0_14 = sext i8 %tmp_226 to i16
  %r_V_4_0_14 = mul i16 %rhs_V_0_14, %lhs_V_2
  %tmp_48_0_14 = sext i16 %r_V_4_0_14 to i32
  %p_Result_6_0_15_1 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_15_V_load, i32 8, i32 15)
  %rhs_V_0_15_1 = sext i8 %p_Result_6_0_15_1 to i16
  %r_V_4_0_15_1 = mul i16 %rhs_V_0_15_1, %lhs_V_2_0_0_1
  %tmp_48_0_15_1_cast = sext i16 %r_V_4_0_15_1 to i17
  %p_Result_6_0_15_2 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_15_V_load, i32 16, i32 23)
  %rhs_V_0_15_2 = sext i8 %p_Result_6_0_15_2 to i16
  %r_V_4_0_15_2 = mul i16 %rhs_V_0_15_2, %lhs_V_2_0_0_2
  %tmp_48_0_15_2_cast = sext i16 %r_V_4_0_15_2 to i17
  %p_Result_6_0_15_3 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_15_V_load, i32 24, i32 31)
  %rhs_V_0_15_3 = sext i8 %p_Result_6_0_15_3 to i16
  %r_V_4_0_15_3 = mul i16 %rhs_V_0_15_3, %lhs_V_2_0_0_3
  %tmp_48_0_15_3_cast = sext i16 %r_V_4_0_15_3 to i17
  %p_Result_6_0_15_4 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_15_V_load, i32 32, i32 39)
  %rhs_V_0_15_4 = sext i8 %p_Result_6_0_15_4 to i16
  %r_V_4_0_15_4 = mul i16 %rhs_V_0_15_4, %lhs_V_2_0_0_4
  %tmp_48_0_15_4_cast = sext i16 %r_V_4_0_15_4 to i17
  %p_Result_6_0_15_5 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_15_V_load, i32 40, i32 47)
  %rhs_V_0_15_5 = sext i8 %p_Result_6_0_15_5 to i16
  %r_V_4_0_15_5 = mul i16 %rhs_V_0_15_5, %lhs_V_2_0_0_5
  %tmp_48_0_15_5_cast = sext i16 %r_V_4_0_15_5 to i17
  %p_Result_6_0_15_6 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_15_V_load, i32 48, i32 55)
  %rhs_V_0_15_6 = sext i8 %p_Result_6_0_15_6 to i16
  %r_V_4_0_15_6 = mul i16 %rhs_V_0_15_6, %lhs_V_2_0_0_6
  %tmp_48_0_15_6_cast = sext i16 %r_V_4_0_15_6 to i17
  %p_Result_6_0_15_7 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_15_V_load, i32 56, i32 63)
  %rhs_V_0_15_7 = sext i8 %p_Result_6_0_15_7 to i16
  %r_V_4_0_15_7 = mul i16 %rhs_V_0_15_7, %lhs_V_2_0_0_7
  %tmp_48_0_15_7_cast = sext i16 %r_V_4_0_15_7 to i17
  %p_Result_6_0_15_8 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_15_V_load, i32 64, i32 71)
  %rhs_V_0_15_8 = sext i8 %p_Result_6_0_15_8 to i16
  %r_V_4_0_15_8 = mul i16 %rhs_V_0_15_8, %lhs_V_2_0_0_8
  %tmp_48_0_15_8_cast = sext i16 %r_V_4_0_15_8 to i17
  %p_Result_6_0_15_9 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_15_V_load, i32 72, i32 79)
  %rhs_V_0_15_9 = sext i8 %p_Result_6_0_15_9 to i16
  %r_V_4_0_15_9 = mul i16 %rhs_V_0_15_9, %lhs_V_2_0_0_9
  %tmp_48_0_15_9_cast = sext i16 %r_V_4_0_15_9 to i17
  %p_Result_6_0_15_s = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_15_V_load, i32 80, i32 87)
  %rhs_V_0_15_s = sext i8 %p_Result_6_0_15_s to i16
  %r_V_4_0_15_s = mul i16 %rhs_V_0_15_s, %lhs_V_2_0_0_s
  %tmp_48_0_15_cast = sext i16 %r_V_4_0_15_s to i17
  %p_Result_6_0_15_10 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_15_V_load, i32 88, i32 95)
  %rhs_V_0_15_10 = sext i8 %p_Result_6_0_15_10 to i16
  %r_V_4_0_15_10 = mul i16 %rhs_V_0_15_10, %lhs_V_2_0_0_10
  %tmp_48_0_15_10_cast = sext i16 %r_V_4_0_15_10 to i17
  %p_Result_6_0_15_11 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_15_V_load, i32 96, i32 103)
  %rhs_V_0_15_11 = sext i8 %p_Result_6_0_15_11 to i16
  %r_V_4_0_15_11 = mul i16 %rhs_V_0_15_11, %lhs_V_2_0_0_11
  %tmp_48_0_15_11_cast = sext i16 %r_V_4_0_15_11 to i17
  %p_Result_6_0_15_12 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_15_V_load, i32 104, i32 111)
  %rhs_V_0_15_12 = sext i8 %p_Result_6_0_15_12 to i16
  %r_V_4_0_15_12 = mul i16 %rhs_V_0_15_12, %lhs_V_2_0_0_12
  %tmp_48_0_15_12_cast = sext i16 %r_V_4_0_15_12 to i17
  %p_Result_6_0_15_13 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_15_V_load, i32 112, i32 119)
  %rhs_V_0_15_13 = sext i8 %p_Result_6_0_15_13 to i16
  %r_V_4_0_15_13 = mul i16 %rhs_V_0_15_13, %lhs_V_2_0_0_13
  %tmp_48_0_15_13_cast = sext i16 %r_V_4_0_15_13 to i17
  %p_Result_6_0_15_14 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %wgt_mem_15_V_load, i32 120, i32 127)
  %rhs_V_0_15_14 = sext i8 %p_Result_6_0_15_14 to i16
  %r_V_4_0_15_14 = mul i16 %rhs_V_0_15_14, %lhs_V_2_0_0_14
  %tmp_48_0_15_14_cast = sext i16 %r_V_4_0_15_14 to i17
  %tmp228 = add i32 %p_Result_4_0_14, %tmp_48_0_14
  %tmp229 = add i17 %tmp_48_0_15_1_cast, %tmp_48_0_15_2_cast
  %tmp229_cast = sext i17 %tmp229 to i32
  %tmp227 = add i32 %tmp229_cast, %tmp228
  %tmp231 = add i17 %tmp_48_0_15_3_cast, %tmp_48_0_15_4_cast
  %tmp231_cast = sext i17 %tmp231 to i18
  %tmp232 = add i17 %tmp_48_0_15_5_cast, %tmp_48_0_15_6_cast
  %tmp232_cast = sext i17 %tmp232 to i18
  %tmp230 = add i18 %tmp232_cast, %tmp231_cast
  %tmp230_cast = sext i18 %tmp230 to i32
  %tmp226 = add i32 %tmp230_cast, %tmp227
  %tmp235 = add i17 %tmp_48_0_15_7_cast, %tmp_48_0_15_8_cast
  %tmp235_cast = sext i17 %tmp235 to i18
  %tmp236 = add i17 %tmp_48_0_15_9_cast, %tmp_48_0_15_cast
  %tmp236_cast = sext i17 %tmp236 to i18
  %tmp234 = add i18 %tmp236_cast, %tmp235_cast
  %tmp234_cast = sext i18 %tmp234 to i19
  %tmp238 = add i17 %tmp_48_0_15_10_cast, %tmp_48_0_15_11_cast
  %tmp238_cast = sext i17 %tmp238 to i18
  %tmp240 = add i17 %tmp_48_0_15_13_cast, %tmp_48_0_15_14_cast
  %tmp239 = add i17 %tmp240, %tmp_48_0_15_12_cast
  %tmp239_cast = sext i17 %tmp239 to i18
  %tmp237 = add i18 %tmp239_cast, %tmp238_cast
  %tmp237_cast = sext i18 %tmp237 to i19
  %tmp233 = add i19 %tmp237_cast, %tmp234_cast
  %tmp233_cast = sext i19 %tmp233 to i32
  %temp_V_1_0_15_s = add i32 %tmp233_cast, %tmp226
  %p_Result_0_s = call i512 @_ssdm_op_BitConcatenate.i512.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32(i32 %temp_V_1_0_15_s, i32 %temp_V_1_0_14_s, i32 %temp_V_1_0_13_s, i32 %temp_V_1_0_12_s, i32 %temp_V_1_0_11_s, i32 %temp_V_1_0_10_s, i32 %temp_V_1_0_9_s, i32 %temp_V_1_0_8_s, i32 %temp_V_1_0_7_s, i32 %temp_V_1_0_6_s, i32 %temp_V_1_0_5_s, i32 %temp_V_1_0_4_s, i32 %temp_V_1_0_3_s, i32 %temp_V_1_0_2_s, i32 %temp_V_1_0_1_s, i32 %temp_V_1_0_0_s)
  store i512 %p_Result_0_s, i512* %acc_mem_0_V_addr_2, align 64
  br label %.loopexit

.preheader803.0:                                  ; preds = %15
  %acc_mem_0_V_addr_1 = getelementptr [2048 x i512]* %acc_mem_0_V, i64 0, i64 %tmp_23
  store i512 0, i512* %acc_mem_0_V_addr_1, align 64
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader803.0, %.preheader802.preheader
  %empty_17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str11, i32 %tmp_16)
  %upc_1 = add nsw i32 %upc1, 1
  br label %14

.loopexit805.loopexit:                            ; preds = %14
  br label %.loopexit805

.loopexit805:                                     ; preds = %.loopexit805.loopexit, %12
  br label %16

; <label>:16                                      ; preds = %.loopexit805, %memcpy.tail
  %empty_18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([10 x i8]* @p_str10, i32 %tmp_6)
  br label %0

; <label>:17                                      ; preds = %0
  ret void

branch0:                                          ; preds = %burst.rd.body20
  store i128 %narrow_port_addr_1_r_1, i128* %wgt_mem_0_V_addr_1, align 8
  br label %burst.rd.body20361

branch1:                                          ; preds = %burst.rd.body20
  store i128 %narrow_port_addr_1_r_1, i128* %wgt_mem_1_V_addr_1, align 8
  br label %burst.rd.body20361

branch2:                                          ; preds = %burst.rd.body20
  store i128 %narrow_port_addr_1_r_1, i128* %wgt_mem_2_V_addr_1, align 8
  br label %burst.rd.body20361

branch3:                                          ; preds = %burst.rd.body20
  store i128 %narrow_port_addr_1_r_1, i128* %wgt_mem_3_V_addr_1, align 8
  br label %burst.rd.body20361

branch4:                                          ; preds = %burst.rd.body20
  store i128 %narrow_port_addr_1_r_1, i128* %wgt_mem_4_V_addr_1, align 8
  br label %burst.rd.body20361

branch5:                                          ; preds = %burst.rd.body20
  store i128 %narrow_port_addr_1_r_1, i128* %wgt_mem_5_V_addr_1, align 8
  br label %burst.rd.body20361

branch6:                                          ; preds = %burst.rd.body20
  store i128 %narrow_port_addr_1_r_1, i128* %wgt_mem_6_V_addr_1, align 8
  br label %burst.rd.body20361

branch7:                                          ; preds = %burst.rd.body20
  store i128 %narrow_port_addr_1_r_1, i128* %wgt_mem_7_V_addr_1, align 8
  br label %burst.rd.body20361

branch8:                                          ; preds = %burst.rd.body20
  store i128 %narrow_port_addr_1_r_1, i128* %wgt_mem_8_V_addr_1, align 8
  br label %burst.rd.body20361

branch9:                                          ; preds = %burst.rd.body20
  store i128 %narrow_port_addr_1_r_1, i128* %wgt_mem_9_V_addr_1, align 8
  br label %burst.rd.body20361

branch10:                                         ; preds = %burst.rd.body20
  store i128 %narrow_port_addr_1_r_1, i128* %wgt_mem_10_V_addr_1, align 8
  br label %burst.rd.body20361

branch11:                                         ; preds = %burst.rd.body20
  store i128 %narrow_port_addr_1_r_1, i128* %wgt_mem_11_V_addr_1, align 8
  br label %burst.rd.body20361

branch12:                                         ; preds = %burst.rd.body20
  store i128 %narrow_port_addr_1_r_1, i128* %wgt_mem_12_V_addr_1, align 8
  br label %burst.rd.body20361

branch13:                                         ; preds = %burst.rd.body20
  store i128 %narrow_port_addr_1_r_1, i128* %wgt_mem_13_V_addr_1, align 8
  br label %burst.rd.body20361

branch14:                                         ; preds = %burst.rd.body20
  store i128 %narrow_port_addr_1_r_1, i128* %wgt_mem_14_V_addr_1, align 8
  br label %burst.rd.body20361

branch15:                                         ; preds = %burst.rd.body20
  store i128 %narrow_port_addr_1_r_1, i128* %wgt_mem_15_V_addr_1, align 8
  br label %burst.rd.body20361
}

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i512 @llvm.part.select.i512(i512, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i19 @llvm.part.select.i19(i19, i32, i32) nounwind readnone

declare i128 @llvm.part.select.i128(i128, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak i1 @_ssdm_op_WriteResp.m_axi.i512P(i512*) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteReq.m_axi.i512P(i512*, i32) {
entry:
  ret i1 true
}

define weak void @_ssdm_op_Write.m_axi.i512P(i512*, i512, i64) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_ReadReq.m_axi.i64P(i64*, i32) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_ReadReq.m_axi.i512P(i512*, i32) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_ReadReq.m_axi.i32P(i32*, i32) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_ReadReq.m_axi.i128P(i128*, i32) {
entry:
  ret i1 true
}

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

define weak i64 @_ssdm_op_Read.m_axi.i64P(i64*) {
entry:
  %empty = load i64* %0
  ret i64 %empty
}

define weak i512 @_ssdm_op_Read.m_axi.i512P(i512*) {
entry:
  %empty = load i512* %0
  ret i512 %empty
}

define weak i32 @_ssdm_op_Read.m_axi.i32P(i32*) {
entry:
  %empty = load i32* %0
  ret i32 %empty
}

define weak i128 @_ssdm_op_Read.m_axi.i128P(i128*) {
entry:
  %empty = load i128* %0
  ret i128 %empty
}

define weak i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128, i32, i32) nounwind readnone {
entry:
  %empty = call i128 @llvm.part.select.i128(i128 %0, i32 %1, i32 %2)
  %empty_19 = trunc i128 %empty to i8
  ret i8 %empty_19
}

declare i4 @_ssdm_op_PartSelect.i4.i18.i32.i32(i18, i32, i32) nounwind readnone

define weak i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_20 = trunc i64 %empty to i32
  ret i32 %empty_20
}

define weak i32 @_ssdm_op_PartSelect.i32.i512.i32.i32(i512, i32, i32) nounwind readnone {
entry:
  %empty = call i512 @llvm.part.select.i512(i512 %0, i32 %1, i32 %2)
  %empty_21 = trunc i512 %empty to i32
  ret i32 %empty_21
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_22 = trunc i32 %empty to i30
  ret i30 %empty_22
}

define weak i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_23 = trunc i32 %empty to i29
  ret i29 %empty_23
}

define weak i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_24 = trunc i32 %empty to i28
  ret i28 %empty_24
}

define weak i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_25 = trunc i32 %empty to i26
  ret i26 %empty_25
}

define weak i2 @_ssdm_op_PartSelect.i2.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_26 = trunc i64 %empty to i2
  ret i2 %empty_26
}

define weak i15 @_ssdm_op_PartSelect.i15.i19.i32.i32(i19, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.select.i19(i19 %0, i32 %1, i32 %2)
  %empty_27 = trunc i19 %empty to i15
  ret i15 %empty_27
}

define weak i14 @_ssdm_op_PartSelect.i14.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_28 = trunc i64 %empty to i14
  ret i14 %empty_28
}

define weak i13 @_ssdm_op_PartSelect.i13.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_29 = trunc i64 %empty to i13
  ret i13 %empty_29
}

define weak i12 @_ssdm_op_PartSelect.i12.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_30 = trunc i64 %empty to i12
  ret i12 %empty_30
}

define weak i11 @_ssdm_op_PartSelect.i11.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_31 = trunc i32 %empty to i11
  ret i11 %empty_31
}

define weak i10 @_ssdm_op_PartSelect.i10.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_32 = trunc i32 %empty to i10
  ret i10 %empty_32
}

define weak i1 @_ssdm_op_BitSelect.i1.i64.i32(i64, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64
  %empty_33 = shl i64 1, %empty
  %empty_34 = and i64 %0, %empty_33
  %empty_35 = icmp ne i64 %empty_34, 0
  ret i1 %empty_35
}

define weak i1 @_ssdm_op_BitSelect.i1.i2.i32(i2, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i2
  %empty_36 = shl i2 1, %empty
  %empty_37 = and i2 %0, %empty_36
  %empty_38 = icmp ne i2 %empty_37, 0
  ret i1 %empty_38
}

define weak i512 @_ssdm_op_BitConcatenate.i512.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32.i32(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) nounwind readnone {
entry:
  %empty = zext i32 %14 to i64
  %empty_39 = zext i32 %15 to i64
  %empty_40 = shl i64 %empty, 32
  %empty_41 = or i64 %empty_40, %empty_39
  %empty_42 = zext i32 %13 to i96
  %empty_43 = zext i64 %empty_41 to i96
  %empty_44 = shl i96 %empty_42, 64
  %empty_45 = or i96 %empty_44, %empty_43
  %empty_46 = zext i32 %12 to i128
  %empty_47 = zext i96 %empty_45 to i128
  %empty_48 = shl i128 %empty_46, 96
  %empty_49 = or i128 %empty_48, %empty_47
  %empty_50 = zext i32 %11 to i160
  %empty_51 = zext i128 %empty_49 to i160
  %empty_52 = shl i160 %empty_50, 128
  %empty_53 = or i160 %empty_52, %empty_51
  %empty_54 = zext i32 %10 to i192
  %empty_55 = zext i160 %empty_53 to i192
  %empty_56 = shl i192 %empty_54, 160
  %empty_57 = or i192 %empty_56, %empty_55
  %empty_58 = zext i32 %9 to i224
  %empty_59 = zext i192 %empty_57 to i224
  %empty_60 = shl i224 %empty_58, 192
  %empty_61 = or i224 %empty_60, %empty_59
  %empty_62 = zext i32 %8 to i256
  %empty_63 = zext i224 %empty_61 to i256
  %empty_64 = shl i256 %empty_62, 224
  %empty_65 = or i256 %empty_64, %empty_63
  %empty_66 = zext i32 %7 to i288
  %empty_67 = zext i256 %empty_65 to i288
  %empty_68 = shl i288 %empty_66, 256
  %empty_69 = or i288 %empty_68, %empty_67
  %empty_70 = zext i32 %6 to i320
  %empty_71 = zext i288 %empty_69 to i320
  %empty_72 = shl i320 %empty_70, 288
  %empty_73 = or i320 %empty_72, %empty_71
  %empty_74 = zext i32 %5 to i352
  %empty_75 = zext i320 %empty_73 to i352
  %empty_76 = shl i352 %empty_74, 320
  %empty_77 = or i352 %empty_76, %empty_75
  %empty_78 = zext i32 %4 to i384
  %empty_79 = zext i352 %empty_77 to i384
  %empty_80 = shl i384 %empty_78, 352
  %empty_81 = or i384 %empty_80, %empty_79
  %empty_82 = zext i32 %3 to i416
  %empty_83 = zext i384 %empty_81 to i416
  %empty_84 = shl i416 %empty_82, 384
  %empty_85 = or i416 %empty_84, %empty_83
  %empty_86 = zext i32 %2 to i448
  %empty_87 = zext i416 %empty_85 to i448
  %empty_88 = shl i448 %empty_86, 416
  %empty_89 = or i448 %empty_88, %empty_87
  %empty_90 = zext i32 %1 to i480
  %empty_91 = zext i448 %empty_89 to i480
  %empty_92 = shl i480 %empty_90, 448
  %empty_93 = or i480 %empty_92, %empty_91
  %empty_94 = zext i32 %0 to i512
  %empty_95 = zext i480 %empty_93 to i512
  %empty_96 = shl i512 %empty_94, 480
  %empty_97 = or i512 %empty_96, %empty_95
  ret i512 %empty_97
}

define weak i36 @_ssdm_op_BitConcatenate.i36.i32.i4(i32, i4) nounwind readnone {
entry:
  %empty = zext i32 %0 to i36
  %empty_98 = zext i4 %1 to i36
  %empty_99 = shl i36 %empty, 4
  %empty_100 = or i36 %empty_99, %empty_98
  ret i36 %empty_100
}

define weak i18 @_ssdm_op_BitConcatenate.i18.i14.i4(i14, i4) nounwind readnone {
entry:
  %empty = zext i14 %0 to i18
  %empty_101 = zext i4 %1 to i18
  %empty_102 = shl i18 %empty, 4
  %empty_103 = or i18 %empty_102, %empty_101
  ret i18 %empty_103
}

declare void @_ssdm_SpecDependence(...) nounwind

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !13, !13, !15, !21, !21, !15, !15, !23, !26, !15, !15, !15, !32, !32, !13, !13, !34, !15, !15, !15, !36, !36, !15, !38, !38, !38, !15, !15, !15, !15, !15, !41, !44, !44, !50, !50, !50, !15, !15, !15, !41, !52, !52, !54, !54, !56, !15, !58, !58, !15, !15, !58, !58, !15, !15, !15, !60, !60, !15, !15, !15, !62, !65, !65, !66, !15, !15, !15, !13, !13, !68, !68, !15, !70, !72, !15, !15, !15, !13, !13, !74, !74, !15, !76, !78, !78, !15, !79, !15, !15, !15, !81, !81, !83, !83, !15, !15, !60, !60, !15, !15, !60, !60, !15, !15, !85, !87, !60, !60, !15, !15, !15, !15, !15, !15}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!88}
!axi4.master.portmap = !{!95, !96, !97, !98}
!axi4.slave.bundlemap = !{!99, !100, !101, !102, !103, !104}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"uint32_t", metadata !"insn_T*", metadata !"uop_T*", metadata !"inp_vec_T*", metadata !"wgt_vec_T*", metadata !"acc_vec_T*", metadata !"acc_vec_T*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"volatile", metadata !"volatile", metadata !"volatile", metadata !"volatile", metadata !"volatile", metadata !"volatile"}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"insn_count", metadata !"insns", metadata !"uops", metadata !"inputs", metadata !"weights", metadata !"biases", metadata !"outputs"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!13 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !14, metadata !6}
!14 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!15 = metadata !{null, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !6}
!16 = metadata !{metadata !"kernel_arg_addr_space"}
!17 = metadata !{metadata !"kernel_arg_access_qual"}
!18 = metadata !{metadata !"kernel_arg_type"}
!19 = metadata !{metadata !"kernel_arg_type_qual"}
!20 = metadata !{metadata !"kernel_arg_name"}
!21 = metadata !{null, metadata !8, metadata !9, metadata !22, metadata !11, metadata !14, metadata !6}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!23 = metadata !{null, metadata !8, metadata !9, metadata !24, metadata !11, metadata !25, metadata !6}
!24 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<32> &"}
!25 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!26 = metadata !{null, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !6}
!27 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!28 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<16, true> &"}
!30 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!31 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!32 = metadata !{null, metadata !8, metadata !9, metadata !33, metadata !11, metadata !14, metadata !6}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, true> &"}
!34 = metadata !{null, metadata !27, metadata !28, metadata !35, metadata !30, metadata !31, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, true> &", metadata !"const ap_int_base<8, true> &"}
!36 = metadata !{null, metadata !8, metadata !9, metadata !37, metadata !11, metadata !14, metadata !6}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, true> &"}
!38 = metadata !{null, metadata !8, metadata !9, metadata !39, metadata !11, metadata !40, metadata !6}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<128, false> &"}
!40 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!41 = metadata !{null, metadata !27, metadata !28, metadata !42, metadata !30, metadata !43, metadata !6}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!43 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!44 = metadata !{null, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !6}
!45 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!46 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!47 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<128, false>*", metadata !"int", metadata !"int"}
!48 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!49 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!50 = metadata !{null, metadata !8, metadata !9, metadata !51, metadata !11, metadata !40, metadata !6}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<512, false> &"}
!52 = metadata !{null, metadata !45, metadata !46, metadata !53, metadata !48, metadata !49, metadata !6}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<512, false>*", metadata !"int", metadata !"int"}
!54 = metadata !{null, metadata !8, metadata !9, metadata !55, metadata !11, metadata !12, metadata !6}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!56 = metadata !{null, metadata !8, metadata !9, metadata !57, metadata !11, metadata !25, metadata !6}
!57 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<512> &"}
!58 = metadata !{null, metadata !8, metadata !9, metadata !59, metadata !11, metadata !12, metadata !6}
!59 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!60 = metadata !{null, metadata !8, metadata !9, metadata !61, metadata !11, metadata !12, metadata !6}
!61 = metadata !{metadata !"kernel_arg_type", metadata !"ulong"}
!62 = metadata !{null, metadata !27, metadata !28, metadata !63, metadata !30, metadata !64, metadata !6}
!63 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, false> &", metadata !"int"}
!64 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!65 = metadata !{null, metadata !8, metadata !9, metadata !55, metadata !11, metadata !14, metadata !6}
!66 = metadata !{null, metadata !27, metadata !28, metadata !67, metadata !30, metadata !31, metadata !6}
!67 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, false> &", metadata !"const ap_int_base<32, true> &"}
!68 = metadata !{null, metadata !8, metadata !9, metadata !69, metadata !11, metadata !14, metadata !6}
!69 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, false> &"}
!70 = metadata !{null, metadata !27, metadata !28, metadata !71, metadata !30, metadata !64, metadata !6}
!71 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"int"}
!72 = metadata !{null, metadata !27, metadata !28, metadata !73, metadata !30, metadata !31, metadata !6}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"const ap_int_base<32, true> &"}
!74 = metadata !{null, metadata !8, metadata !9, metadata !75, metadata !11, metadata !14, metadata !6}
!75 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!76 = metadata !{null, metadata !27, metadata !28, metadata !77, metadata !30, metadata !64, metadata !6}
!77 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<14, false> &", metadata !"ulong"}
!78 = metadata !{null, metadata !8, metadata !9, metadata !61, metadata !11, metadata !14, metadata !6}
!79 = metadata !{null, metadata !27, metadata !28, metadata !80, metadata !30, metadata !31, metadata !6}
!80 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<14, false> &", metadata !"const ap_int_base<64, false> &"}
!81 = metadata !{null, metadata !8, metadata !9, metadata !82, metadata !11, metadata !14, metadata !6}
!82 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &"}
!83 = metadata !{null, metadata !8, metadata !9, metadata !84, metadata !11, metadata !14, metadata !6}
!84 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<14, false> &"}
!85 = metadata !{null, metadata !27, metadata !28, metadata !86, metadata !30, metadata !31, metadata !6}
!86 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<2, false> &", metadata !"int"}
!87 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !25, metadata !6}
!88 = metadata !{metadata !89, [1 x i32]* @llvm_global_ctors_0}
!89 = metadata !{metadata !90}
!90 = metadata !{i32 0, i32 31, metadata !91}
!91 = metadata !{metadata !92}
!92 = metadata !{metadata !"llvm.global_ctors.0", metadata !93, metadata !"", i32 0, i32 31}
!93 = metadata !{metadata !94}
!94 = metadata !{i32 0, i32 0, i32 1}
!95 = metadata !{metadata !"ins_port", metadata !"insns", metadata !"READONLY"}
!96 = metadata !{metadata !"uop_port", metadata !"uops", metadata !"READONLY"}
!97 = metadata !{metadata !"narrow_port", metadata !"inputs.V", metadata !"READONLY", metadata !"weights.V", metadata !"READONLY"}
!98 = metadata !{metadata !"wide_port", metadata !"biases.V", metadata !"READONLY", metadata !"outputs.V", metadata !"WRITEONLY"}
!99 = metadata !{metadata !"insns", metadata !""}
!100 = metadata !{metadata !"uops", metadata !""}
!101 = metadata !{metadata !"inputs.V", metadata !""}
!102 = metadata !{metadata !"weights.V", metadata !""}
!103 = metadata !{metadata !"biases.V", metadata !""}
!104 = metadata !{metadata !"outputs.V", metadata !""}
!105 = metadata !{metadata !106}
!106 = metadata !{i32 0, i32 511, metadata !107}
!107 = metadata !{metadata !108, metadata !109}
!108 = metadata !{metadata !"biases.V", metadata !93, metadata !"uint512", i32 0, i32 511}
!109 = metadata !{metadata !"outputs.V", metadata !93, metadata !"uint512", i32 0, i32 511}
!110 = metadata !{metadata !111}
!111 = metadata !{i32 0, i32 127, metadata !112}
!112 = metadata !{metadata !113, metadata !114}
!113 = metadata !{metadata !"inputs.V", metadata !93, metadata !"uint128", i32 0, i32 127}
!114 = metadata !{metadata !"weights.V", metadata !93, metadata !"uint128", i32 0, i32 127}
!115 = metadata !{metadata !116}
!116 = metadata !{i32 0, i32 31, metadata !117}
!117 = metadata !{metadata !118}
!118 = metadata !{metadata !"uops", metadata !93, metadata !"unsigned int", i32 0, i32 31}
!119 = metadata !{metadata !120}
!120 = metadata !{i32 0, i32 63, metadata !121}
!121 = metadata !{metadata !122}
!122 = metadata !{metadata !"insns", metadata !93, metadata !"long unsigned int", i32 0, i32 63}
!123 = metadata !{metadata !124}
!124 = metadata !{i32 0, i32 31, metadata !125}
!125 = metadata !{metadata !126}
!126 = metadata !{metadata !"insn_count", metadata !127, metadata !"unsigned int", i32 0, i32 31}
!127 = metadata !{metadata !128}
!128 = metadata !{i32 0, i32 0, i32 0}

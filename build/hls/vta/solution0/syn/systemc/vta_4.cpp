#include "vta.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void vta::thread_ac_idx_V_fu_1539_p1() {
    ac_idx_V_fu_1539_p1 = uop_mem_q0.read().range(11-1, 0);
}

void vta::thread_acc_mem_0_V_addr_1_gep_fu_882_p3() {
    acc_mem_0_V_addr_1_gep_fu_882_p3 =  (sc_lv<11>) (tmp_23_fu_1543_p1.read());
}

void vta::thread_acc_mem_0_V_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00000000.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, reset_acc_reg_8827.read()))) {
        acc_mem_0_V_address0 = acc_mem_0_V_addr_1_gep_fu_882_p3.read();
    } else if ((esl_seteq<1,1,1>(ap_const_lv1_0, reset_acc_reg_8827.read()) && 
                esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00000000.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read()))) {
        acc_mem_0_V_address0 =  (sc_lv<11>) (tmp_23_fu_1543_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp1_stage0_flag00000000.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter2.read()))) {
        acc_mem_0_V_address0 =  (sc_lv<11>) (tmp_43_fu_1303_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00000000.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()))) {
        acc_mem_0_V_address0 =  (sc_lv<11>) (tmp_20_fu_1262_p1.read());
    } else {
        acc_mem_0_V_address0 = "XXXXXXXXXXX";
    }
}

void vta::thread_acc_mem_0_V_address1() {
    acc_mem_0_V_address1 = ap_reg_pp5_iter10_acc_mem_0_V_addr_2_reg_8870.read();
}

void vta::thread_acc_mem_0_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp1_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter2.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, reset_acc_reg_8827.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, reset_acc_reg_8827.read())))) {
        acc_mem_0_V_ce0 = ap_const_logic_1;
    } else {
        acc_mem_0_V_ce0 = ap_const_logic_0;
    }
}

void vta::thread_acc_mem_0_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter11.read()))) {
        acc_mem_0_V_ce1 = ap_const_logic_1;
    } else {
        acc_mem_0_V_ce1 = ap_const_logic_0;
    }
}

void vta::thread_acc_mem_0_V_d0() {
    if ((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00000000.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, reset_acc_reg_8827.read()))) {
        acc_mem_0_V_d0 = ap_const_lv512_lc_1;
    } else if ((esl_seteq<1,1,1>(ap_block_pp1_stage0_flag00000000.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter2.read()))) {
        acc_mem_0_V_d0 = wide_port_addr_1_rea_reg_8720.read();
    } else {
        acc_mem_0_V_d0 =  (sc_lv<512>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void vta::thread_acc_mem_0_V_d1() {
    acc_mem_0_V_d1 = esl_concat<480,32>(esl_concat<448,32>(esl_concat<416,32>(esl_concat<384,32>(esl_concat<352,32>(esl_concat<320,32>(esl_concat<288,32>(esl_concat<256,32>(esl_concat<224,32>(esl_concat<192,32>(esl_concat<160,32>(esl_concat<128,32>(esl_concat<96,32>(esl_concat<64,32>(esl_concat<32,32>(temp_V_1_0_15_s_reg_12776.read(), temp_V_1_0_14_s_reg_12771.read()), temp_V_1_0_13_s_reg_12766.read()), temp_V_1_0_12_s_reg_12761.read()), temp_V_1_0_11_s_reg_12756.read()), temp_V_1_0_10_s_reg_12751.read()), temp_V_1_0_9_s_reg_12746.read()), temp_V_1_0_8_s_reg_12741.read()), temp_V_1_0_7_s_reg_12736.read()), temp_V_1_0_6_s_reg_12731.read()), temp_V_1_0_5_s_reg_12726.read()), temp_V_1_0_4_s_reg_12721.read()), temp_V_1_0_3_s_reg_12716.read()), temp_V_1_0_2_s_reg_12711.read()), temp_V_1_0_1_s_reg_12706.read()), temp_V_1_0_0_s_reg_12701.read());
}

void vta::thread_acc_mem_0_V_we0() {
    if (((esl_seteq<1,1,1>(ap_block_pp1_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter2.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp1_iter1_exitcond5_reg_8706.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, reset_acc_reg_8827.read())))) {
        acc_mem_0_V_we0 = ap_const_logic_1;
    } else {
        acc_mem_0_V_we0 = ap_const_logic_0;
    }
}

void vta::thread_acc_mem_0_V_we1() {
    if ((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, reset_acc_reg_8827.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter11.read()))) {
        acc_mem_0_V_we1 = ap_const_logic_1;
    } else {
        acc_mem_0_V_we1 = ap_const_logic_0;
    }
}

void vta::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[11];
}

void vta::thread_ap_CS_fsm_pp1_stage0() {
    ap_CS_fsm_pp1_stage0 = ap_CS_fsm.read()[24];
}

void vta::thread_ap_CS_fsm_pp2_stage0() {
    ap_CS_fsm_pp2_stage0 = ap_CS_fsm.read()[33];
}

void vta::thread_ap_CS_fsm_pp3_stage0() {
    ap_CS_fsm_pp3_stage0 = ap_CS_fsm.read()[41];
}

void vta::thread_ap_CS_fsm_pp4_stage0() {
    ap_CS_fsm_pp4_stage0 = ap_CS_fsm.read()[49];
}

void vta::thread_ap_CS_fsm_pp5_stage0() {
    ap_CS_fsm_pp5_stage0 = ap_CS_fsm.read()[51];
}

void vta::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void vta::thread_ap_CS_fsm_state10() {
    ap_CS_fsm_state10 = ap_CS_fsm.read()[9];
}

void vta::thread_ap_CS_fsm_state11() {
    ap_CS_fsm_state11 = ap_CS_fsm.read()[10];
}

void vta::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void vta::thread_ap_CS_fsm_state20() {
    ap_CS_fsm_state20 = ap_CS_fsm.read()[16];
}

void vta::thread_ap_CS_fsm_state21() {
    ap_CS_fsm_state21 = ap_CS_fsm.read()[17];
}

void vta::thread_ap_CS_fsm_state27() {
    ap_CS_fsm_state27 = ap_CS_fsm.read()[23];
}

void vta::thread_ap_CS_fsm_state31() {
    ap_CS_fsm_state31 = ap_CS_fsm.read()[25];
}

void vta::thread_ap_CS_fsm_state32() {
    ap_CS_fsm_state32 = ap_CS_fsm.read()[26];
}

void vta::thread_ap_CS_fsm_state38() {
    ap_CS_fsm_state38 = ap_CS_fsm.read()[32];
}

void vta::thread_ap_CS_fsm_state42() {
    ap_CS_fsm_state42 = ap_CS_fsm.read()[34];
}

void vta::thread_ap_CS_fsm_state48() {
    ap_CS_fsm_state48 = ap_CS_fsm.read()[40];
}

void vta::thread_ap_CS_fsm_state52() {
    ap_CS_fsm_state52 = ap_CS_fsm.read()[42];
}

void vta::thread_ap_CS_fsm_state58() {
    ap_CS_fsm_state58 = ap_CS_fsm.read()[48];
}

void vta::thread_ap_CS_fsm_state62() {
    ap_CS_fsm_state62 = ap_CS_fsm.read()[50];
}

void vta::thread_ap_CS_fsm_state8() {
    ap_CS_fsm_state8 = ap_CS_fsm.read()[7];
}

void vta::thread_ap_CS_fsm_state9() {
    ap_CS_fsm_state9 = ap_CS_fsm.read()[8];
}

void vta::thread_ap_block_pp0() {
    ap_block_pp0 = esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_pp0_stage0_flag00011011.read());
}

void vta::thread_ap_block_pp0_stage0_flag00000000() {
    ap_block_pp0_stage0_flag00000000 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void vta::thread_ap_block_pp0_stage0_flag00001001() {
    ap_block_pp0_stage0_flag00001001 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void vta::thread_ap_block_pp0_stage0_flag00011001() {
    ap_block_pp0_stage0_flag00011001 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state15_io.read()));
}

void vta::thread_ap_block_pp0_stage0_flag00011011() {
    ap_block_pp0_stage0_flag00011011 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_state15_io.read()));
}

void vta::thread_ap_block_pp1() {
    ap_block_pp1 = esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_pp1_stage0_flag00011011.read());
}

void vta::thread_ap_block_pp1_stage0_flag00000000() {
    ap_block_pp1_stage0_flag00000000 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void vta::thread_ap_block_pp1_stage0_flag00011001() {
    ap_block_pp1_stage0_flag00011001 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond5_reg_8706.read()) && esl_seteq<1,1,1>(ap_const_logic_0, wide_port_RVALID.read()));
}

void vta::thread_ap_block_pp1_stage0_flag00011011() {
    ap_block_pp1_stage0_flag00011011 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond5_reg_8706.read()) && esl_seteq<1,1,1>(ap_const_logic_0, wide_port_RVALID.read()));
}

void vta::thread_ap_block_pp2() {
    ap_block_pp2 = esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_pp2_stage0_flag00011011.read());
}

void vta::thread_ap_block_pp2_stage0_flag00000000() {
    ap_block_pp2_stage0_flag00000000 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void vta::thread_ap_block_pp2_stage0_flag00011001() {
    ap_block_pp2_stage0_flag00011001 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter1.read()) && esl_seteq<1,1,1>(ap_const_logic_0, narrow_port_RVALID.read()));
}

void vta::thread_ap_block_pp2_stage0_flag00011011() {
    ap_block_pp2_stage0_flag00011011 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter1.read()) && esl_seteq<1,1,1>(ap_const_logic_0, narrow_port_RVALID.read()));
}

void vta::thread_ap_block_pp3() {
    ap_block_pp3 = esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_pp3_stage0_flag00011011.read());
}

void vta::thread_ap_block_pp3_stage0_flag00000000() {
    ap_block_pp3_stage0_flag00000000 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void vta::thread_ap_block_pp3_stage0_flag00011001() {
    ap_block_pp3_stage0_flag00011001 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp3_iter1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond3_reg_8780.read()) && esl_seteq<1,1,1>(ap_const_logic_0, narrow_port_RVALID.read()));
}

void vta::thread_ap_block_pp3_stage0_flag00011011() {
    ap_block_pp3_stage0_flag00011011 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp3_iter1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond3_reg_8780.read()) && esl_seteq<1,1,1>(ap_const_logic_0, narrow_port_RVALID.read()));
}

void vta::thread_ap_block_pp4() {
    ap_block_pp4 = esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_pp4_stage0_flag00011011.read());
}

void vta::thread_ap_block_pp4_stage0_flag00000000() {
    ap_block_pp4_stage0_flag00000000 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void vta::thread_ap_block_pp4_stage0_flag00011001() {
    ap_block_pp4_stage0_flag00011001 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp4_iter1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_8804.read()) && esl_seteq<1,1,1>(ap_const_logic_0, uop_port_RVALID.read()));
}

void vta::thread_ap_block_pp4_stage0_flag00011011() {
    ap_block_pp4_stage0_flag00011011 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp4_iter1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_8804.read()) && esl_seteq<1,1,1>(ap_const_logic_0, uop_port_RVALID.read()));
}

void vta::thread_ap_block_pp5() {
    ap_block_pp5 = esl_seteq<1,1,1>(ap_const_boolean_1, ap_block_pp5_stage0_flag00011011.read());
}

void vta::thread_ap_block_pp5_stage0_flag00000000() {
    ap_block_pp5_stage0_flag00000000 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void vta::thread_ap_block_pp5_stage0_flag00011001() {
    ap_block_pp5_stage0_flag00011001 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void vta::thread_ap_block_pp5_stage0_flag00011011() {
    ap_block_pp5_stage0_flag00011011 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void vta::thread_ap_block_state12_pp0_stage0_iter0() {
    ap_block_state12_pp0_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void vta::thread_ap_block_state13_pp0_stage0_iter1() {
    ap_block_state13_pp0_stage0_iter1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void vta::thread_ap_block_state14_pp0_stage0_iter2() {
    ap_block_state14_pp0_stage0_iter2 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void vta::thread_ap_block_state15_io() {
    ap_block_state15_io = (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond_reg_8666.read()) && esl_seteq<1,1,1>(ap_const_logic_0, ap_sig_ioackin_wide_port_WREADY.read()));
}

void vta::thread_ap_block_state15_pp0_stage0_iter3() {
    ap_block_state15_pp0_stage0_iter3 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void vta::thread_ap_block_state28_pp1_stage0_iter0() {
    ap_block_state28_pp1_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void vta::thread_ap_block_state29_pp1_stage0_iter1() {
    ap_block_state29_pp1_stage0_iter1 = (esl_seteq<1,1,1>(ap_const_lv1_0, exitcond5_reg_8706.read()) && esl_seteq<1,1,1>(ap_const_logic_0, wide_port_RVALID.read()));
}

void vta::thread_ap_block_state30_pp1_stage0_iter2() {
    ap_block_state30_pp1_stage0_iter2 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void vta::thread_ap_block_state39_pp2_stage0_iter0() {
    ap_block_state39_pp2_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void vta::thread_ap_block_state40_pp2_stage0_iter1() {
    ap_block_state40_pp2_stage0_iter1 = esl_seteq<1,1,1>(ap_const_logic_0, narrow_port_RVALID.read());
}

void vta::thread_ap_block_state41_pp2_stage0_iter2() {
    ap_block_state41_pp2_stage0_iter2 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void vta::thread_ap_block_state49_pp3_stage0_iter0() {
    ap_block_state49_pp3_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void vta::thread_ap_block_state50_pp3_stage0_iter1() {
    ap_block_state50_pp3_stage0_iter1 = (esl_seteq<1,1,1>(ap_const_lv1_0, exitcond3_reg_8780.read()) && esl_seteq<1,1,1>(ap_const_logic_0, narrow_port_RVALID.read()));
}

void vta::thread_ap_block_state51_pp3_stage0_iter2() {
    ap_block_state51_pp3_stage0_iter2 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void vta::thread_ap_block_state59_pp4_stage0_iter0() {
    ap_block_state59_pp4_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void vta::thread_ap_block_state60_pp4_stage0_iter1() {
    ap_block_state60_pp4_stage0_iter1 = (esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_8804.read()) && esl_seteq<1,1,1>(ap_const_logic_0, uop_port_RVALID.read()));
}

void vta::thread_ap_block_state61_pp4_stage0_iter2() {
    ap_block_state61_pp4_stage0_iter2 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void vta::thread_ap_block_state63_pp5_stage0_iter0() {
    ap_block_state63_pp5_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void vta::thread_ap_block_state64_pp5_stage0_iter1() {
    ap_block_state64_pp5_stage0_iter1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void vta::thread_ap_block_state65_pp5_stage0_iter2() {
    ap_block_state65_pp5_stage0_iter2 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void vta::thread_ap_block_state66_pp5_stage0_iter3() {
    ap_block_state66_pp5_stage0_iter3 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void vta::thread_ap_block_state67_pp5_stage0_iter4() {
    ap_block_state67_pp5_stage0_iter4 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void vta::thread_ap_block_state68_pp5_stage0_iter5() {
    ap_block_state68_pp5_stage0_iter5 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void vta::thread_ap_block_state69_pp5_stage0_iter6() {
    ap_block_state69_pp5_stage0_iter6 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void vta::thread_ap_block_state70_pp5_stage0_iter7() {
    ap_block_state70_pp5_stage0_iter7 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void vta::thread_ap_block_state71_pp5_stage0_iter8() {
    ap_block_state71_pp5_stage0_iter8 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void vta::thread_ap_block_state72_pp5_stage0_iter9() {
    ap_block_state72_pp5_stage0_iter9 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void vta::thread_ap_block_state73_pp5_stage0_iter10() {
    ap_block_state73_pp5_stage0_iter10 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void vta::thread_ap_block_state74_pp5_stage0_iter11() {
    ap_block_state74_pp5_stage0_iter11 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void vta::thread_ap_block_state9() {
    ap_block_state9 = (esl_seteq<1,1,1>(exitcond1_fu_1074_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, ins_port_RVALID.read()));
}

void vta::thread_ap_condition_pp0_exit_iter0_state12() {
    if (esl_seteq<1,1,1>(ap_const_lv1_1, exitcond_fu_1242_p2.read())) {
        ap_condition_pp0_exit_iter0_state12 = ap_const_logic_1;
    } else {
        ap_condition_pp0_exit_iter0_state12 = ap_const_logic_0;
    }
}

void vta::thread_ap_condition_pp1_exit_iter0_state28() {
    if (esl_seteq<1,1,1>(ap_const_lv1_1, exitcond5_fu_1283_p2.read())) {
        ap_condition_pp1_exit_iter0_state28 = ap_const_logic_1;
    } else {
        ap_condition_pp1_exit_iter0_state28 = ap_const_logic_0;
    }
}

void vta::thread_ap_condition_pp2_exit_iter0_state39() {
    if (esl_seteq<1,1,1>(ap_const_lv1_1, exitcond4_fu_1340_p2.read())) {
        ap_condition_pp2_exit_iter0_state39 = ap_const_logic_1;
    } else {
        ap_condition_pp2_exit_iter0_state39 = ap_const_logic_0;
    }
}

void vta::thread_ap_condition_pp3_exit_iter0_state49() {
    if (esl_seteq<1,1,1>(ap_const_lv1_1, exitcond3_fu_1410_p2.read())) {
        ap_condition_pp3_exit_iter0_state49 = ap_const_logic_1;
    } else {
        ap_condition_pp3_exit_iter0_state49 = ap_const_logic_0;
    }
}

void vta::thread_ap_condition_pp4_exit_iter0_state59() {
    if (esl_seteq<1,1,1>(ap_const_lv1_1, exitcond2_fu_1441_p2.read())) {
        ap_condition_pp4_exit_iter0_state59 = ap_const_logic_1;
    } else {
        ap_condition_pp4_exit_iter0_state59 = ap_const_logic_0;
    }
}

void vta::thread_ap_condition_pp5_exit_iter0_state63() {
    if (esl_seteq<1,1,1>(ap_const_lv1_0, tmp_12_fu_1503_p2.read())) {
        ap_condition_pp5_exit_iter0_state63 = ap_const_logic_1;
    } else {
        ap_condition_pp5_exit_iter0_state63 = ap_const_logic_0;
    }
}

void vta::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()) && 
         !(esl_seteq<1,1,1>(exitcond1_fu_1074_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, ins_port_RVALID.read())) && 
         esl_seteq<1,1,1>(exitcond1_fu_1074_p2.read(), ap_const_lv1_1))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void vta::thread_ap_enable_operation_2194() {
    ap_enable_operation_2194 = esl_seteq<1,1,1>(ap_const_lv1_0, reset_acc_reg_8827.read());
}

void vta::thread_ap_enable_operation_411() {
    ap_enable_operation_411 = esl_seteq<1,1,1>(ap_const_lv1_0, reset_acc_reg_8827.read());
}

void vta::thread_ap_enable_operation_445() {
    ap_enable_operation_445 = esl_seteq<1,1,1>(ap_const_lv1_1, reset_acc_reg_8827.read());
}

void vta::thread_ap_enable_operation_448() {
    ap_enable_operation_448 = esl_seteq<1,1,1>(ap_const_lv1_0, reset_acc_reg_8827.read());
}

void vta::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void vta::thread_ap_enable_pp1() {
    ap_enable_pp1 = (ap_idle_pp1.read() ^ ap_const_logic_1);
}

void vta::thread_ap_enable_pp2() {
    ap_enable_pp2 = (ap_idle_pp2.read() ^ ap_const_logic_1);
}

void vta::thread_ap_enable_pp3() {
    ap_enable_pp3 = (ap_idle_pp3.read() ^ ap_const_logic_1);
}

void vta::thread_ap_enable_pp4() {
    ap_enable_pp4 = (ap_idle_pp4.read() ^ ap_const_logic_1);
}

void vta::thread_ap_enable_pp5() {
    ap_enable_pp5 = (ap_idle_pp5.read() ^ ap_const_logic_1);
}

void vta::thread_ap_enable_state65_pp5_iter2_stage0() {
    ap_enable_state65_pp5_iter2_stage0 = (esl_seteq<1,1,1>(ap_enable_reg_pp5_iter2.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_CS_fsm_pp5_stage0.read(), ap_const_logic_1));
}

void vta::thread_ap_enable_state66_pp5_iter3_stage0() {
    ap_enable_state66_pp5_iter3_stage0 = (esl_seteq<1,1,1>(ap_CS_fsm_pp5_stage0.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_enable_reg_pp5_iter3.read(), ap_const_logic_1));
}

void vta::thread_ap_enable_state74_pp5_iter11_stage0() {
    ap_enable_state74_pp5_iter11_stage0 = (esl_seteq<1,1,1>(ap_CS_fsm_pp5_stage0.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_enable_reg_pp5_iter11.read(), ap_const_logic_1));
}

void vta::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void vta::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter3.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void vta::thread_ap_idle_pp1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp1_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp1_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp1_iter2.read()))) {
        ap_idle_pp1 = ap_const_logic_1;
    } else {
        ap_idle_pp1 = ap_const_logic_0;
    }
}

void vta::thread_ap_idle_pp2() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp2_iter2.read()))) {
        ap_idle_pp2 = ap_const_logic_1;
    } else {
        ap_idle_pp2 = ap_const_logic_0;
    }
}

void vta::thread_ap_idle_pp3() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp3_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp3_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp3_iter2.read()))) {
        ap_idle_pp3 = ap_const_logic_1;
    } else {
        ap_idle_pp3 = ap_const_logic_0;
    }
}

void vta::thread_ap_idle_pp4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp4_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp4_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp4_iter2.read()))) {
        ap_idle_pp4 = ap_const_logic_1;
    } else {
        ap_idle_pp4 = ap_const_logic_0;
    }
}

void vta::thread_ap_idle_pp5() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp5_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp5_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp5_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp5_iter3.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp5_iter4.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp5_iter5.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp5_iter6.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp5_iter7.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp5_iter8.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp5_iter9.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp5_iter10.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp5_iter11.read()))) {
        ap_idle_pp5 = ap_const_logic_1;
    } else {
        ap_idle_pp5 = ap_const_logic_0;
    }
}

void vta::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()) && 
         !(esl_seteq<1,1,1>(exitcond1_fu_1074_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, ins_port_RVALID.read())) && 
         esl_seteq<1,1,1>(exitcond1_fu_1074_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void vta::thread_ap_rst_n_inv() {
    ap_rst_n_inv =  (sc_logic) (~ap_rst_n.read());
}

void vta::thread_ap_sig_ioackin_ins_port_ARREADY() {
    if (esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_ins_port_ARREADY.read())) {
        ap_sig_ioackin_ins_port_ARREADY = ins_port_ARREADY.read();
    } else {
        ap_sig_ioackin_ins_port_ARREADY = ap_const_logic_1;
    }
}

void vta::thread_ap_sig_ioackin_narrow_port_ARREADY() {
    if (esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_narrow_port_ARREADY.read())) {
        ap_sig_ioackin_narrow_port_ARREADY = narrow_port_ARREADY.read();
    } else {
        ap_sig_ioackin_narrow_port_ARREADY = ap_const_logic_1;
    }
}

void vta::thread_ap_sig_ioackin_uop_port_ARREADY() {
    if (esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_uop_port_ARREADY.read())) {
        ap_sig_ioackin_uop_port_ARREADY = uop_port_ARREADY.read();
    } else {
        ap_sig_ioackin_uop_port_ARREADY = ap_const_logic_1;
    }
}

void vta::thread_ap_sig_ioackin_wide_port_ARREADY() {
    if (esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_wide_port_ARREADY.read())) {
        ap_sig_ioackin_wide_port_ARREADY = wide_port_ARREADY.read();
    } else {
        ap_sig_ioackin_wide_port_ARREADY = ap_const_logic_1;
    }
}

void vta::thread_ap_sig_ioackin_wide_port_AWREADY() {
    if (esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_wide_port_AWREADY.read())) {
        ap_sig_ioackin_wide_port_AWREADY = wide_port_AWREADY.read();
    } else {
        ap_sig_ioackin_wide_port_AWREADY = ap_const_logic_1;
    }
}

void vta::thread_ap_sig_ioackin_wide_port_WREADY() {
    if (esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_wide_port_WREADY.read())) {
        ap_sig_ioackin_wide_port_WREADY = wide_port_WREADY.read();
    } else {
        ap_sig_ioackin_wide_port_WREADY = ap_const_logic_1;
    }
}

void vta::thread_biases_V10_sum_cast_fu_1266_p1() {
    biases_V10_sum_cast_fu_1266_p1 = esl_zext<64,33>(biases_V10_sum_reg_8635.read());
}

void vta::thread_biases_V10_sum_fu_1175_p2() {
    biases_V10_sum_fu_1175_p2 = (!lhs_V_4_cast_fu_1171_p1.read().is_01() || !tmp_3_cast_reg_8539.read().is_01())? sc_lv<33>(): (sc_biguint<33>(lhs_V_4_cast_fu_1171_p1.read()) + sc_biguint<33>(tmp_3_cast_reg_8539.read()));
}

void vta::thread_dram_base_V_fu_1115_p4() {
    dram_base_V_fu_1115_p4 = insn_reg_8567.read().range(49, 18);
}

void vta::thread_exitcond1_fu_1074_p2() {
    exitcond1_fu_1074_p2 = (!pc_reg_893.read().is_01() || !insn_count_read_reg_8492.read().is_01())? sc_lv<1>(): sc_lv<1>(pc_reg_893.read() == insn_count_read_reg_8492.read());
}

void vta::thread_exitcond2_fu_1441_p2() {
    exitcond2_fu_1441_p2 = (!indvar_reg_948.read().is_01() || !size_V_reg_8597.read().is_01())? sc_lv<1>(): sc_lv<1>(indvar_reg_948.read() == size_V_reg_8597.read());
}

void vta::thread_exitcond3_fu_1410_p2() {
    exitcond3_fu_1410_p2 = (!indvar2_reg_937.read().is_01() || !size_V_reg_8597.read().is_01())? sc_lv<1>(): sc_lv<1>(indvar2_reg_937.read() == size_V_reg_8597.read());
}

void vta::thread_exitcond4_fu_1340_p2() {
    exitcond4_fu_1340_p2 = (!indvar3_reg_926.read().is_01() || !tmp_36_add_i32_shr_reg_8731.read().is_01())? sc_lv<1>(): sc_lv<1>(indvar3_reg_926.read() == tmp_36_add_i32_shr_reg_8731.read());
}

void vta::thread_exitcond5_fu_1283_p2() {
    exitcond5_fu_1283_p2 = (!indvar4_reg_915.read().is_01() || !size_V_reg_8597.read().is_01())? sc_lv<1>(): sc_lv<1>(indvar4_reg_915.read() == size_V_reg_8597.read());
}

void vta::thread_exitcond_fu_1242_p2() {
    exitcond_fu_1242_p2 = (!indvar1_reg_904.read().is_01() || !size_V_reg_8597.read().is_01())? sc_lv<1>(): sc_lv<1>(indvar1_reg_904.read() == size_V_reg_8597.read());
}

void vta::thread_grp_fu_4355_p1() {
    grp_fu_4355_p1 =  (sc_lv<8>) (lhs_V_2_0_0_1_fu_4349_p1.read());
}

void vta::thread_grp_fu_4367_p1() {
    grp_fu_4367_p1 =  (sc_lv<8>) (lhs_V_2_0_0_3_fu_4361_p1.read());
}

void vta::thread_grp_fu_4379_p1() {
    grp_fu_4379_p1 =  (sc_lv<8>) (lhs_V_2_0_0_5_fu_4373_p1.read());
}

void vta::thread_grp_fu_4391_p1() {
    grp_fu_4391_p1 =  (sc_lv<8>) (lhs_V_2_0_0_7_fu_4385_p1.read());
}

void vta::thread_grp_fu_4403_p1() {
    grp_fu_4403_p1 =  (sc_lv<8>) (lhs_V_2_0_0_9_fu_4397_p1.read());
}

void vta::thread_grp_fu_4415_p1() {
    grp_fu_4415_p1 =  (sc_lv<8>) (lhs_V_2_0_0_13_fu_4409_p1.read());
}

void vta::thread_grp_fu_4427_p1() {
    grp_fu_4427_p1 =  (sc_lv<8>) (lhs_V_2_0_0_1_fu_4349_p1.read());
}

void vta::thread_grp_fu_4436_p1() {
    grp_fu_4436_p1 =  (sc_lv<8>) (lhs_V_2_0_0_3_fu_4361_p1.read());
}

void vta::thread_grp_fu_4445_p1() {
    grp_fu_4445_p1 =  (sc_lv<8>) (lhs_V_2_0_0_5_fu_4373_p1.read());
}

void vta::thread_grp_fu_4454_p1() {
    grp_fu_4454_p1 =  (sc_lv<8>) (lhs_V_2_0_0_7_fu_4385_p1.read());
}

void vta::thread_grp_fu_4463_p1() {
    grp_fu_4463_p1 =  (sc_lv<8>) (lhs_V_2_0_0_9_fu_4397_p1.read());
}

void vta::thread_grp_fu_4472_p1() {
    grp_fu_4472_p1 =  (sc_lv<8>) (lhs_V_2_0_0_13_fu_4409_p1.read());
}

void vta::thread_grp_fu_4484_p1() {
    grp_fu_4484_p1 =  (sc_lv<8>) (lhs_V_2_0_0_1_fu_4349_p1.read());
}

void vta::thread_grp_fu_4493_p1() {
    grp_fu_4493_p1 =  (sc_lv<8>) (lhs_V_2_0_0_3_fu_4361_p1.read());
}

void vta::thread_grp_fu_4502_p1() {
    grp_fu_4502_p1 =  (sc_lv<8>) (lhs_V_2_0_0_5_fu_4373_p1.read());
}

void vta::thread_grp_fu_4511_p1() {
    grp_fu_4511_p1 =  (sc_lv<8>) (lhs_V_2_0_0_7_fu_4385_p1.read());
}

void vta::thread_grp_fu_4520_p1() {
    grp_fu_4520_p1 =  (sc_lv<8>) (lhs_V_2_0_0_9_fu_4397_p1.read());
}

void vta::thread_grp_fu_4529_p1() {
    grp_fu_4529_p1 =  (sc_lv<8>) (lhs_V_2_0_0_13_fu_4409_p1.read());
}

void vta::thread_grp_fu_4541_p1() {
    grp_fu_4541_p1 =  (sc_lv<8>) (lhs_V_2_0_0_1_fu_4349_p1.read());
}

void vta::thread_grp_fu_4550_p1() {
    grp_fu_4550_p1 =  (sc_lv<8>) (lhs_V_2_0_0_3_fu_4361_p1.read());
}

void vta::thread_grp_fu_4559_p1() {
    grp_fu_4559_p1 =  (sc_lv<8>) (lhs_V_2_0_0_5_fu_4373_p1.read());
}

void vta::thread_grp_fu_4568_p1() {
    grp_fu_4568_p1 =  (sc_lv<8>) (lhs_V_2_0_0_7_fu_4385_p1.read());
}

void vta::thread_grp_fu_4577_p1() {
    grp_fu_4577_p1 =  (sc_lv<8>) (lhs_V_2_0_0_9_fu_4397_p1.read());
}

void vta::thread_grp_fu_4586_p1() {
    grp_fu_4586_p1 =  (sc_lv<8>) (lhs_V_2_0_0_13_fu_4409_p1.read());
}

void vta::thread_grp_fu_4598_p1() {
    grp_fu_4598_p1 =  (sc_lv<8>) (lhs_V_2_0_0_1_fu_4349_p1.read());
}

void vta::thread_grp_fu_4607_p1() {
    grp_fu_4607_p1 =  (sc_lv<8>) (lhs_V_2_0_0_3_fu_4361_p1.read());
}

void vta::thread_grp_fu_4616_p1() {
    grp_fu_4616_p1 =  (sc_lv<8>) (lhs_V_2_0_0_5_fu_4373_p1.read());
}

void vta::thread_grp_fu_4625_p1() {
    grp_fu_4625_p1 =  (sc_lv<8>) (lhs_V_2_0_0_7_fu_4385_p1.read());
}

void vta::thread_grp_fu_4634_p1() {
    grp_fu_4634_p1 =  (sc_lv<8>) (lhs_V_2_0_0_9_fu_4397_p1.read());
}

void vta::thread_grp_fu_4643_p1() {
    grp_fu_4643_p1 =  (sc_lv<8>) (lhs_V_2_0_0_13_fu_4409_p1.read());
}

void vta::thread_grp_fu_4655_p1() {
    grp_fu_4655_p1 =  (sc_lv<8>) (lhs_V_2_0_0_1_fu_4349_p1.read());
}

void vta::thread_grp_fu_4664_p1() {
    grp_fu_4664_p1 =  (sc_lv<8>) (lhs_V_2_0_0_3_fu_4361_p1.read());
}

void vta::thread_grp_fu_4673_p1() {
    grp_fu_4673_p1 =  (sc_lv<8>) (lhs_V_2_0_0_5_fu_4373_p1.read());
}

void vta::thread_grp_fu_4682_p1() {
    grp_fu_4682_p1 =  (sc_lv<8>) (lhs_V_2_0_0_7_fu_4385_p1.read());
}

void vta::thread_grp_fu_4691_p1() {
    grp_fu_4691_p1 =  (sc_lv<8>) (lhs_V_2_0_0_9_fu_4397_p1.read());
}

void vta::thread_grp_fu_4700_p1() {
    grp_fu_4700_p1 =  (sc_lv<8>) (lhs_V_2_0_0_13_fu_4409_p1.read());
}

void vta::thread_grp_fu_4712_p1() {
    grp_fu_4712_p1 =  (sc_lv<8>) (lhs_V_2_0_0_1_fu_4349_p1.read());
}

void vta::thread_grp_fu_4721_p1() {
    grp_fu_4721_p1 =  (sc_lv<8>) (lhs_V_2_0_0_3_fu_4361_p1.read());
}

void vta::thread_grp_fu_4730_p1() {
    grp_fu_4730_p1 =  (sc_lv<8>) (lhs_V_2_0_0_5_fu_4373_p1.read());
}

void vta::thread_grp_fu_4739_p1() {
    grp_fu_4739_p1 =  (sc_lv<8>) (lhs_V_2_0_0_7_fu_4385_p1.read());
}

void vta::thread_grp_fu_4748_p1() {
    grp_fu_4748_p1 =  (sc_lv<8>) (lhs_V_2_0_0_9_fu_4397_p1.read());
}

void vta::thread_grp_fu_4757_p1() {
    grp_fu_4757_p1 =  (sc_lv<8>) (lhs_V_2_0_0_13_fu_4409_p1.read());
}

void vta::thread_grp_fu_4769_p1() {
    grp_fu_4769_p1 =  (sc_lv<8>) (lhs_V_2_0_0_1_fu_4349_p1.read());
}

void vta::thread_grp_fu_4778_p1() {
    grp_fu_4778_p1 =  (sc_lv<8>) (lhs_V_2_0_0_3_fu_4361_p1.read());
}

void vta::thread_grp_fu_4787_p1() {
    grp_fu_4787_p1 =  (sc_lv<8>) (lhs_V_2_0_0_5_fu_4373_p1.read());
}

void vta::thread_grp_fu_4796_p1() {
    grp_fu_4796_p1 =  (sc_lv<8>) (lhs_V_2_0_0_7_fu_4385_p1.read());
}

void vta::thread_grp_fu_4805_p1() {
    grp_fu_4805_p1 =  (sc_lv<8>) (lhs_V_2_0_0_9_fu_4397_p1.read());
}

void vta::thread_grp_fu_4814_p1() {
    grp_fu_4814_p1 =  (sc_lv<8>) (lhs_V_2_0_0_13_fu_4409_p1.read());
}

void vta::thread_grp_fu_4826_p1() {
    grp_fu_4826_p1 =  (sc_lv<8>) (lhs_V_2_0_0_1_fu_4349_p1.read());
}

void vta::thread_grp_fu_4835_p1() {
    grp_fu_4835_p1 =  (sc_lv<8>) (lhs_V_2_0_0_3_fu_4361_p1.read());
}

void vta::thread_grp_fu_4844_p1() {
    grp_fu_4844_p1 =  (sc_lv<8>) (lhs_V_2_0_0_5_fu_4373_p1.read());
}

void vta::thread_grp_fu_4853_p1() {
    grp_fu_4853_p1 =  (sc_lv<8>) (lhs_V_2_0_0_7_fu_4385_p1.read());
}

void vta::thread_grp_fu_4862_p1() {
    grp_fu_4862_p1 =  (sc_lv<8>) (lhs_V_2_0_0_9_fu_4397_p1.read());
}

void vta::thread_grp_fu_4871_p1() {
    grp_fu_4871_p1 =  (sc_lv<8>) (lhs_V_2_0_0_13_fu_4409_p1.read());
}

void vta::thread_grp_fu_4883_p1() {
    grp_fu_4883_p1 =  (sc_lv<8>) (lhs_V_2_0_0_1_fu_4349_p1.read());
}

void vta::thread_grp_fu_4892_p1() {
    grp_fu_4892_p1 =  (sc_lv<8>) (lhs_V_2_0_0_3_fu_4361_p1.read());
}

void vta::thread_grp_fu_4901_p1() {
    grp_fu_4901_p1 =  (sc_lv<8>) (lhs_V_2_0_0_5_fu_4373_p1.read());
}

void vta::thread_grp_fu_4910_p1() {
    grp_fu_4910_p1 =  (sc_lv<8>) (lhs_V_2_0_0_7_fu_4385_p1.read());
}

void vta::thread_grp_fu_4919_p1() {
    grp_fu_4919_p1 =  (sc_lv<8>) (lhs_V_2_0_0_9_fu_4397_p1.read());
}

void vta::thread_grp_fu_4928_p1() {
    grp_fu_4928_p1 =  (sc_lv<8>) (lhs_V_2_0_0_13_fu_4409_p1.read());
}

void vta::thread_grp_fu_4940_p1() {
    grp_fu_4940_p1 =  (sc_lv<8>) (lhs_V_2_0_0_1_fu_4349_p1.read());
}

void vta::thread_grp_fu_4949_p1() {
    grp_fu_4949_p1 =  (sc_lv<8>) (lhs_V_2_0_0_3_fu_4361_p1.read());
}

void vta::thread_grp_fu_4958_p1() {
    grp_fu_4958_p1 =  (sc_lv<8>) (lhs_V_2_0_0_5_fu_4373_p1.read());
}

void vta::thread_grp_fu_4967_p1() {
    grp_fu_4967_p1 =  (sc_lv<8>) (lhs_V_2_0_0_7_fu_4385_p1.read());
}

void vta::thread_grp_fu_4976_p1() {
    grp_fu_4976_p1 =  (sc_lv<8>) (lhs_V_2_0_0_9_fu_4397_p1.read());
}

void vta::thread_grp_fu_4985_p1() {
    grp_fu_4985_p1 =  (sc_lv<8>) (lhs_V_2_0_0_13_fu_4409_p1.read());
}

void vta::thread_grp_fu_4997_p1() {
    grp_fu_4997_p1 =  (sc_lv<8>) (lhs_V_2_0_0_1_fu_4349_p1.read());
}

void vta::thread_grp_fu_5006_p1() {
    grp_fu_5006_p1 =  (sc_lv<8>) (lhs_V_2_0_0_3_fu_4361_p1.read());
}

void vta::thread_grp_fu_5015_p1() {
    grp_fu_5015_p1 =  (sc_lv<8>) (lhs_V_2_0_0_5_fu_4373_p1.read());
}

void vta::thread_grp_fu_5024_p1() {
    grp_fu_5024_p1 =  (sc_lv<8>) (lhs_V_2_0_0_7_fu_4385_p1.read());
}

void vta::thread_grp_fu_5033_p1() {
    grp_fu_5033_p1 =  (sc_lv<8>) (lhs_V_2_0_0_9_fu_4397_p1.read());
}

void vta::thread_grp_fu_5042_p1() {
    grp_fu_5042_p1 =  (sc_lv<8>) (lhs_V_2_0_0_13_fu_4409_p1.read());
}

void vta::thread_grp_fu_5054_p1() {
    grp_fu_5054_p1 =  (sc_lv<8>) (lhs_V_2_0_0_1_fu_4349_p1.read());
}

void vta::thread_grp_fu_5063_p1() {
    grp_fu_5063_p1 =  (sc_lv<8>) (lhs_V_2_0_0_3_fu_4361_p1.read());
}

void vta::thread_grp_fu_5072_p1() {
    grp_fu_5072_p1 =  (sc_lv<8>) (lhs_V_2_0_0_5_fu_4373_p1.read());
}

void vta::thread_grp_fu_5081_p1() {
    grp_fu_5081_p1 =  (sc_lv<8>) (lhs_V_2_0_0_7_fu_4385_p1.read());
}

void vta::thread_grp_fu_5090_p1() {
    grp_fu_5090_p1 =  (sc_lv<8>) (lhs_V_2_0_0_9_fu_4397_p1.read());
}

void vta::thread_grp_fu_5099_p1() {
    grp_fu_5099_p1 =  (sc_lv<8>) (lhs_V_2_0_0_13_fu_4409_p1.read());
}

void vta::thread_grp_fu_5111_p1() {
    grp_fu_5111_p1 =  (sc_lv<8>) (lhs_V_2_0_0_1_fu_4349_p1.read());
}

void vta::thread_grp_fu_5120_p1() {
    grp_fu_5120_p1 =  (sc_lv<8>) (lhs_V_2_0_0_3_fu_4361_p1.read());
}

void vta::thread_grp_fu_5129_p1() {
    grp_fu_5129_p1 =  (sc_lv<8>) (lhs_V_2_0_0_5_fu_4373_p1.read());
}

void vta::thread_grp_fu_5138_p1() {
    grp_fu_5138_p1 =  (sc_lv<8>) (lhs_V_2_0_0_7_fu_4385_p1.read());
}

void vta::thread_grp_fu_5147_p1() {
    grp_fu_5147_p1 =  (sc_lv<8>) (lhs_V_2_0_0_9_fu_4397_p1.read());
}

void vta::thread_grp_fu_5156_p1() {
    grp_fu_5156_p1 =  (sc_lv<8>) (lhs_V_2_0_0_13_fu_4409_p1.read());
}

void vta::thread_grp_fu_5168_p1() {
    grp_fu_5168_p1 =  (sc_lv<8>) (lhs_V_2_0_0_1_fu_4349_p1.read());
}

void vta::thread_grp_fu_5177_p1() {
    grp_fu_5177_p1 =  (sc_lv<8>) (lhs_V_2_0_0_3_fu_4361_p1.read());
}

void vta::thread_grp_fu_5186_p1() {
    grp_fu_5186_p1 =  (sc_lv<8>) (lhs_V_2_0_0_5_fu_4373_p1.read());
}

void vta::thread_grp_fu_5195_p1() {
    grp_fu_5195_p1 =  (sc_lv<8>) (lhs_V_2_0_0_7_fu_4385_p1.read());
}

void vta::thread_grp_fu_5204_p1() {
    grp_fu_5204_p1 =  (sc_lv<8>) (lhs_V_2_0_0_9_fu_4397_p1.read());
}

void vta::thread_grp_fu_5213_p1() {
    grp_fu_5213_p1 =  (sc_lv<8>) (lhs_V_2_0_0_13_fu_4409_p1.read());
}

void vta::thread_grp_fu_5225_p1() {
    grp_fu_5225_p1 =  (sc_lv<8>) (lhs_V_2_0_0_1_fu_4349_p1.read());
}

void vta::thread_grp_fu_5234_p1() {
    grp_fu_5234_p1 =  (sc_lv<8>) (lhs_V_2_0_0_3_fu_4361_p1.read());
}

void vta::thread_grp_fu_5243_p1() {
    grp_fu_5243_p1 =  (sc_lv<8>) (lhs_V_2_0_0_5_fu_4373_p1.read());
}

void vta::thread_grp_fu_5252_p1() {
    grp_fu_5252_p1 =  (sc_lv<8>) (lhs_V_2_0_0_7_fu_4385_p1.read());
}

void vta::thread_grp_fu_5261_p1() {
    grp_fu_5261_p1 =  (sc_lv<8>) (lhs_V_2_0_0_9_fu_4397_p1.read());
}

void vta::thread_grp_fu_5270_p1() {
    grp_fu_5270_p1 =  (sc_lv<8>) (lhs_V_2_0_0_13_fu_4409_p1.read());
}

void vta::thread_grp_fu_5282_p1() {
    grp_fu_5282_p1 =  (sc_lv<8>) (lhs_V_2_0_0_10_fu_5276_p1.read());
}

void vta::thread_grp_fu_5291_p1() {
    grp_fu_5291_p1 =  (sc_lv<8>) (lhs_V_2_0_0_10_fu_5276_p1.read());
}

void vta::thread_grp_fu_5300_p1() {
    grp_fu_5300_p1 =  (sc_lv<8>) (lhs_V_2_0_0_10_fu_5276_p1.read());
}

void vta::thread_grp_fu_5309_p1() {
    grp_fu_5309_p1 =  (sc_lv<8>) (lhs_V_2_0_0_10_fu_5276_p1.read());
}

void vta::thread_grp_fu_5318_p1() {
    grp_fu_5318_p1 =  (sc_lv<8>) (lhs_V_2_0_0_10_fu_5276_p1.read());
}

void vta::thread_grp_fu_5327_p1() {
    grp_fu_5327_p1 =  (sc_lv<8>) (lhs_V_2_0_0_10_fu_5276_p1.read());
}

void vta::thread_grp_fu_5336_p1() {
    grp_fu_5336_p1 =  (sc_lv<8>) (lhs_V_2_0_0_10_fu_5276_p1.read());
}

void vta::thread_grp_fu_5345_p1() {
    grp_fu_5345_p1 =  (sc_lv<8>) (lhs_V_2_0_0_10_fu_5276_p1.read());
}

void vta::thread_grp_fu_5354_p1() {
    grp_fu_5354_p1 =  (sc_lv<8>) (lhs_V_2_0_0_10_fu_5276_p1.read());
}

void vta::thread_grp_fu_5363_p1() {
    grp_fu_5363_p1 =  (sc_lv<8>) (lhs_V_2_0_0_10_fu_5276_p1.read());
}

void vta::thread_grp_fu_5372_p1() {
    grp_fu_5372_p1 =  (sc_lv<8>) (lhs_V_2_0_0_10_fu_5276_p1.read());
}

void vta::thread_grp_fu_5381_p1() {
    grp_fu_5381_p1 =  (sc_lv<8>) (lhs_V_2_0_0_10_fu_5276_p1.read());
}

void vta::thread_grp_fu_5390_p1() {
    grp_fu_5390_p1 =  (sc_lv<8>) (lhs_V_2_0_0_10_fu_5276_p1.read());
}

void vta::thread_grp_fu_5399_p1() {
    grp_fu_5399_p1 =  (sc_lv<8>) (lhs_V_2_0_0_10_fu_5276_p1.read());
}

void vta::thread_grp_fu_5408_p1() {
    grp_fu_5408_p1 =  (sc_lv<8>) (lhs_V_2_0_0_10_fu_5276_p1.read());
}

void vta::thread_grp_fu_5417_p1() {
    grp_fu_5417_p1 =  (sc_lv<8>) (lhs_V_2_0_0_10_fu_5276_p1.read());
}

void vta::thread_grp_fu_7372_p1() {
    grp_fu_7372_p1 =  (sc_lv<8>) (lhs_V_2_fu_4343_p1.read());
}

void vta::thread_grp_fu_7379_p1() {
    grp_fu_7379_p1 =  (sc_lv<8>) (lhs_V_2_fu_4343_p1.read());
}

void vta::thread_grp_fu_7386_p1() {
    grp_fu_7386_p1 =  (sc_lv<8>) (lhs_V_2_fu_4343_p1.read());
}

void vta::thread_grp_fu_7393_p1() {
    grp_fu_7393_p1 =  (sc_lv<8>) (lhs_V_2_fu_4343_p1.read());
}

void vta::thread_grp_fu_7400_p1() {
    grp_fu_7400_p1 =  (sc_lv<8>) (lhs_V_2_fu_4343_p1.read());
}

void vta::thread_grp_fu_7407_p1() {
    grp_fu_7407_p1 =  (sc_lv<8>) (lhs_V_2_fu_4343_p1.read());
}

void vta::thread_grp_fu_7414_p1() {
    grp_fu_7414_p1 =  (sc_lv<8>) (lhs_V_2_fu_4343_p1.read());
}

void vta::thread_grp_fu_7421_p1() {
    grp_fu_7421_p1 =  (sc_lv<8>) (lhs_V_2_fu_4343_p1.read());
}

void vta::thread_grp_fu_7428_p1() {
    grp_fu_7428_p1 =  (sc_lv<8>) (lhs_V_2_fu_4343_p1.read());
}

void vta::thread_grp_fu_7435_p1() {
    grp_fu_7435_p1 =  (sc_lv<8>) (lhs_V_2_fu_4343_p1.read());
}

void vta::thread_grp_fu_7442_p1() {
    grp_fu_7442_p1 =  (sc_lv<8>) (lhs_V_2_fu_4343_p1.read());
}

void vta::thread_grp_fu_7449_p1() {
    grp_fu_7449_p1 =  (sc_lv<8>) (lhs_V_2_fu_4343_p1.read());
}

void vta::thread_grp_fu_7456_p1() {
    grp_fu_7456_p1 =  (sc_lv<8>) (lhs_V_2_fu_4343_p1.read());
}

void vta::thread_grp_fu_7463_p1() {
    grp_fu_7463_p1 =  (sc_lv<8>) (lhs_V_2_fu_4343_p1.read());
}

void vta::thread_grp_fu_7470_p1() {
    grp_fu_7470_p1 =  (sc_lv<8>) (lhs_V_2_fu_4343_p1.read());
}

void vta::thread_grp_fu_7477_p1() {
    grp_fu_7477_p1 =  (sc_lv<8>) (lhs_V_2_fu_4343_p1.read());
}

void vta::thread_grp_fu_7484_p1() {
    grp_fu_7484_p1 =  (sc_lv<8>) (lhs_V_2_0_0_2_fu_5426_p1.read());
}

void vta::thread_grp_fu_7492_p1() {
    grp_fu_7492_p1 =  (sc_lv<8>) (lhs_V_2_0_0_4_fu_5435_p1.read());
}

void vta::thread_grp_fu_7500_p1() {
    grp_fu_7500_p1 =  (sc_lv<8>) (lhs_V_2_0_0_6_fu_5444_p1.read());
}

void vta::thread_grp_fu_7508_p1() {
    grp_fu_7508_p1 =  (sc_lv<8>) (lhs_V_2_0_0_8_fu_5453_p1.read());
}

void vta::thread_grp_fu_7516_p1() {
    grp_fu_7516_p1 =  (sc_lv<8>) (lhs_V_2_0_0_s_fu_5462_p1.read());
}

void vta::thread_grp_fu_7524_p1() {
    grp_fu_7524_p1 =  (sc_lv<8>) (lhs_V_2_0_0_14_fu_5471_p1.read());
}

void vta::thread_grp_fu_7532_p1() {
    grp_fu_7532_p1 =  (sc_lv<8>) (lhs_V_2_0_0_2_fu_5426_p1.read());
}

void vta::thread_grp_fu_7540_p1() {
    grp_fu_7540_p1 =  (sc_lv<8>) (lhs_V_2_0_0_4_fu_5435_p1.read());
}

void vta::thread_grp_fu_7548_p1() {
    grp_fu_7548_p1 =  (sc_lv<8>) (lhs_V_2_0_0_6_fu_5444_p1.read());
}

void vta::thread_grp_fu_7556_p1() {
    grp_fu_7556_p1 =  (sc_lv<8>) (lhs_V_2_0_0_8_fu_5453_p1.read());
}

void vta::thread_grp_fu_7564_p1() {
    grp_fu_7564_p1 =  (sc_lv<8>) (lhs_V_2_0_0_s_fu_5462_p1.read());
}

void vta::thread_grp_fu_7572_p1() {
    grp_fu_7572_p1 =  (sc_lv<8>) (lhs_V_2_0_0_14_fu_5471_p1.read());
}

void vta::thread_grp_fu_7580_p1() {
    grp_fu_7580_p1 =  (sc_lv<8>) (lhs_V_2_0_0_2_fu_5426_p1.read());
}

void vta::thread_grp_fu_7588_p1() {
    grp_fu_7588_p1 =  (sc_lv<8>) (lhs_V_2_0_0_4_fu_5435_p1.read());
}

void vta::thread_grp_fu_7596_p1() {
    grp_fu_7596_p1 =  (sc_lv<8>) (lhs_V_2_0_0_6_fu_5444_p1.read());
}

void vta::thread_grp_fu_7604_p1() {
    grp_fu_7604_p1 =  (sc_lv<8>) (lhs_V_2_0_0_8_fu_5453_p1.read());
}

void vta::thread_grp_fu_7612_p1() {
    grp_fu_7612_p1 =  (sc_lv<8>) (lhs_V_2_0_0_s_fu_5462_p1.read());
}

void vta::thread_grp_fu_7620_p1() {
    grp_fu_7620_p1 =  (sc_lv<8>) (lhs_V_2_0_0_14_fu_5471_p1.read());
}

void vta::thread_grp_fu_7628_p1() {
    grp_fu_7628_p1 =  (sc_lv<8>) (lhs_V_2_0_0_2_fu_5426_p1.read());
}

void vta::thread_grp_fu_7636_p1() {
    grp_fu_7636_p1 =  (sc_lv<8>) (lhs_V_2_0_0_4_fu_5435_p1.read());
}

void vta::thread_grp_fu_7644_p1() {
    grp_fu_7644_p1 =  (sc_lv<8>) (lhs_V_2_0_0_6_fu_5444_p1.read());
}

void vta::thread_grp_fu_7652_p1() {
    grp_fu_7652_p1 =  (sc_lv<8>) (lhs_V_2_0_0_8_fu_5453_p1.read());
}

void vta::thread_grp_fu_7660_p1() {
    grp_fu_7660_p1 =  (sc_lv<8>) (lhs_V_2_0_0_s_fu_5462_p1.read());
}

void vta::thread_grp_fu_7668_p1() {
    grp_fu_7668_p1 =  (sc_lv<8>) (lhs_V_2_0_0_14_fu_5471_p1.read());
}

void vta::thread_grp_fu_7676_p1() {
    grp_fu_7676_p1 =  (sc_lv<8>) (lhs_V_2_0_0_2_fu_5426_p1.read());
}

void vta::thread_grp_fu_7684_p1() {
    grp_fu_7684_p1 =  (sc_lv<8>) (lhs_V_2_0_0_4_fu_5435_p1.read());
}

void vta::thread_grp_fu_7692_p1() {
    grp_fu_7692_p1 =  (sc_lv<8>) (lhs_V_2_0_0_6_fu_5444_p1.read());
}

void vta::thread_grp_fu_7700_p1() {
    grp_fu_7700_p1 =  (sc_lv<8>) (lhs_V_2_0_0_8_fu_5453_p1.read());
}

void vta::thread_grp_fu_7708_p1() {
    grp_fu_7708_p1 =  (sc_lv<8>) (lhs_V_2_0_0_s_fu_5462_p1.read());
}

void vta::thread_grp_fu_7716_p1() {
    grp_fu_7716_p1 =  (sc_lv<8>) (lhs_V_2_0_0_14_fu_5471_p1.read());
}

void vta::thread_grp_fu_7724_p1() {
    grp_fu_7724_p1 =  (sc_lv<8>) (lhs_V_2_0_0_2_fu_5426_p1.read());
}

void vta::thread_grp_fu_7732_p1() {
    grp_fu_7732_p1 =  (sc_lv<8>) (lhs_V_2_0_0_4_fu_5435_p1.read());
}

void vta::thread_grp_fu_7740_p1() {
    grp_fu_7740_p1 =  (sc_lv<8>) (lhs_V_2_0_0_6_fu_5444_p1.read());
}

void vta::thread_grp_fu_7748_p1() {
    grp_fu_7748_p1 =  (sc_lv<8>) (lhs_V_2_0_0_8_fu_5453_p1.read());
}

void vta::thread_grp_fu_7756_p1() {
    grp_fu_7756_p1 =  (sc_lv<8>) (lhs_V_2_0_0_s_fu_5462_p1.read());
}

void vta::thread_grp_fu_7764_p1() {
    grp_fu_7764_p1 =  (sc_lv<8>) (lhs_V_2_0_0_14_fu_5471_p1.read());
}

void vta::thread_grp_fu_7772_p1() {
    grp_fu_7772_p1 =  (sc_lv<8>) (lhs_V_2_0_0_2_fu_5426_p1.read());
}

void vta::thread_grp_fu_7780_p1() {
    grp_fu_7780_p1 =  (sc_lv<8>) (lhs_V_2_0_0_4_fu_5435_p1.read());
}

void vta::thread_grp_fu_7788_p1() {
    grp_fu_7788_p1 =  (sc_lv<8>) (lhs_V_2_0_0_6_fu_5444_p1.read());
}

void vta::thread_grp_fu_7796_p1() {
    grp_fu_7796_p1 =  (sc_lv<8>) (lhs_V_2_0_0_8_fu_5453_p1.read());
}

void vta::thread_grp_fu_7804_p1() {
    grp_fu_7804_p1 =  (sc_lv<8>) (lhs_V_2_0_0_s_fu_5462_p1.read());
}

void vta::thread_grp_fu_7812_p1() {
    grp_fu_7812_p1 =  (sc_lv<8>) (lhs_V_2_0_0_14_fu_5471_p1.read());
}

void vta::thread_grp_fu_7820_p1() {
    grp_fu_7820_p1 =  (sc_lv<8>) (lhs_V_2_0_0_2_fu_5426_p1.read());
}

void vta::thread_grp_fu_7828_p1() {
    grp_fu_7828_p1 =  (sc_lv<8>) (lhs_V_2_0_0_4_fu_5435_p1.read());
}

void vta::thread_grp_fu_7836_p1() {
    grp_fu_7836_p1 =  (sc_lv<8>) (lhs_V_2_0_0_6_fu_5444_p1.read());
}

void vta::thread_grp_fu_7844_p1() {
    grp_fu_7844_p1 =  (sc_lv<8>) (lhs_V_2_0_0_8_fu_5453_p1.read());
}

void vta::thread_grp_fu_7852_p1() {
    grp_fu_7852_p1 =  (sc_lv<8>) (lhs_V_2_0_0_s_fu_5462_p1.read());
}

void vta::thread_grp_fu_7860_p1() {
    grp_fu_7860_p1 =  (sc_lv<8>) (lhs_V_2_0_0_14_fu_5471_p1.read());
}

void vta::thread_grp_fu_7868_p1() {
    grp_fu_7868_p1 =  (sc_lv<8>) (lhs_V_2_0_0_2_fu_5426_p1.read());
}

void vta::thread_grp_fu_7876_p1() {
    grp_fu_7876_p1 =  (sc_lv<8>) (lhs_V_2_0_0_4_fu_5435_p1.read());
}

void vta::thread_grp_fu_7884_p1() {
    grp_fu_7884_p1 =  (sc_lv<8>) (lhs_V_2_0_0_6_fu_5444_p1.read());
}

void vta::thread_grp_fu_7892_p1() {
    grp_fu_7892_p1 =  (sc_lv<8>) (lhs_V_2_0_0_8_fu_5453_p1.read());
}

void vta::thread_grp_fu_7900_p1() {
    grp_fu_7900_p1 =  (sc_lv<8>) (lhs_V_2_0_0_s_fu_5462_p1.read());
}

void vta::thread_grp_fu_7908_p1() {
    grp_fu_7908_p1 =  (sc_lv<8>) (lhs_V_2_0_0_14_fu_5471_p1.read());
}

void vta::thread_grp_fu_7916_p1() {
    grp_fu_7916_p1 =  (sc_lv<8>) (lhs_V_2_0_0_2_fu_5426_p1.read());
}

void vta::thread_grp_fu_7924_p1() {
    grp_fu_7924_p1 =  (sc_lv<8>) (lhs_V_2_0_0_4_fu_5435_p1.read());
}

void vta::thread_grp_fu_7932_p1() {
    grp_fu_7932_p1 =  (sc_lv<8>) (lhs_V_2_0_0_6_fu_5444_p1.read());
}

void vta::thread_grp_fu_7940_p1() {
    grp_fu_7940_p1 =  (sc_lv<8>) (lhs_V_2_0_0_8_fu_5453_p1.read());
}

void vta::thread_grp_fu_7948_p1() {
    grp_fu_7948_p1 =  (sc_lv<8>) (lhs_V_2_0_0_s_fu_5462_p1.read());
}

void vta::thread_grp_fu_7956_p1() {
    grp_fu_7956_p1 =  (sc_lv<8>) (lhs_V_2_0_0_14_fu_5471_p1.read());
}

void vta::thread_grp_fu_7964_p1() {
    grp_fu_7964_p1 =  (sc_lv<8>) (lhs_V_2_0_0_2_fu_5426_p1.read());
}

void vta::thread_grp_fu_7972_p1() {
    grp_fu_7972_p1 =  (sc_lv<8>) (lhs_V_2_0_0_4_fu_5435_p1.read());
}

void vta::thread_grp_fu_7980_p1() {
    grp_fu_7980_p1 =  (sc_lv<8>) (lhs_V_2_0_0_6_fu_5444_p1.read());
}

void vta::thread_grp_fu_7988_p1() {
    grp_fu_7988_p1 =  (sc_lv<8>) (lhs_V_2_0_0_8_fu_5453_p1.read());
}

void vta::thread_grp_fu_7996_p1() {
    grp_fu_7996_p1 =  (sc_lv<8>) (lhs_V_2_0_0_s_fu_5462_p1.read());
}

void vta::thread_grp_fu_8004_p1() {
    grp_fu_8004_p1 =  (sc_lv<8>) (lhs_V_2_0_0_14_fu_5471_p1.read());
}

void vta::thread_grp_fu_8012_p1() {
    grp_fu_8012_p1 =  (sc_lv<8>) (lhs_V_2_0_0_2_fu_5426_p1.read());
}

void vta::thread_grp_fu_8020_p1() {
    grp_fu_8020_p1 =  (sc_lv<8>) (lhs_V_2_0_0_4_fu_5435_p1.read());
}

void vta::thread_grp_fu_8028_p1() {
    grp_fu_8028_p1 =  (sc_lv<8>) (lhs_V_2_0_0_6_fu_5444_p1.read());
}

void vta::thread_grp_fu_8036_p1() {
    grp_fu_8036_p1 =  (sc_lv<8>) (lhs_V_2_0_0_8_fu_5453_p1.read());
}

void vta::thread_grp_fu_8044_p1() {
    grp_fu_8044_p1 =  (sc_lv<8>) (lhs_V_2_0_0_s_fu_5462_p1.read());
}

void vta::thread_grp_fu_8052_p1() {
    grp_fu_8052_p1 =  (sc_lv<8>) (lhs_V_2_0_0_14_fu_5471_p1.read());
}

void vta::thread_grp_fu_8060_p1() {
    grp_fu_8060_p1 =  (sc_lv<8>) (lhs_V_2_0_0_2_fu_5426_p1.read());
}

void vta::thread_grp_fu_8068_p1() {
    grp_fu_8068_p1 =  (sc_lv<8>) (lhs_V_2_0_0_4_fu_5435_p1.read());
}

void vta::thread_grp_fu_8076_p1() {
    grp_fu_8076_p1 =  (sc_lv<8>) (lhs_V_2_0_0_6_fu_5444_p1.read());
}

void vta::thread_grp_fu_8084_p1() {
    grp_fu_8084_p1 =  (sc_lv<8>) (lhs_V_2_0_0_8_fu_5453_p1.read());
}

void vta::thread_grp_fu_8092_p1() {
    grp_fu_8092_p1 =  (sc_lv<8>) (lhs_V_2_0_0_s_fu_5462_p1.read());
}

void vta::thread_grp_fu_8100_p1() {
    grp_fu_8100_p1 =  (sc_lv<8>) (lhs_V_2_0_0_14_fu_5471_p1.read());
}

void vta::thread_grp_fu_8108_p1() {
    grp_fu_8108_p1 =  (sc_lv<8>) (lhs_V_2_0_0_2_fu_5426_p1.read());
}

void vta::thread_grp_fu_8116_p1() {
    grp_fu_8116_p1 =  (sc_lv<8>) (lhs_V_2_0_0_4_fu_5435_p1.read());
}

void vta::thread_grp_fu_8124_p1() {
    grp_fu_8124_p1 =  (sc_lv<8>) (lhs_V_2_0_0_6_fu_5444_p1.read());
}

void vta::thread_grp_fu_8132_p1() {
    grp_fu_8132_p1 =  (sc_lv<8>) (lhs_V_2_0_0_8_fu_5453_p1.read());
}

void vta::thread_grp_fu_8140_p1() {
    grp_fu_8140_p1 =  (sc_lv<8>) (lhs_V_2_0_0_s_fu_5462_p1.read());
}

void vta::thread_grp_fu_8148_p1() {
    grp_fu_8148_p1 =  (sc_lv<8>) (lhs_V_2_0_0_14_fu_5471_p1.read());
}

void vta::thread_grp_fu_8156_p1() {
    grp_fu_8156_p1 =  (sc_lv<8>) (lhs_V_2_0_0_2_fu_5426_p1.read());
}

void vta::thread_grp_fu_8164_p1() {
    grp_fu_8164_p1 =  (sc_lv<8>) (lhs_V_2_0_0_4_fu_5435_p1.read());
}

void vta::thread_grp_fu_8172_p1() {
    grp_fu_8172_p1 =  (sc_lv<8>) (lhs_V_2_0_0_6_fu_5444_p1.read());
}

void vta::thread_grp_fu_8180_p1() {
    grp_fu_8180_p1 =  (sc_lv<8>) (lhs_V_2_0_0_8_fu_5453_p1.read());
}

void vta::thread_grp_fu_8188_p1() {
    grp_fu_8188_p1 =  (sc_lv<8>) (lhs_V_2_0_0_s_fu_5462_p1.read());
}

void vta::thread_grp_fu_8196_p1() {
    grp_fu_8196_p1 =  (sc_lv<8>) (lhs_V_2_0_0_14_fu_5471_p1.read());
}

void vta::thread_grp_fu_8204_p1() {
    grp_fu_8204_p1 =  (sc_lv<8>) (lhs_V_2_0_0_2_fu_5426_p1.read());
}

void vta::thread_grp_fu_8212_p1() {
    grp_fu_8212_p1 =  (sc_lv<8>) (lhs_V_2_0_0_4_fu_5435_p1.read());
}

void vta::thread_grp_fu_8220_p1() {
    grp_fu_8220_p1 =  (sc_lv<8>) (lhs_V_2_0_0_6_fu_5444_p1.read());
}

void vta::thread_grp_fu_8228_p1() {
    grp_fu_8228_p1 =  (sc_lv<8>) (lhs_V_2_0_0_8_fu_5453_p1.read());
}

void vta::thread_grp_fu_8236_p1() {
    grp_fu_8236_p1 =  (sc_lv<8>) (lhs_V_2_0_0_s_fu_5462_p1.read());
}

void vta::thread_grp_fu_8244_p1() {
    grp_fu_8244_p1 =  (sc_lv<8>) (lhs_V_2_0_0_14_fu_5471_p1.read());
}

void vta::thread_grp_fu_8252_p1() {
    grp_fu_8252_p1 =  (sc_lv<8>) (lhs_V_2_0_0_11_fu_6020_p1.read());
}

void vta::thread_grp_fu_8260_p1() {
    grp_fu_8260_p1 =  (sc_lv<8>) (lhs_V_2_0_0_12_fu_6026_p1.read());
}

void vta::thread_grp_fu_8267_p1() {
    grp_fu_8267_p1 =  (sc_lv<8>) (lhs_V_2_0_0_11_fu_6020_p1.read());
}

void vta::thread_grp_fu_8275_p1() {
    grp_fu_8275_p1 =  (sc_lv<8>) (lhs_V_2_0_0_12_fu_6026_p1.read());
}

void vta::thread_grp_fu_8282_p1() {
    grp_fu_8282_p1 =  (sc_lv<8>) (lhs_V_2_0_0_11_fu_6020_p1.read());
}

void vta::thread_grp_fu_8290_p1() {
    grp_fu_8290_p1 =  (sc_lv<8>) (lhs_V_2_0_0_12_fu_6026_p1.read());
}

void vta::thread_grp_fu_8297_p1() {
    grp_fu_8297_p1 =  (sc_lv<8>) (lhs_V_2_0_0_11_fu_6020_p1.read());
}

void vta::thread_grp_fu_8305_p1() {
    grp_fu_8305_p1 =  (sc_lv<8>) (lhs_V_2_0_0_12_fu_6026_p1.read());
}

void vta::thread_grp_fu_8312_p1() {
    grp_fu_8312_p1 =  (sc_lv<8>) (lhs_V_2_0_0_11_fu_6020_p1.read());
}

void vta::thread_grp_fu_8320_p1() {
    grp_fu_8320_p1 =  (sc_lv<8>) (lhs_V_2_0_0_12_fu_6026_p1.read());
}

void vta::thread_grp_fu_8327_p1() {
    grp_fu_8327_p1 =  (sc_lv<8>) (lhs_V_2_0_0_11_fu_6020_p1.read());
}

void vta::thread_grp_fu_8335_p1() {
    grp_fu_8335_p1 =  (sc_lv<8>) (lhs_V_2_0_0_12_fu_6026_p1.read());
}

void vta::thread_grp_fu_8342_p1() {
    grp_fu_8342_p1 =  (sc_lv<8>) (lhs_V_2_0_0_11_fu_6020_p1.read());
}

void vta::thread_grp_fu_8350_p1() {
    grp_fu_8350_p1 =  (sc_lv<8>) (lhs_V_2_0_0_12_fu_6026_p1.read());
}

void vta::thread_grp_fu_8357_p1() {
    grp_fu_8357_p1 =  (sc_lv<8>) (lhs_V_2_0_0_11_fu_6020_p1.read());
}

void vta::thread_grp_fu_8365_p1() {
    grp_fu_8365_p1 =  (sc_lv<8>) (lhs_V_2_0_0_12_fu_6026_p1.read());
}

void vta::thread_grp_fu_8372_p1() {
    grp_fu_8372_p1 =  (sc_lv<8>) (lhs_V_2_0_0_11_fu_6020_p1.read());
}

void vta::thread_grp_fu_8380_p1() {
    grp_fu_8380_p1 =  (sc_lv<8>) (lhs_V_2_0_0_12_fu_6026_p1.read());
}

void vta::thread_grp_fu_8387_p1() {
    grp_fu_8387_p1 =  (sc_lv<8>) (lhs_V_2_0_0_11_fu_6020_p1.read());
}

void vta::thread_grp_fu_8395_p1() {
    grp_fu_8395_p1 =  (sc_lv<8>) (lhs_V_2_0_0_12_fu_6026_p1.read());
}

void vta::thread_grp_fu_8402_p1() {
    grp_fu_8402_p1 =  (sc_lv<8>) (lhs_V_2_0_0_11_fu_6020_p1.read());
}

void vta::thread_grp_fu_8410_p1() {
    grp_fu_8410_p1 =  (sc_lv<8>) (lhs_V_2_0_0_12_fu_6026_p1.read());
}

void vta::thread_grp_fu_8417_p1() {
    grp_fu_8417_p1 =  (sc_lv<8>) (lhs_V_2_0_0_11_fu_6020_p1.read());
}

void vta::thread_grp_fu_8425_p1() {
    grp_fu_8425_p1 =  (sc_lv<8>) (lhs_V_2_0_0_12_fu_6026_p1.read());
}

void vta::thread_grp_fu_8432_p1() {
    grp_fu_8432_p1 =  (sc_lv<8>) (lhs_V_2_0_0_11_fu_6020_p1.read());
}

void vta::thread_grp_fu_8440_p1() {
    grp_fu_8440_p1 =  (sc_lv<8>) (lhs_V_2_0_0_12_fu_6026_p1.read());
}

void vta::thread_grp_fu_8447_p1() {
    grp_fu_8447_p1 =  (sc_lv<8>) (lhs_V_2_0_0_11_fu_6020_p1.read());
}

void vta::thread_grp_fu_8455_p1() {
    grp_fu_8455_p1 =  (sc_lv<8>) (lhs_V_2_0_0_12_fu_6026_p1.read());
}

void vta::thread_grp_fu_8462_p1() {
    grp_fu_8462_p1 =  (sc_lv<8>) (lhs_V_2_0_0_11_fu_6020_p1.read());
}

void vta::thread_grp_fu_8470_p1() {
    grp_fu_8470_p1 =  (sc_lv<8>) (lhs_V_2_0_0_12_fu_6026_p1.read());
}

void vta::thread_grp_fu_8477_p1() {
    grp_fu_8477_p1 =  (sc_lv<8>) (lhs_V_2_0_0_11_fu_6020_p1.read());
}

void vta::thread_grp_fu_8485_p1() {
    grp_fu_8485_p1 =  (sc_lv<8>) (lhs_V_2_0_0_12_fu_6026_p1.read());
}

void vta::thread_indvar1_cast_fu_1253_p1() {
    indvar1_cast_fu_1253_p1 = esl_zext<15,14>(indvar1_reg_904.read());
}

void vta::thread_indvar2_cast_fu_1421_p1() {
    indvar2_cast_fu_1421_p1 = esl_zext<15,14>(indvar2_reg_937.read());
}

void vta::thread_indvar3_cast_fu_1351_p1() {
    indvar3_cast_fu_1351_p1 = esl_zext<19,18>(indvar3_reg_926.read());
}

void vta::thread_indvar4_cast_fu_1294_p1() {
    indvar4_cast_fu_1294_p1 = esl_zext<15,14>(indvar4_reg_915.read());
}

void vta::thread_indvar_cast_fu_1452_p1() {
    indvar_cast_fu_1452_p1 = esl_zext<15,14>(indvar_reg_948.read());
}

void vta::thread_indvar_next1_fu_1247_p2() {
    indvar_next1_fu_1247_p2 = (!indvar1_reg_904.read().is_01() || !ap_const_lv14_1.is_01())? sc_lv<14>(): (sc_biguint<14>(indvar1_reg_904.read()) + sc_biguint<14>(ap_const_lv14_1));
}

void vta::thread_indvar_next2_fu_1415_p2() {
    indvar_next2_fu_1415_p2 = (!indvar2_reg_937.read().is_01() || !ap_const_lv14_1.is_01())? sc_lv<14>(): (sc_biguint<14>(indvar2_reg_937.read()) + sc_biguint<14>(ap_const_lv14_1));
}

void vta::thread_indvar_next3_fu_1345_p2() {
    indvar_next3_fu_1345_p2 = (!indvar3_reg_926.read().is_01() || !ap_const_lv18_1.is_01())? sc_lv<18>(): (sc_biguint<18>(indvar3_reg_926.read()) + sc_biguint<18>(ap_const_lv18_1));
}

void vta::thread_indvar_next4_fu_1288_p2() {
    indvar_next4_fu_1288_p2 = (!indvar4_reg_915.read().is_01() || !ap_const_lv14_1.is_01())? sc_lv<14>(): (sc_biguint<14>(indvar4_reg_915.read()) + sc_biguint<14>(ap_const_lv14_1));
}

void vta::thread_indvar_next_fu_1446_p2() {
    indvar_next_fu_1446_p2 = (!indvar_reg_948.read().is_01() || !ap_const_lv14_1.is_01())? sc_lv<14>(): (sc_biguint<14>(indvar_reg_948.read()) + sc_biguint<14>(ap_const_lv14_1));
}

void vta::thread_inp_mem_0_V_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00000000.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read()))) {
        inp_mem_0_V_address0 =  (sc_lv<11>) (tmp_24_fu_1548_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp3_stage0_flag00000000.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp3_iter2.read()))) {
        inp_mem_0_V_address0 =  (sc_lv<11>) (tmp_37_fu_1430_p1.read());
    } else {
        inp_mem_0_V_address0 = "XXXXXXXXXXX";
    }
}

void vta::thread_inp_mem_0_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp3_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp3_iter2.read())))) {
        inp_mem_0_V_ce0 = ap_const_logic_1;
    } else {
        inp_mem_0_V_ce0 = ap_const_logic_0;
    }
}

void vta::thread_inp_mem_0_V_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp3_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp3_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp3_iter1_exitcond3_reg_8780.read()))) {
        inp_mem_0_V_we0 = ap_const_logic_1;
    } else {
        inp_mem_0_V_we0 = ap_const_logic_0;
    }
}

void vta::thread_inputs_V6_sum_cast_fu_1393_p1() {
    inputs_V6_sum_cast_fu_1393_p1 = esl_zext<64,33>(inputs_V6_sum_reg_8645.read());
}

void vta::thread_inputs_V6_sum_fu_1201_p2() {
    inputs_V6_sum_fu_1201_p2 = (!lhs_V_cast_fu_1197_p1.read().is_01() || !tmp_7_cast_reg_8549.read().is_01())? sc_lv<33>(): (sc_biguint<33>(lhs_V_cast_fu_1197_p1.read()) + sc_biguint<33>(tmp_7_cast_reg_8549.read()));
}

void vta::thread_ins_port_ARADDR() {
    ins_port_ARADDR =  (sc_lv<32>) (tmp_9_fu_1049_p1.read());
}

void vta::thread_ins_port_ARVALID() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_ins_port_ARREADY.read()))) {
        ins_port_ARVALID = ap_const_logic_1;
    } else {
        ins_port_ARVALID = ap_const_logic_0;
    }
}

void vta::thread_ins_port_RREADY() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()) && 
         esl_seteq<1,1,1>(exitcond1_fu_1074_p2.read(), ap_const_lv1_0) && 
         !(esl_seteq<1,1,1>(exitcond1_fu_1074_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, ins_port_RVALID.read())))) {
        ins_port_RREADY = ap_const_logic_1;
    } else {
        ins_port_RREADY = ap_const_logic_0;
    }
}

void vta::thread_ins_port_blk_n_AR() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        ins_port_blk_n_AR = m_axi_ins_port_ARREADY.read();
    } else {
        ins_port_blk_n_AR = ap_const_logic_1;
    }
}

void vta::thread_ins_port_blk_n_R() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()) && 
         esl_seteq<1,1,1>(exitcond1_fu_1074_p2.read(), ap_const_lv1_0))) {
        ins_port_blk_n_R = m_axi_ins_port_RVALID.read();
    } else {
        ins_port_blk_n_R = ap_const_logic_1;
    }
}

void vta::thread_lhs_V_2_0_0_10_fu_5276_p1() {
    lhs_V_2_0_0_10_fu_5276_p1 = esl_sext<16,8>(ap_reg_pp5_iter4_p_Result_5_0_0_10_reg_9076.read());
}

void vta::thread_lhs_V_2_0_0_11_fu_6020_p1() {
    lhs_V_2_0_0_11_fu_6020_p1 = esl_sext<16,8>(ap_reg_pp5_iter7_p_Result_5_0_0_11_reg_9086.read());
}

void vta::thread_lhs_V_2_0_0_12_fu_6026_p1() {
    lhs_V_2_0_0_12_fu_6026_p1 = esl_sext<16,8>(ap_reg_pp5_iter7_p_Result_5_0_0_12_reg_9096.read());
}

void vta::thread_lhs_V_2_0_0_13_fu_4409_p1() {
    lhs_V_2_0_0_13_fu_4409_p1 = esl_sext<16,8>(p_Result_5_0_0_13_reg_9106.read());
}

void vta::thread_lhs_V_2_0_0_14_fu_5471_p1() {
    lhs_V_2_0_0_14_fu_5471_p1 = esl_sext<16,8>(ap_reg_pp5_iter6_p_Result_5_0_0_14_reg_9116.read());
}

void vta::thread_lhs_V_2_0_0_1_fu_4349_p1() {
    lhs_V_2_0_0_1_fu_4349_p1 = esl_sext<16,8>(p_Result_5_0_0_1_reg_8976.read());
}

void vta::thread_lhs_V_2_0_0_2_fu_5426_p1() {
    lhs_V_2_0_0_2_fu_5426_p1 = esl_sext<16,8>(ap_reg_pp5_iter6_p_Result_5_0_0_2_reg_8986.read());
}

void vta::thread_lhs_V_2_0_0_3_fu_4361_p1() {
    lhs_V_2_0_0_3_fu_4361_p1 = esl_sext<16,8>(p_Result_5_0_0_3_reg_8996.read());
}

void vta::thread_lhs_V_2_0_0_4_fu_5435_p1() {
    lhs_V_2_0_0_4_fu_5435_p1 = esl_sext<16,8>(ap_reg_pp5_iter6_p_Result_5_0_0_4_reg_9006.read());
}

void vta::thread_lhs_V_2_0_0_5_fu_4373_p1() {
    lhs_V_2_0_0_5_fu_4373_p1 = esl_sext<16,8>(p_Result_5_0_0_5_reg_9016.read());
}

void vta::thread_lhs_V_2_0_0_6_fu_5444_p1() {
    lhs_V_2_0_0_6_fu_5444_p1 = esl_sext<16,8>(ap_reg_pp5_iter6_p_Result_5_0_0_6_reg_9026.read());
}

void vta::thread_lhs_V_2_0_0_7_fu_4385_p1() {
    lhs_V_2_0_0_7_fu_4385_p1 = esl_sext<16,8>(p_Result_5_0_0_7_reg_9036.read());
}

void vta::thread_lhs_V_2_0_0_8_fu_5453_p1() {
    lhs_V_2_0_0_8_fu_5453_p1 = esl_sext<16,8>(ap_reg_pp5_iter6_p_Result_5_0_0_8_reg_9046.read());
}

void vta::thread_lhs_V_2_0_0_9_fu_4397_p1() {
    lhs_V_2_0_0_9_fu_4397_p1 = esl_sext<16,8>(p_Result_5_0_0_9_reg_9056.read());
}

void vta::thread_lhs_V_2_0_0_s_fu_5462_p1() {
    lhs_V_2_0_0_s_fu_5462_p1 = esl_sext<16,8>(ap_reg_pp5_iter6_p_Result_5_0_0_s_reg_9066.read());
}

void vta::thread_lhs_V_2_fu_4343_p1() {
    lhs_V_2_fu_4343_p1 = esl_sext<16,8>(tmp_29_reg_8966.read());
}

void vta::thread_lhs_V_4_cast_fu_1171_p1() {
    lhs_V_4_cast_fu_1171_p1 = esl_zext<33,32>(dram_base_V_fu_1115_p4.read());
}

void vta::thread_lhs_V_5_cast_fu_1138_p1() {
    lhs_V_5_cast_fu_1138_p1 = esl_zext<33,32>(dram_base_V_fu_1115_p4.read());
}

void vta::thread_lhs_V_cast_fu_1197_p1() {
    lhs_V_cast_fu_1197_p1 = esl_zext<33,32>(dram_base_V_fu_1115_p4.read());
}

void vta::thread_memory_type_V_fu_1097_p4() {
    memory_type_V_fu_1097_p4 = insn_reg_8567.read().range(3, 2);
}

void vta::thread_narrow_port_ARADDR() {
    if (esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_narrow_port_ARREADY.read())) {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state42.read())) {
            narrow_port_ARADDR =  (sc_lv<32>) (inputs_V6_sum_cast_fu_1393_p1.read());
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read())) {
            narrow_port_ARADDR =  (sc_lv<32>) (weights_V8_sum_cast_fu_1307_p1.read());
        } else {
            narrow_port_ARADDR =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
        }
    } else {
        narrow_port_ARADDR =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void vta::thread_narrow_port_ARLEN() {
    if (esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_narrow_port_ARREADY.read())) {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state42.read())) {
            narrow_port_ARLEN = tmp_17_fu_1403_p1.read();
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read())) {
            narrow_port_ARLEN = tmp_36_add_i32_shr_c_fu_1324_p1.read();
        } else {
            narrow_port_ARLEN =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
        }
    } else {
        narrow_port_ARLEN =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void vta::thread_narrow_port_ARVALID() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_narrow_port_ARREADY.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state42.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_narrow_port_ARREADY.read())))) {
        narrow_port_ARVALID = ap_const_logic_1;
    } else {
        narrow_port_ARVALID = ap_const_logic_0;
    }
}

void vta::thread_narrow_port_RREADY() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter1.read()) && 
          esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00011001.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp3_stage0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp3_iter1.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, exitcond3_reg_8780.read()) && 
          esl_seteq<1,1,1>(ap_block_pp3_stage0_flag00011001.read(), ap_const_boolean_0)))) {
        narrow_port_RREADY = ap_const_logic_1;
    } else {
        narrow_port_RREADY = ap_const_logic_0;
    }
}

void vta::thread_narrow_port_blk_n_AR() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state42.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()))) {
        narrow_port_blk_n_AR = m_axi_narrow_port_ARREADY.read();
    } else {
        narrow_port_blk_n_AR = ap_const_logic_1;
    }
}

void vta::thread_narrow_port_blk_n_R() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp3_stage0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp3_iter1.read()) && 
          esl_seteq<1,1,1>(ap_block_pp3_stage0_flag00000000.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, exitcond3_reg_8780.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter1.read()) && 
          esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00000000.read(), ap_const_boolean_0)))) {
        narrow_port_blk_n_R = m_axi_narrow_port_RVALID.read();
    } else {
        narrow_port_blk_n_R = ap_const_logic_1;
    }
}

void vta::thread_opcode_V_fu_1085_p1() {
    opcode_V_fu_1085_p1 = ins_port_RDATA.read().range(2-1, 0);
}

void vta::thread_outputs_V12_sum_cast_fu_1225_p1() {
    outputs_V12_sum_cast_fu_1225_p1 = esl_zext<64,33>(outputs_V12_sum_reg_8614.read());
}

void vta::thread_outputs_V12_sum_fu_1142_p2() {
    outputs_V12_sum_fu_1142_p2 = (!lhs_V_5_cast_fu_1138_p1.read().is_01() || !tmp_2_cast_reg_8534.read().is_01())? sc_lv<33>(): (sc_biguint<33>(lhs_V_5_cast_fu_1138_p1.read()) + sc_biguint<33>(tmp_2_cast_reg_8534.read()));
}

void vta::thread_p_i_cast_fu_1438_p1() {
    p_i_cast_fu_1438_p1 = esl_zext<15,14>(sram_base_V_reg_8588.read());
}

void vta::thread_pc_1_fu_1079_p2() {
    pc_1_fu_1079_p2 = (!pc_reg_893.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_biguint<32>(pc_reg_893.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void vta::thread_r_V_2_cast_cast_fu_1188_p1() {
    r_V_2_cast_cast_fu_1188_p1 = esl_zext<37,36>(r_V_fu_1180_p3.read());
}

void vta::thread_r_V_fu_1180_p3() {
    r_V_fu_1180_p3 = esl_concat<32,4>(dram_base_V_fu_1115_p4.read(), ap_const_lv4_0);
}

void vta::thread_temp_V_1_0_0_s_fu_7090_p2() {
    temp_V_1_0_0_s_fu_7090_p2 = (!tmp8_cast_fu_7087_p1.read().is_01() || !tmp1_fu_7082_p2.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp8_cast_fu_7087_p1.read()) + sc_biguint<32>(tmp1_fu_7082_p2.read()));
}

void vta::thread_temp_V_1_0_10_s_fu_7260_p2() {
    temp_V_1_0_10_s_fu_7260_p2 = (!tmp158_cast_fu_7257_p1.read().is_01() || !tmp151_fu_7252_p2.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp158_cast_fu_7257_p1.read()) + sc_biguint<32>(tmp151_fu_7252_p2.read()));
}

void vta::thread_temp_V_1_0_11_s_fu_7277_p2() {
    temp_V_1_0_11_s_fu_7277_p2 = (!tmp173_cast_fu_7274_p1.read().is_01() || !tmp166_fu_7269_p2.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp173_cast_fu_7274_p1.read()) + sc_biguint<32>(tmp166_fu_7269_p2.read()));
}

void vta::thread_temp_V_1_0_12_s_fu_7294_p2() {
    temp_V_1_0_12_s_fu_7294_p2 = (!tmp188_cast_fu_7291_p1.read().is_01() || !tmp181_fu_7286_p2.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp188_cast_fu_7291_p1.read()) + sc_biguint<32>(tmp181_fu_7286_p2.read()));
}

void vta::thread_temp_V_1_0_13_s_fu_7311_p2() {
    temp_V_1_0_13_s_fu_7311_p2 = (!tmp203_cast_fu_7308_p1.read().is_01() || !tmp196_fu_7303_p2.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp203_cast_fu_7308_p1.read()) + sc_biguint<32>(tmp196_fu_7303_p2.read()));
}

void vta::thread_temp_V_1_0_14_s_fu_7328_p2() {
    temp_V_1_0_14_s_fu_7328_p2 = (!tmp218_cast_fu_7325_p1.read().is_01() || !tmp211_fu_7320_p2.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp218_cast_fu_7325_p1.read()) + sc_biguint<32>(tmp211_fu_7320_p2.read()));
}

void vta::thread_temp_V_1_0_15_s_fu_7345_p2() {
    temp_V_1_0_15_s_fu_7345_p2 = (!tmp233_cast_fu_7342_p1.read().is_01() || !tmp226_fu_7337_p2.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp233_cast_fu_7342_p1.read()) + sc_biguint<32>(tmp226_fu_7337_p2.read()));
}

void vta::thread_temp_V_1_0_1_s_fu_7107_p2() {
    temp_V_1_0_1_s_fu_7107_p2 = (!tmp23_cast_fu_7104_p1.read().is_01() || !tmp16_fu_7099_p2.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp23_cast_fu_7104_p1.read()) + sc_biguint<32>(tmp16_fu_7099_p2.read()));
}

void vta::thread_temp_V_1_0_2_s_fu_7124_p2() {
    temp_V_1_0_2_s_fu_7124_p2 = (!tmp38_cast_fu_7121_p1.read().is_01() || !tmp31_fu_7116_p2.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp38_cast_fu_7121_p1.read()) + sc_biguint<32>(tmp31_fu_7116_p2.read()));
}

void vta::thread_temp_V_1_0_3_s_fu_7141_p2() {
    temp_V_1_0_3_s_fu_7141_p2 = (!tmp53_cast_fu_7138_p1.read().is_01() || !tmp46_fu_7133_p2.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp53_cast_fu_7138_p1.read()) + sc_biguint<32>(tmp46_fu_7133_p2.read()));
}

void vta::thread_temp_V_1_0_4_s_fu_7158_p2() {
    temp_V_1_0_4_s_fu_7158_p2 = (!tmp68_cast_fu_7155_p1.read().is_01() || !tmp61_fu_7150_p2.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp68_cast_fu_7155_p1.read()) + sc_biguint<32>(tmp61_fu_7150_p2.read()));
}

void vta::thread_temp_V_1_0_5_s_fu_7175_p2() {
    temp_V_1_0_5_s_fu_7175_p2 = (!tmp83_cast_fu_7172_p1.read().is_01() || !tmp76_fu_7167_p2.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp83_cast_fu_7172_p1.read()) + sc_biguint<32>(tmp76_fu_7167_p2.read()));
}

void vta::thread_temp_V_1_0_6_s_fu_7192_p2() {
    temp_V_1_0_6_s_fu_7192_p2 = (!tmp98_cast_fu_7189_p1.read().is_01() || !tmp91_fu_7184_p2.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp98_cast_fu_7189_p1.read()) + sc_biguint<32>(tmp91_fu_7184_p2.read()));
}

void vta::thread_temp_V_1_0_7_s_fu_7209_p2() {
    temp_V_1_0_7_s_fu_7209_p2 = (!tmp113_cast_fu_7206_p1.read().is_01() || !tmp106_fu_7201_p2.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp113_cast_fu_7206_p1.read()) + sc_biguint<32>(tmp106_fu_7201_p2.read()));
}

void vta::thread_temp_V_1_0_8_s_fu_7226_p2() {
    temp_V_1_0_8_s_fu_7226_p2 = (!tmp128_cast_fu_7223_p1.read().is_01() || !tmp121_fu_7218_p2.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp128_cast_fu_7223_p1.read()) + sc_biguint<32>(tmp121_fu_7218_p2.read()));
}

void vta::thread_temp_V_1_0_9_s_fu_7243_p2() {
    temp_V_1_0_9_s_fu_7243_p2 = (!tmp143_cast_fu_7240_p1.read().is_01() || !tmp136_fu_7235_p2.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp143_cast_fu_7240_p1.read()) + sc_biguint<32>(tmp136_fu_7235_p2.read()));
}

void vta::thread_tmp100_cast_fu_6298_p1() {
    tmp100_cast_fu_6298_p1 = esl_sext<18,17>(tmp100_reg_11891.read());
}

void vta::thread_tmp101_cast_fu_6301_p1() {
    tmp101_cast_fu_6301_p1 = esl_sext<18,17>(tmp101_reg_11896.read());
}

void vta::thread_tmp102_cast_fu_6844_p1() {
    tmp102_cast_fu_6844_p1 = esl_sext<19,18>(tmp102_fu_6838_p2.read());
}

void vta::thread_tmp102_fu_6838_p2() {
    tmp102_fu_6838_p2 = (!tmp104_cast_fu_6835_p1.read().is_01() || !tmp103_cast_fu_6832_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp104_cast_fu_6835_p1.read()) + sc_bigint<18>(tmp103_cast_fu_6832_p1.read()));
}

void vta::thread_tmp103_cast_fu_6832_p1() {
    tmp103_cast_fu_6832_p1 = esl_sext<18,17>(tmp103_reg_12386.read());
}

void vta::thread_tmp104_cast_fu_6835_p1() {
    tmp104_cast_fu_6835_p1 = esl_sext<18,17>(tmp104_reg_12391.read());
}

void vta::thread_tmp106_fu_7201_p2() {
    tmp106_fu_7201_p2 = (!tmp110_cast_fu_7198_p1.read().is_01() || !ap_reg_pp5_iter9_tmp107_reg_12396.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp110_cast_fu_7198_p1.read()) + sc_biguint<32>(ap_reg_pp5_iter9_tmp107_reg_12396.read()));
}

void vta::thread_tmp107_fu_6322_p2() {
    tmp107_fu_6322_p2 = (!tmp109_cast_fu_6319_p1.read().is_01() || !ap_reg_pp5_iter7_tmp108_reg_10796.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp109_cast_fu_6319_p1.read()) + sc_bigint<32>(ap_reg_pp5_iter7_tmp108_reg_10796.read()));
}

void vta::thread_tmp109_cast_fu_6319_p1() {
    tmp109_cast_fu_6319_p1 = esl_sext<32,17>(tmp109_reg_11911.read());
}

void vta::thread_tmp10_cast_fu_6052_p1() {
    tmp10_cast_fu_6052_p1 = esl_sext<18,17>(tmp10_reg_11681.read());
}

void vta::thread_tmp110_cast_fu_7198_p1() {
    tmp110_cast_fu_7198_p1 = esl_sext<32,18>(ap_reg_pp5_iter9_tmp110_reg_12401.read());
}

void vta::thread_tmp110_fu_6333_p2() {
    tmp110_fu_6333_p2 = (!tmp112_cast_fu_6330_p1.read().is_01() || !tmp111_cast_fu_6327_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp112_cast_fu_6330_p1.read()) + sc_bigint<18>(tmp111_cast_fu_6327_p1.read()));
}

void vta::thread_tmp111_cast_fu_6327_p1() {
    tmp111_cast_fu_6327_p1 = esl_sext<18,17>(tmp111_reg_11916.read());
}

void vta::thread_tmp112_cast_fu_6330_p1() {
    tmp112_cast_fu_6330_p1 = esl_sext<18,17>(tmp112_reg_11921.read());
}

void vta::thread_tmp113_cast_fu_7206_p1() {
    tmp113_cast_fu_7206_p1 = esl_sext<32,19>(tmp113_reg_12656.read());
}

void vta::thread_tmp113_fu_6873_p2() {
    tmp113_fu_6873_p2 = (!tmp117_cast_fu_6869_p1.read().is_01() || !tmp114_cast_fu_6854_p1.read().is_01())? sc_lv<19>(): (sc_bigint<19>(tmp117_cast_fu_6869_p1.read()) + sc_bigint<19>(tmp114_cast_fu_6854_p1.read()));
}

void vta::thread_tmp114_cast_fu_6854_p1() {
    tmp114_cast_fu_6854_p1 = esl_sext<19,18>(tmp114_reg_12406.read());
}

void vta::thread_tmp114_fu_6345_p2() {
    tmp114_fu_6345_p2 = (!tmp116_cast_fu_6342_p1.read().is_01() || !tmp115_cast_fu_6339_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp116_cast_fu_6342_p1.read()) + sc_bigint<18>(tmp115_cast_fu_6339_p1.read()));
}

void vta::thread_tmp115_cast_fu_6339_p1() {
    tmp115_cast_fu_6339_p1 = esl_sext<18,17>(tmp115_reg_11926.read());
}

void vta::thread_tmp116_cast_fu_6342_p1() {
    tmp116_cast_fu_6342_p1 = esl_sext<18,17>(tmp116_reg_11931.read());
}

void vta::thread_tmp117_cast_fu_6869_p1() {
    tmp117_cast_fu_6869_p1 = esl_sext<19,18>(tmp117_fu_6863_p2.read());
}

void vta::thread_tmp117_fu_6863_p2() {
    tmp117_fu_6863_p2 = (!tmp119_cast_fu_6860_p1.read().is_01() || !tmp118_cast_fu_6857_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp119_cast_fu_6860_p1.read()) + sc_bigint<18>(tmp118_cast_fu_6857_p1.read()));
}

void vta::thread_tmp118_cast_fu_6857_p1() {
    tmp118_cast_fu_6857_p1 = esl_sext<18,17>(tmp118_reg_12411.read());
}

void vta::thread_tmp119_cast_fu_6860_p1() {
    tmp119_cast_fu_6860_p1 = esl_sext<18,17>(tmp119_reg_12416.read());
}

void vta::thread_tmp11_cast_fu_6055_p1() {
    tmp11_cast_fu_6055_p1 = esl_sext<18,17>(tmp11_reg_11686.read());
}

void vta::thread_tmp121_fu_7218_p2() {
    tmp121_fu_7218_p2 = (!tmp125_cast_fu_7215_p1.read().is_01() || !ap_reg_pp5_iter9_tmp122_reg_12421.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp125_cast_fu_7215_p1.read()) + sc_biguint<32>(ap_reg_pp5_iter9_tmp122_reg_12421.read()));
}

void vta::thread_tmp122_fu_6363_p2() {
    tmp122_fu_6363_p2 = (!tmp124_cast_fu_6360_p1.read().is_01() || !ap_reg_pp5_iter7_tmp123_reg_10831.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp124_cast_fu_6360_p1.read()) + sc_bigint<32>(ap_reg_pp5_iter7_tmp123_reg_10831.read()));
}

void vta::thread_tmp124_cast_fu_6360_p1() {
    tmp124_cast_fu_6360_p1 = esl_sext<32,17>(tmp124_reg_11946.read());
}

void vta::thread_tmp125_cast_fu_7215_p1() {
    tmp125_cast_fu_7215_p1 = esl_sext<32,18>(ap_reg_pp5_iter9_tmp125_reg_12426.read());
}

void vta::thread_tmp125_fu_6374_p2() {
    tmp125_fu_6374_p2 = (!tmp127_cast_fu_6371_p1.read().is_01() || !tmp126_cast_fu_6368_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp127_cast_fu_6371_p1.read()) + sc_bigint<18>(tmp126_cast_fu_6368_p1.read()));
}

void vta::thread_tmp126_cast_fu_6368_p1() {
    tmp126_cast_fu_6368_p1 = esl_sext<18,17>(tmp126_reg_11951.read());
}

void vta::thread_tmp127_cast_fu_6371_p1() {
    tmp127_cast_fu_6371_p1 = esl_sext<18,17>(tmp127_reg_11956.read());
}

void vta::thread_tmp128_cast_fu_7223_p1() {
    tmp128_cast_fu_7223_p1 = esl_sext<32,19>(tmp128_reg_12661.read());
}

void vta::thread_tmp128_fu_6898_p2() {
    tmp128_fu_6898_p2 = (!tmp132_cast_fu_6894_p1.read().is_01() || !tmp129_cast_fu_6879_p1.read().is_01())? sc_lv<19>(): (sc_bigint<19>(tmp132_cast_fu_6894_p1.read()) + sc_bigint<19>(tmp129_cast_fu_6879_p1.read()));
}

void vta::thread_tmp129_cast_fu_6879_p1() {
    tmp129_cast_fu_6879_p1 = esl_sext<19,18>(tmp129_reg_12431.read());
}

void vta::thread_tmp129_fu_6386_p2() {
    tmp129_fu_6386_p2 = (!tmp131_cast_fu_6383_p1.read().is_01() || !tmp130_cast_fu_6380_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp131_cast_fu_6383_p1.read()) + sc_bigint<18>(tmp130_cast_fu_6380_p1.read()));
}

void vta::thread_tmp12_cast_fu_6694_p1() {
    tmp12_cast_fu_6694_p1 = esl_sext<19,18>(tmp12_fu_6688_p2.read());
}

void vta::thread_tmp12_fu_6688_p2() {
    tmp12_fu_6688_p2 = (!tmp14_cast_fu_6685_p1.read().is_01() || !tmp13_cast_fu_6682_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp14_cast_fu_6685_p1.read()) + sc_bigint<18>(tmp13_cast_fu_6682_p1.read()));
}

void vta::thread_tmp130_cast_fu_6380_p1() {
    tmp130_cast_fu_6380_p1 = esl_sext<18,17>(tmp130_reg_11961.read());
}

void vta::thread_tmp131_cast_fu_6383_p1() {
    tmp131_cast_fu_6383_p1 = esl_sext<18,17>(tmp131_reg_11966.read());
}

void vta::thread_tmp132_cast_fu_6894_p1() {
    tmp132_cast_fu_6894_p1 = esl_sext<19,18>(tmp132_fu_6888_p2.read());
}

void vta::thread_tmp132_fu_6888_p2() {
    tmp132_fu_6888_p2 = (!tmp134_cast_fu_6885_p1.read().is_01() || !tmp133_cast_fu_6882_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp134_cast_fu_6885_p1.read()) + sc_bigint<18>(tmp133_cast_fu_6882_p1.read()));
}

void vta::thread_tmp133_cast_fu_6882_p1() {
    tmp133_cast_fu_6882_p1 = esl_sext<18,17>(tmp133_reg_12436.read());
}

void vta::thread_tmp134_cast_fu_6885_p1() {
    tmp134_cast_fu_6885_p1 = esl_sext<18,17>(tmp134_reg_12441.read());
}

void vta::thread_tmp136_fu_7235_p2() {
    tmp136_fu_7235_p2 = (!tmp140_cast_fu_7232_p1.read().is_01() || !ap_reg_pp5_iter9_tmp137_reg_12446.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp140_cast_fu_7232_p1.read()) + sc_biguint<32>(ap_reg_pp5_iter9_tmp137_reg_12446.read()));
}

void vta::thread_tmp137_fu_6404_p2() {
    tmp137_fu_6404_p2 = (!tmp139_cast_fu_6401_p1.read().is_01() || !ap_reg_pp5_iter7_tmp138_reg_10866.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp139_cast_fu_6401_p1.read()) + sc_bigint<32>(ap_reg_pp5_iter7_tmp138_reg_10866.read()));
}

void vta::thread_tmp139_cast_fu_6401_p1() {
    tmp139_cast_fu_6401_p1 = esl_sext<32,17>(tmp139_reg_11981.read());
}

void vta::thread_tmp13_cast_fu_6682_p1() {
    tmp13_cast_fu_6682_p1 = esl_sext<18,17>(tmp13_reg_12236.read());
}

void vta::thread_tmp140_cast_fu_7232_p1() {
    tmp140_cast_fu_7232_p1 = esl_sext<32,18>(ap_reg_pp5_iter9_tmp140_reg_12451.read());
}

void vta::thread_tmp140_fu_6415_p2() {
    tmp140_fu_6415_p2 = (!tmp142_cast_fu_6412_p1.read().is_01() || !tmp141_cast_fu_6409_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp142_cast_fu_6412_p1.read()) + sc_bigint<18>(tmp141_cast_fu_6409_p1.read()));
}

void vta::thread_tmp141_cast_fu_6409_p1() {
    tmp141_cast_fu_6409_p1 = esl_sext<18,17>(tmp141_reg_11986.read());
}

void vta::thread_tmp142_cast_fu_6412_p1() {
    tmp142_cast_fu_6412_p1 = esl_sext<18,17>(tmp142_reg_11991.read());
}

void vta::thread_tmp143_cast_fu_7240_p1() {
    tmp143_cast_fu_7240_p1 = esl_sext<32,19>(tmp143_reg_12666.read());
}

void vta::thread_tmp143_fu_6923_p2() {
    tmp143_fu_6923_p2 = (!tmp147_cast_fu_6919_p1.read().is_01() || !tmp144_cast_fu_6904_p1.read().is_01())? sc_lv<19>(): (sc_bigint<19>(tmp147_cast_fu_6919_p1.read()) + sc_bigint<19>(tmp144_cast_fu_6904_p1.read()));
}

void vta::thread_tmp144_cast_fu_6904_p1() {
    tmp144_cast_fu_6904_p1 = esl_sext<19,18>(tmp144_reg_12456.read());
}

void vta::thread_tmp144_fu_6427_p2() {
    tmp144_fu_6427_p2 = (!tmp146_cast_fu_6424_p1.read().is_01() || !tmp145_cast_fu_6421_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp146_cast_fu_6424_p1.read()) + sc_bigint<18>(tmp145_cast_fu_6421_p1.read()));
}

void vta::thread_tmp145_cast_fu_6421_p1() {
    tmp145_cast_fu_6421_p1 = esl_sext<18,17>(tmp145_reg_11996.read());
}

void vta::thread_tmp146_cast_fu_6424_p1() {
    tmp146_cast_fu_6424_p1 = esl_sext<18,17>(tmp146_reg_12001.read());
}

void vta::thread_tmp147_cast_fu_6919_p1() {
    tmp147_cast_fu_6919_p1 = esl_sext<19,18>(tmp147_fu_6913_p2.read());
}

void vta::thread_tmp147_fu_6913_p2() {
    tmp147_fu_6913_p2 = (!tmp149_cast_fu_6910_p1.read().is_01() || !tmp148_cast_fu_6907_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp149_cast_fu_6910_p1.read()) + sc_bigint<18>(tmp148_cast_fu_6907_p1.read()));
}

void vta::thread_tmp148_cast_fu_6907_p1() {
    tmp148_cast_fu_6907_p1 = esl_sext<18,17>(tmp148_reg_12461.read());
}

void vta::thread_tmp149_cast_fu_6910_p1() {
    tmp149_cast_fu_6910_p1 = esl_sext<18,17>(tmp149_reg_12466.read());
}

void vta::thread_tmp14_cast_fu_6685_p1() {
    tmp14_cast_fu_6685_p1 = esl_sext<18,17>(tmp14_reg_12241.read());
}

void vta::thread_tmp151_fu_7252_p2() {
    tmp151_fu_7252_p2 = (!tmp155_cast_fu_7249_p1.read().is_01() || !ap_reg_pp5_iter9_tmp152_reg_12471.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp155_cast_fu_7249_p1.read()) + sc_biguint<32>(ap_reg_pp5_iter9_tmp152_reg_12471.read()));
}

void vta::thread_tmp152_fu_6445_p2() {
    tmp152_fu_6445_p2 = (!tmp154_cast_fu_6442_p1.read().is_01() || !ap_reg_pp5_iter7_tmp153_reg_10901.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp154_cast_fu_6442_p1.read()) + sc_bigint<32>(ap_reg_pp5_iter7_tmp153_reg_10901.read()));
}

void vta::thread_tmp154_cast_fu_6442_p1() {
    tmp154_cast_fu_6442_p1 = esl_sext<32,17>(tmp154_reg_12016.read());
}

void vta::thread_tmp155_cast_fu_7249_p1() {
    tmp155_cast_fu_7249_p1 = esl_sext<32,18>(ap_reg_pp5_iter9_tmp155_reg_12476.read());
}

void vta::thread_tmp155_fu_6456_p2() {
    tmp155_fu_6456_p2 = (!tmp157_cast_fu_6453_p1.read().is_01() || !tmp156_cast_fu_6450_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp157_cast_fu_6453_p1.read()) + sc_bigint<18>(tmp156_cast_fu_6450_p1.read()));
}

void vta::thread_tmp156_cast_fu_6450_p1() {
    tmp156_cast_fu_6450_p1 = esl_sext<18,17>(tmp156_reg_12021.read());
}

void vta::thread_tmp157_cast_fu_6453_p1() {
    tmp157_cast_fu_6453_p1 = esl_sext<18,17>(tmp157_reg_12026.read());
}

void vta::thread_tmp158_cast_fu_7257_p1() {
    tmp158_cast_fu_7257_p1 = esl_sext<32,19>(tmp158_reg_12671.read());
}

void vta::thread_tmp158_fu_6948_p2() {
    tmp158_fu_6948_p2 = (!tmp162_cast_fu_6944_p1.read().is_01() || !tmp159_cast_fu_6929_p1.read().is_01())? sc_lv<19>(): (sc_bigint<19>(tmp162_cast_fu_6944_p1.read()) + sc_bigint<19>(tmp159_cast_fu_6929_p1.read()));
}

void vta::thread_tmp159_cast_fu_6929_p1() {
    tmp159_cast_fu_6929_p1 = esl_sext<19,18>(tmp159_reg_12481.read());
}

void vta::thread_tmp159_fu_6468_p2() {
    tmp159_fu_6468_p2 = (!tmp161_cast_fu_6465_p1.read().is_01() || !tmp160_cast_fu_6462_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp161_cast_fu_6465_p1.read()) + sc_bigint<18>(tmp160_cast_fu_6462_p1.read()));
}

void vta::thread_tmp160_cast_fu_6462_p1() {
    tmp160_cast_fu_6462_p1 = esl_sext<18,17>(tmp160_reg_12031.read());
}

void vta::thread_tmp161_cast_fu_6465_p1() {
    tmp161_cast_fu_6465_p1 = esl_sext<18,17>(tmp161_reg_12036.read());
}

void vta::thread_tmp162_cast_fu_6944_p1() {
    tmp162_cast_fu_6944_p1 = esl_sext<19,18>(tmp162_fu_6938_p2.read());
}

void vta::thread_tmp162_fu_6938_p2() {
    tmp162_fu_6938_p2 = (!tmp164_cast_fu_6935_p1.read().is_01() || !tmp163_cast_fu_6932_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp164_cast_fu_6935_p1.read()) + sc_bigint<18>(tmp163_cast_fu_6932_p1.read()));
}

void vta::thread_tmp163_cast_fu_6932_p1() {
    tmp163_cast_fu_6932_p1 = esl_sext<18,17>(tmp163_reg_12486.read());
}

void vta::thread_tmp164_cast_fu_6935_p1() {
    tmp164_cast_fu_6935_p1 = esl_sext<18,17>(tmp164_reg_12491.read());
}

void vta::thread_tmp166_fu_7269_p2() {
    tmp166_fu_7269_p2 = (!tmp170_cast_fu_7266_p1.read().is_01() || !ap_reg_pp5_iter9_tmp167_reg_12496.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp170_cast_fu_7266_p1.read()) + sc_biguint<32>(ap_reg_pp5_iter9_tmp167_reg_12496.read()));
}

void vta::thread_tmp167_fu_6486_p2() {
    tmp167_fu_6486_p2 = (!tmp169_cast_fu_6483_p1.read().is_01() || !ap_reg_pp5_iter7_tmp168_reg_10936.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp169_cast_fu_6483_p1.read()) + sc_bigint<32>(ap_reg_pp5_iter7_tmp168_reg_10936.read()));
}

void vta::thread_tmp169_cast_fu_6483_p1() {
    tmp169_cast_fu_6483_p1 = esl_sext<32,17>(tmp169_reg_12051.read());
}

void vta::thread_tmp16_fu_7099_p2() {
    tmp16_fu_7099_p2 = (!tmp20_cast_fu_7096_p1.read().is_01() || !ap_reg_pp5_iter9_tmp17_reg_12246.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp20_cast_fu_7096_p1.read()) + sc_biguint<32>(ap_reg_pp5_iter9_tmp17_reg_12246.read()));
}

void vta::thread_tmp170_cast_fu_7266_p1() {
    tmp170_cast_fu_7266_p1 = esl_sext<32,18>(ap_reg_pp5_iter9_tmp170_reg_12501.read());
}

void vta::thread_tmp170_fu_6497_p2() {
    tmp170_fu_6497_p2 = (!tmp172_cast_fu_6494_p1.read().is_01() || !tmp171_cast_fu_6491_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp172_cast_fu_6494_p1.read()) + sc_bigint<18>(tmp171_cast_fu_6491_p1.read()));
}

void vta::thread_tmp171_cast_fu_6491_p1() {
    tmp171_cast_fu_6491_p1 = esl_sext<18,17>(tmp171_reg_12056.read());
}

void vta::thread_tmp172_cast_fu_6494_p1() {
    tmp172_cast_fu_6494_p1 = esl_sext<18,17>(tmp172_reg_12061.read());
}

void vta::thread_tmp173_cast_fu_7274_p1() {
    tmp173_cast_fu_7274_p1 = esl_sext<32,19>(tmp173_reg_12676.read());
}

void vta::thread_tmp173_fu_6973_p2() {
    tmp173_fu_6973_p2 = (!tmp177_cast_fu_6969_p1.read().is_01() || !tmp174_cast_fu_6954_p1.read().is_01())? sc_lv<19>(): (sc_bigint<19>(tmp177_cast_fu_6969_p1.read()) + sc_bigint<19>(tmp174_cast_fu_6954_p1.read()));
}

void vta::thread_tmp174_cast_fu_6954_p1() {
    tmp174_cast_fu_6954_p1 = esl_sext<19,18>(tmp174_reg_12506.read());
}

void vta::thread_tmp174_fu_6509_p2() {
    tmp174_fu_6509_p2 = (!tmp176_cast_fu_6506_p1.read().is_01() || !tmp175_cast_fu_6503_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp176_cast_fu_6506_p1.read()) + sc_bigint<18>(tmp175_cast_fu_6503_p1.read()));
}

void vta::thread_tmp175_cast_fu_6503_p1() {
    tmp175_cast_fu_6503_p1 = esl_sext<18,17>(tmp175_reg_12066.read());
}

void vta::thread_tmp176_cast_fu_6506_p1() {
    tmp176_cast_fu_6506_p1 = esl_sext<18,17>(tmp176_reg_12071.read());
}

void vta::thread_tmp177_cast_fu_6969_p1() {
    tmp177_cast_fu_6969_p1 = esl_sext<19,18>(tmp177_fu_6963_p2.read());
}

void vta::thread_tmp177_fu_6963_p2() {
    tmp177_fu_6963_p2 = (!tmp179_cast_fu_6960_p1.read().is_01() || !tmp178_cast_fu_6957_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp179_cast_fu_6960_p1.read()) + sc_bigint<18>(tmp178_cast_fu_6957_p1.read()));
}

void vta::thread_tmp178_cast_fu_6957_p1() {
    tmp178_cast_fu_6957_p1 = esl_sext<18,17>(tmp178_reg_12511.read());
}

void vta::thread_tmp179_cast_fu_6960_p1() {
    tmp179_cast_fu_6960_p1 = esl_sext<18,17>(tmp179_reg_12516.read());
}

void vta::thread_tmp17_fu_6076_p2() {
    tmp17_fu_6076_p2 = (!tmp19_cast_fu_6073_p1.read().is_01() || !ap_reg_pp5_iter7_tmp18_reg_10586.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp19_cast_fu_6073_p1.read()) + sc_bigint<32>(ap_reg_pp5_iter7_tmp18_reg_10586.read()));
}

void vta::thread_tmp181_fu_7286_p2() {
    tmp181_fu_7286_p2 = (!tmp185_cast_fu_7283_p1.read().is_01() || !ap_reg_pp5_iter9_tmp182_reg_12521.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp185_cast_fu_7283_p1.read()) + sc_biguint<32>(ap_reg_pp5_iter9_tmp182_reg_12521.read()));
}

void vta::thread_tmp182_fu_6527_p2() {
    tmp182_fu_6527_p2 = (!tmp184_cast_fu_6524_p1.read().is_01() || !ap_reg_pp5_iter7_tmp183_reg_10971.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp184_cast_fu_6524_p1.read()) + sc_bigint<32>(ap_reg_pp5_iter7_tmp183_reg_10971.read()));
}

void vta::thread_tmp184_cast_fu_6524_p1() {
    tmp184_cast_fu_6524_p1 = esl_sext<32,17>(tmp184_reg_12086.read());
}

void vta::thread_tmp185_cast_fu_7283_p1() {
    tmp185_cast_fu_7283_p1 = esl_sext<32,18>(ap_reg_pp5_iter9_tmp185_reg_12526.read());
}

void vta::thread_tmp185_fu_6538_p2() {
    tmp185_fu_6538_p2 = (!tmp187_cast_fu_6535_p1.read().is_01() || !tmp186_cast_fu_6532_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp187_cast_fu_6535_p1.read()) + sc_bigint<18>(tmp186_cast_fu_6532_p1.read()));
}

void vta::thread_tmp186_cast_fu_6532_p1() {
    tmp186_cast_fu_6532_p1 = esl_sext<18,17>(tmp186_reg_12091.read());
}

void vta::thread_tmp187_cast_fu_6535_p1() {
    tmp187_cast_fu_6535_p1 = esl_sext<18,17>(tmp187_reg_12096.read());
}

void vta::thread_tmp188_cast_fu_7291_p1() {
    tmp188_cast_fu_7291_p1 = esl_sext<32,19>(tmp188_reg_12681.read());
}

void vta::thread_tmp188_fu_6998_p2() {
    tmp188_fu_6998_p2 = (!tmp192_cast_fu_6994_p1.read().is_01() || !tmp189_cast_fu_6979_p1.read().is_01())? sc_lv<19>(): (sc_bigint<19>(tmp192_cast_fu_6994_p1.read()) + sc_bigint<19>(tmp189_cast_fu_6979_p1.read()));
}

void vta::thread_tmp189_cast_fu_6979_p1() {
    tmp189_cast_fu_6979_p1 = esl_sext<19,18>(tmp189_reg_12531.read());
}

void vta::thread_tmp189_fu_6550_p2() {
    tmp189_fu_6550_p2 = (!tmp191_cast_fu_6547_p1.read().is_01() || !tmp190_cast_fu_6544_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp191_cast_fu_6547_p1.read()) + sc_bigint<18>(tmp190_cast_fu_6544_p1.read()));
}

void vta::thread_tmp190_cast_fu_6544_p1() {
    tmp190_cast_fu_6544_p1 = esl_sext<18,17>(tmp190_reg_12101.read());
}

void vta::thread_tmp191_cast_fu_6547_p1() {
    tmp191_cast_fu_6547_p1 = esl_sext<18,17>(tmp191_reg_12106.read());
}

void vta::thread_tmp192_cast_fu_6994_p1() {
    tmp192_cast_fu_6994_p1 = esl_sext<19,18>(tmp192_fu_6988_p2.read());
}

void vta::thread_tmp192_fu_6988_p2() {
    tmp192_fu_6988_p2 = (!tmp194_cast_fu_6985_p1.read().is_01() || !tmp193_cast_fu_6982_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp194_cast_fu_6985_p1.read()) + sc_bigint<18>(tmp193_cast_fu_6982_p1.read()));
}

void vta::thread_tmp193_cast_fu_6982_p1() {
    tmp193_cast_fu_6982_p1 = esl_sext<18,17>(tmp193_reg_12536.read());
}

void vta::thread_tmp194_cast_fu_6985_p1() {
    tmp194_cast_fu_6985_p1 = esl_sext<18,17>(tmp194_reg_12541.read());
}

void vta::thread_tmp196_fu_7303_p2() {
    tmp196_fu_7303_p2 = (!tmp200_cast_fu_7300_p1.read().is_01() || !ap_reg_pp5_iter9_tmp197_reg_12546.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp200_cast_fu_7300_p1.read()) + sc_biguint<32>(ap_reg_pp5_iter9_tmp197_reg_12546.read()));
}

void vta::thread_tmp197_fu_6568_p2() {
    tmp197_fu_6568_p2 = (!tmp199_cast_fu_6565_p1.read().is_01() || !ap_reg_pp5_iter7_tmp198_reg_11006.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp199_cast_fu_6565_p1.read()) + sc_bigint<32>(ap_reg_pp5_iter7_tmp198_reg_11006.read()));
}

void vta::thread_tmp199_cast_fu_6565_p1() {
    tmp199_cast_fu_6565_p1 = esl_sext<32,17>(tmp199_reg_12121.read());
}

void vta::thread_tmp19_cast_fu_6073_p1() {
    tmp19_cast_fu_6073_p1 = esl_sext<32,17>(tmp19_reg_11701.read());
}

void vta::thread_tmp1_fu_7082_p2() {
    tmp1_fu_7082_p2 = (!tmp5_cast_fu_7079_p1.read().is_01() || !ap_reg_pp5_iter9_tmp2_reg_12221.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp5_cast_fu_7079_p1.read()) + sc_biguint<32>(ap_reg_pp5_iter9_tmp2_reg_12221.read()));
}

void vta::thread_tmp200_cast_fu_7300_p1() {
    tmp200_cast_fu_7300_p1 = esl_sext<32,18>(ap_reg_pp5_iter9_tmp200_reg_12551.read());
}

void vta::thread_tmp200_fu_6579_p2() {
    tmp200_fu_6579_p2 = (!tmp202_cast_fu_6576_p1.read().is_01() || !tmp201_cast_fu_6573_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp202_cast_fu_6576_p1.read()) + sc_bigint<18>(tmp201_cast_fu_6573_p1.read()));
}

void vta::thread_tmp201_cast_fu_6573_p1() {
    tmp201_cast_fu_6573_p1 = esl_sext<18,17>(tmp201_reg_12126.read());
}

void vta::thread_tmp202_cast_fu_6576_p1() {
    tmp202_cast_fu_6576_p1 = esl_sext<18,17>(tmp202_reg_12131.read());
}

void vta::thread_tmp203_cast_fu_7308_p1() {
    tmp203_cast_fu_7308_p1 = esl_sext<32,19>(tmp203_reg_12686.read());
}

void vta::thread_tmp203_fu_7023_p2() {
    tmp203_fu_7023_p2 = (!tmp207_cast_fu_7019_p1.read().is_01() || !tmp204_cast_fu_7004_p1.read().is_01())? sc_lv<19>(): (sc_bigint<19>(tmp207_cast_fu_7019_p1.read()) + sc_bigint<19>(tmp204_cast_fu_7004_p1.read()));
}

void vta::thread_tmp204_cast_fu_7004_p1() {
    tmp204_cast_fu_7004_p1 = esl_sext<19,18>(tmp204_reg_12556.read());
}

void vta::thread_tmp204_fu_6591_p2() {
    tmp204_fu_6591_p2 = (!tmp206_cast_fu_6588_p1.read().is_01() || !tmp205_cast_fu_6585_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp206_cast_fu_6588_p1.read()) + sc_bigint<18>(tmp205_cast_fu_6585_p1.read()));
}

void vta::thread_tmp205_cast_fu_6585_p1() {
    tmp205_cast_fu_6585_p1 = esl_sext<18,17>(tmp205_reg_12136.read());
}

void vta::thread_tmp206_cast_fu_6588_p1() {
    tmp206_cast_fu_6588_p1 = esl_sext<18,17>(tmp206_reg_12141.read());
}

void vta::thread_tmp207_cast_fu_7019_p1() {
    tmp207_cast_fu_7019_p1 = esl_sext<19,18>(tmp207_fu_7013_p2.read());
}

void vta::thread_tmp207_fu_7013_p2() {
    tmp207_fu_7013_p2 = (!tmp209_cast_fu_7010_p1.read().is_01() || !tmp208_cast_fu_7007_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp209_cast_fu_7010_p1.read()) + sc_bigint<18>(tmp208_cast_fu_7007_p1.read()));
}

void vta::thread_tmp208_cast_fu_7007_p1() {
    tmp208_cast_fu_7007_p1 = esl_sext<18,17>(tmp208_reg_12561.read());
}

void vta::thread_tmp209_cast_fu_7010_p1() {
    tmp209_cast_fu_7010_p1 = esl_sext<18,17>(tmp209_reg_12566.read());
}

void vta::thread_tmp20_cast_fu_7096_p1() {
    tmp20_cast_fu_7096_p1 = esl_sext<32,18>(ap_reg_pp5_iter9_tmp20_reg_12251.read());
}

void vta::thread_tmp20_fu_6087_p2() {
    tmp20_fu_6087_p2 = (!tmp22_cast_fu_6084_p1.read().is_01() || !tmp21_cast_fu_6081_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp22_cast_fu_6084_p1.read()) + sc_bigint<18>(tmp21_cast_fu_6081_p1.read()));
}

void vta::thread_tmp211_fu_7320_p2() {
    tmp211_fu_7320_p2 = (!tmp215_cast_fu_7317_p1.read().is_01() || !ap_reg_pp5_iter9_tmp212_reg_12571.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp215_cast_fu_7317_p1.read()) + sc_biguint<32>(ap_reg_pp5_iter9_tmp212_reg_12571.read()));
}

void vta::thread_tmp212_fu_6609_p2() {
    tmp212_fu_6609_p2 = (!tmp214_cast_fu_6606_p1.read().is_01() || !ap_reg_pp5_iter7_tmp213_reg_11041.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp214_cast_fu_6606_p1.read()) + sc_bigint<32>(ap_reg_pp5_iter7_tmp213_reg_11041.read()));
}

void vta::thread_tmp214_cast_fu_6606_p1() {
    tmp214_cast_fu_6606_p1 = esl_sext<32,17>(tmp214_reg_12156.read());
}

void vta::thread_tmp215_cast_fu_7317_p1() {
    tmp215_cast_fu_7317_p1 = esl_sext<32,18>(ap_reg_pp5_iter9_tmp215_reg_12576.read());
}

void vta::thread_tmp215_fu_6620_p2() {
    tmp215_fu_6620_p2 = (!tmp217_cast_fu_6617_p1.read().is_01() || !tmp216_cast_fu_6614_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp217_cast_fu_6617_p1.read()) + sc_bigint<18>(tmp216_cast_fu_6614_p1.read()));
}

void vta::thread_tmp216_cast_fu_6614_p1() {
    tmp216_cast_fu_6614_p1 = esl_sext<18,17>(tmp216_reg_12161.read());
}

void vta::thread_tmp217_cast_fu_6617_p1() {
    tmp217_cast_fu_6617_p1 = esl_sext<18,17>(tmp217_reg_12166.read());
}

void vta::thread_tmp218_cast_fu_7325_p1() {
    tmp218_cast_fu_7325_p1 = esl_sext<32,19>(tmp218_reg_12691.read());
}

void vta::thread_tmp218_fu_7048_p2() {
    tmp218_fu_7048_p2 = (!tmp222_cast_fu_7044_p1.read().is_01() || !tmp219_cast_fu_7029_p1.read().is_01())? sc_lv<19>(): (sc_bigint<19>(tmp222_cast_fu_7044_p1.read()) + sc_bigint<19>(tmp219_cast_fu_7029_p1.read()));
}

void vta::thread_tmp219_cast_fu_7029_p1() {
    tmp219_cast_fu_7029_p1 = esl_sext<19,18>(tmp219_reg_12581.read());
}

void vta::thread_tmp219_fu_6632_p2() {
    tmp219_fu_6632_p2 = (!tmp221_cast_fu_6629_p1.read().is_01() || !tmp220_cast_fu_6626_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp221_cast_fu_6629_p1.read()) + sc_bigint<18>(tmp220_cast_fu_6626_p1.read()));
}

void vta::thread_tmp21_cast_fu_6081_p1() {
    tmp21_cast_fu_6081_p1 = esl_sext<18,17>(tmp21_reg_11706.read());
}

void vta::thread_tmp220_cast_fu_6626_p1() {
    tmp220_cast_fu_6626_p1 = esl_sext<18,17>(tmp220_reg_12171.read());
}

void vta::thread_tmp221_cast_fu_6629_p1() {
    tmp221_cast_fu_6629_p1 = esl_sext<18,17>(tmp221_reg_12176.read());
}

void vta::thread_tmp222_cast_fu_7044_p1() {
    tmp222_cast_fu_7044_p1 = esl_sext<19,18>(tmp222_fu_7038_p2.read());
}

void vta::thread_tmp222_fu_7038_p2() {
    tmp222_fu_7038_p2 = (!tmp224_cast_fu_7035_p1.read().is_01() || !tmp223_cast_fu_7032_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp224_cast_fu_7035_p1.read()) + sc_bigint<18>(tmp223_cast_fu_7032_p1.read()));
}

void vta::thread_tmp223_cast_fu_7032_p1() {
    tmp223_cast_fu_7032_p1 = esl_sext<18,17>(tmp223_reg_12586.read());
}

void vta::thread_tmp224_cast_fu_7035_p1() {
    tmp224_cast_fu_7035_p1 = esl_sext<18,17>(tmp224_reg_12591.read());
}

void vta::thread_tmp226_fu_7337_p2() {
    tmp226_fu_7337_p2 = (!tmp230_cast_fu_7334_p1.read().is_01() || !ap_reg_pp5_iter9_tmp227_reg_12596.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp230_cast_fu_7334_p1.read()) + sc_biguint<32>(ap_reg_pp5_iter9_tmp227_reg_12596.read()));
}

void vta::thread_tmp227_fu_6650_p2() {
    tmp227_fu_6650_p2 = (!tmp229_cast_fu_6647_p1.read().is_01() || !ap_reg_pp5_iter7_tmp228_reg_11076.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp229_cast_fu_6647_p1.read()) + sc_bigint<32>(ap_reg_pp5_iter7_tmp228_reg_11076.read()));
}

void vta::thread_tmp229_cast_fu_6647_p1() {
    tmp229_cast_fu_6647_p1 = esl_sext<32,17>(tmp229_reg_12191.read());
}

void vta::thread_tmp22_cast_fu_6084_p1() {
    tmp22_cast_fu_6084_p1 = esl_sext<18,17>(tmp22_reg_11711.read());
}

void vta::thread_tmp230_cast_fu_7334_p1() {
    tmp230_cast_fu_7334_p1 = esl_sext<32,18>(ap_reg_pp5_iter9_tmp230_reg_12601.read());
}

void vta::thread_tmp230_fu_6661_p2() {
    tmp230_fu_6661_p2 = (!tmp232_cast_fu_6658_p1.read().is_01() || !tmp231_cast_fu_6655_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp232_cast_fu_6658_p1.read()) + sc_bigint<18>(tmp231_cast_fu_6655_p1.read()));
}

void vta::thread_tmp231_cast_fu_6655_p1() {
    tmp231_cast_fu_6655_p1 = esl_sext<18,17>(tmp231_reg_12196.read());
}

void vta::thread_tmp232_cast_fu_6658_p1() {
    tmp232_cast_fu_6658_p1 = esl_sext<18,17>(tmp232_reg_12201.read());
}

void vta::thread_tmp233_cast_fu_7342_p1() {
    tmp233_cast_fu_7342_p1 = esl_sext<32,19>(tmp233_reg_12696.read());
}

void vta::thread_tmp233_fu_7073_p2() {
    tmp233_fu_7073_p2 = (!tmp237_cast_fu_7069_p1.read().is_01() || !tmp234_cast_fu_7054_p1.read().is_01())? sc_lv<19>(): (sc_bigint<19>(tmp237_cast_fu_7069_p1.read()) + sc_bigint<19>(tmp234_cast_fu_7054_p1.read()));
}

void vta::thread_tmp234_cast_fu_7054_p1() {
    tmp234_cast_fu_7054_p1 = esl_sext<19,18>(tmp234_reg_12606.read());
}

void vta::thread_tmp234_fu_6673_p2() {
    tmp234_fu_6673_p2 = (!tmp236_cast_fu_6670_p1.read().is_01() || !tmp235_cast_fu_6667_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp236_cast_fu_6670_p1.read()) + sc_bigint<18>(tmp235_cast_fu_6667_p1.read()));
}

void vta::thread_tmp235_cast_fu_6667_p1() {
    tmp235_cast_fu_6667_p1 = esl_sext<18,17>(tmp235_reg_12206.read());
}

void vta::thread_tmp236_cast_fu_6670_p1() {
    tmp236_cast_fu_6670_p1 = esl_sext<18,17>(tmp236_reg_12211.read());
}

void vta::thread_tmp237_cast_fu_7069_p1() {
    tmp237_cast_fu_7069_p1 = esl_sext<19,18>(tmp237_fu_7063_p2.read());
}

void vta::thread_tmp237_fu_7063_p2() {
    tmp237_fu_7063_p2 = (!tmp239_cast_fu_7060_p1.read().is_01() || !tmp238_cast_fu_7057_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp239_cast_fu_7060_p1.read()) + sc_bigint<18>(tmp238_cast_fu_7057_p1.read()));
}

void vta::thread_tmp238_cast_fu_7057_p1() {
    tmp238_cast_fu_7057_p1 = esl_sext<18,17>(tmp238_reg_12611.read());
}

void vta::thread_tmp239_cast_fu_7060_p1() {
    tmp239_cast_fu_7060_p1 = esl_sext<18,17>(tmp239_reg_12616.read());
}

void vta::thread_tmp23_cast_fu_7104_p1() {
    tmp23_cast_fu_7104_p1 = esl_sext<32,19>(tmp23_reg_12626.read());
}

void vta::thread_tmp23_fu_6723_p2() {
    tmp23_fu_6723_p2 = (!tmp27_cast_fu_6719_p1.read().is_01() || !tmp24_cast_fu_6704_p1.read().is_01())? sc_lv<19>(): (sc_bigint<19>(tmp27_cast_fu_6719_p1.read()) + sc_bigint<19>(tmp24_cast_fu_6704_p1.read()));
}

void vta::thread_tmp24_cast_fu_6704_p1() {
    tmp24_cast_fu_6704_p1 = esl_sext<19,18>(tmp24_reg_12256.read());
}

void vta::thread_tmp24_fu_6099_p2() {
    tmp24_fu_6099_p2 = (!tmp26_cast_fu_6096_p1.read().is_01() || !tmp25_cast_fu_6093_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp26_cast_fu_6096_p1.read()) + sc_bigint<18>(tmp25_cast_fu_6093_p1.read()));
}

void vta::thread_tmp25_cast_fu_6093_p1() {
    tmp25_cast_fu_6093_p1 = esl_sext<18,17>(tmp25_reg_11716.read());
}

void vta::thread_tmp26_cast_fu_6096_p1() {
    tmp26_cast_fu_6096_p1 = esl_sext<18,17>(tmp26_reg_11721.read());
}

void vta::thread_tmp27_cast_fu_6719_p1() {
    tmp27_cast_fu_6719_p1 = esl_sext<19,18>(tmp27_fu_6713_p2.read());
}

void vta::thread_tmp27_fu_6713_p2() {
    tmp27_fu_6713_p2 = (!tmp29_cast_fu_6710_p1.read().is_01() || !tmp28_cast_fu_6707_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp29_cast_fu_6710_p1.read()) + sc_bigint<18>(tmp28_cast_fu_6707_p1.read()));
}

void vta::thread_tmp28_cast_fu_6707_p1() {
    tmp28_cast_fu_6707_p1 = esl_sext<18,17>(tmp28_reg_12261.read());
}

void vta::thread_tmp29_cast_fu_6710_p1() {
    tmp29_cast_fu_6710_p1 = esl_sext<18,17>(tmp29_reg_12266.read());
}

void vta::thread_tmp2_fu_6035_p2() {
    tmp2_fu_6035_p2 = (!tmp4_cast_fu_6032_p1.read().is_01() || !ap_reg_pp5_iter7_tmp3_reg_10551.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp4_cast_fu_6032_p1.read()) + sc_bigint<32>(ap_reg_pp5_iter7_tmp3_reg_10551.read()));
}

void vta::thread_tmp31_fu_7116_p2() {
    tmp31_fu_7116_p2 = (!tmp35_cast_fu_7113_p1.read().is_01() || !ap_reg_pp5_iter9_tmp32_reg_12271.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp35_cast_fu_7113_p1.read()) + sc_biguint<32>(ap_reg_pp5_iter9_tmp32_reg_12271.read()));
}

void vta::thread_tmp32_fu_6117_p2() {
    tmp32_fu_6117_p2 = (!tmp34_cast_fu_6114_p1.read().is_01() || !ap_reg_pp5_iter7_tmp33_reg_10621.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp34_cast_fu_6114_p1.read()) + sc_bigint<32>(ap_reg_pp5_iter7_tmp33_reg_10621.read()));
}

void vta::thread_tmp34_cast_fu_6114_p1() {
    tmp34_cast_fu_6114_p1 = esl_sext<32,17>(tmp34_reg_11736.read());
}

void vta::thread_tmp35_cast_fu_7113_p1() {
    tmp35_cast_fu_7113_p1 = esl_sext<32,18>(ap_reg_pp5_iter9_tmp35_reg_12276.read());
}

void vta::thread_tmp35_fu_6128_p2() {
    tmp35_fu_6128_p2 = (!tmp37_cast_fu_6125_p1.read().is_01() || !tmp36_cast_fu_6122_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp37_cast_fu_6125_p1.read()) + sc_bigint<18>(tmp36_cast_fu_6122_p1.read()));
}

void vta::thread_tmp36_cast_fu_6122_p1() {
    tmp36_cast_fu_6122_p1 = esl_sext<18,17>(tmp36_reg_11741.read());
}

void vta::thread_tmp37_cast_fu_6125_p1() {
    tmp37_cast_fu_6125_p1 = esl_sext<18,17>(tmp37_reg_11746.read());
}

void vta::thread_tmp38_cast_fu_7121_p1() {
    tmp38_cast_fu_7121_p1 = esl_sext<32,19>(tmp38_reg_12631.read());
}

void vta::thread_tmp38_fu_6748_p2() {
    tmp38_fu_6748_p2 = (!tmp42_cast_fu_6744_p1.read().is_01() || !tmp39_cast_fu_6729_p1.read().is_01())? sc_lv<19>(): (sc_bigint<19>(tmp42_cast_fu_6744_p1.read()) + sc_bigint<19>(tmp39_cast_fu_6729_p1.read()));
}

void vta::thread_tmp39_cast_fu_6729_p1() {
    tmp39_cast_fu_6729_p1 = esl_sext<19,18>(tmp39_reg_12281.read());
}

void vta::thread_tmp39_fu_6140_p2() {
    tmp39_fu_6140_p2 = (!tmp41_cast_fu_6137_p1.read().is_01() || !tmp40_cast_fu_6134_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp41_cast_fu_6137_p1.read()) + sc_bigint<18>(tmp40_cast_fu_6134_p1.read()));
}

void vta::thread_tmp40_cast_fu_6134_p1() {
    tmp40_cast_fu_6134_p1 = esl_sext<18,17>(tmp40_reg_11751.read());
}

void vta::thread_tmp41_cast_fu_6137_p1() {
    tmp41_cast_fu_6137_p1 = esl_sext<18,17>(tmp41_reg_11756.read());
}

void vta::thread_tmp42_cast_fu_6744_p1() {
    tmp42_cast_fu_6744_p1 = esl_sext<19,18>(tmp42_fu_6738_p2.read());
}

void vta::thread_tmp42_fu_6738_p2() {
    tmp42_fu_6738_p2 = (!tmp44_cast_fu_6735_p1.read().is_01() || !tmp43_cast_fu_6732_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp44_cast_fu_6735_p1.read()) + sc_bigint<18>(tmp43_cast_fu_6732_p1.read()));
}

void vta::thread_tmp43_cast_fu_6732_p1() {
    tmp43_cast_fu_6732_p1 = esl_sext<18,17>(tmp43_reg_12286.read());
}

void vta::thread_tmp44_cast_fu_6735_p1() {
    tmp44_cast_fu_6735_p1 = esl_sext<18,17>(tmp44_reg_12291.read());
}

void vta::thread_tmp46_fu_7133_p2() {
    tmp46_fu_7133_p2 = (!tmp50_cast_fu_7130_p1.read().is_01() || !ap_reg_pp5_iter9_tmp47_reg_12296.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp50_cast_fu_7130_p1.read()) + sc_biguint<32>(ap_reg_pp5_iter9_tmp47_reg_12296.read()));
}

void vta::thread_tmp47_fu_6158_p2() {
    tmp47_fu_6158_p2 = (!tmp49_cast_fu_6155_p1.read().is_01() || !ap_reg_pp5_iter7_tmp48_reg_10656.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp49_cast_fu_6155_p1.read()) + sc_bigint<32>(ap_reg_pp5_iter7_tmp48_reg_10656.read()));
}

void vta::thread_tmp49_cast_fu_6155_p1() {
    tmp49_cast_fu_6155_p1 = esl_sext<32,17>(tmp49_reg_11771.read());
}

void vta::thread_tmp4_cast_fu_6032_p1() {
    tmp4_cast_fu_6032_p1 = esl_sext<32,17>(tmp4_reg_11666.read());
}

void vta::thread_tmp50_cast_fu_7130_p1() {
    tmp50_cast_fu_7130_p1 = esl_sext<32,18>(ap_reg_pp5_iter9_tmp50_reg_12301.read());
}

void vta::thread_tmp50_fu_6169_p2() {
    tmp50_fu_6169_p2 = (!tmp52_cast_fu_6166_p1.read().is_01() || !tmp51_cast_fu_6163_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp52_cast_fu_6166_p1.read()) + sc_bigint<18>(tmp51_cast_fu_6163_p1.read()));
}

void vta::thread_tmp51_cast_fu_6163_p1() {
    tmp51_cast_fu_6163_p1 = esl_sext<18,17>(tmp51_reg_11776.read());
}

void vta::thread_tmp52_cast_fu_6166_p1() {
    tmp52_cast_fu_6166_p1 = esl_sext<18,17>(tmp52_reg_11781.read());
}

void vta::thread_tmp53_cast_fu_7138_p1() {
    tmp53_cast_fu_7138_p1 = esl_sext<32,19>(tmp53_reg_12636.read());
}

void vta::thread_tmp53_fu_6773_p2() {
    tmp53_fu_6773_p2 = (!tmp57_cast_fu_6769_p1.read().is_01() || !tmp54_cast_fu_6754_p1.read().is_01())? sc_lv<19>(): (sc_bigint<19>(tmp57_cast_fu_6769_p1.read()) + sc_bigint<19>(tmp54_cast_fu_6754_p1.read()));
}

void vta::thread_tmp54_cast_fu_6754_p1() {
    tmp54_cast_fu_6754_p1 = esl_sext<19,18>(tmp54_reg_12306.read());
}

void vta::thread_tmp54_fu_6181_p2() {
    tmp54_fu_6181_p2 = (!tmp56_cast_fu_6178_p1.read().is_01() || !tmp55_cast_fu_6175_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp56_cast_fu_6178_p1.read()) + sc_bigint<18>(tmp55_cast_fu_6175_p1.read()));
}

void vta::thread_tmp55_cast_fu_6175_p1() {
    tmp55_cast_fu_6175_p1 = esl_sext<18,17>(tmp55_reg_11786.read());
}

void vta::thread_tmp56_cast_fu_6178_p1() {
    tmp56_cast_fu_6178_p1 = esl_sext<18,17>(tmp56_reg_11791.read());
}

void vta::thread_tmp57_cast_fu_6769_p1() {
    tmp57_cast_fu_6769_p1 = esl_sext<19,18>(tmp57_fu_6763_p2.read());
}

void vta::thread_tmp57_fu_6763_p2() {
    tmp57_fu_6763_p2 = (!tmp59_cast_fu_6760_p1.read().is_01() || !tmp58_cast_fu_6757_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp59_cast_fu_6760_p1.read()) + sc_bigint<18>(tmp58_cast_fu_6757_p1.read()));
}

void vta::thread_tmp58_cast_fu_6757_p1() {
    tmp58_cast_fu_6757_p1 = esl_sext<18,17>(tmp58_reg_12311.read());
}

void vta::thread_tmp59_cast_fu_6760_p1() {
    tmp59_cast_fu_6760_p1 = esl_sext<18,17>(tmp59_reg_12316.read());
}

void vta::thread_tmp5_cast_fu_7079_p1() {
    tmp5_cast_fu_7079_p1 = esl_sext<32,18>(ap_reg_pp5_iter9_tmp5_reg_12226.read());
}

void vta::thread_tmp5_fu_6046_p2() {
    tmp5_fu_6046_p2 = (!tmp7_cast_fu_6043_p1.read().is_01() || !tmp6_cast_fu_6040_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp7_cast_fu_6043_p1.read()) + sc_bigint<18>(tmp6_cast_fu_6040_p1.read()));
}

void vta::thread_tmp61_fu_7150_p2() {
    tmp61_fu_7150_p2 = (!tmp65_cast_fu_7147_p1.read().is_01() || !ap_reg_pp5_iter9_tmp62_reg_12321.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp65_cast_fu_7147_p1.read()) + sc_biguint<32>(ap_reg_pp5_iter9_tmp62_reg_12321.read()));
}

void vta::thread_tmp62_fu_6199_p2() {
    tmp62_fu_6199_p2 = (!tmp64_cast_fu_6196_p1.read().is_01() || !ap_reg_pp5_iter7_tmp63_reg_10691.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp64_cast_fu_6196_p1.read()) + sc_bigint<32>(ap_reg_pp5_iter7_tmp63_reg_10691.read()));
}

void vta::thread_tmp64_cast_fu_6196_p1() {
    tmp64_cast_fu_6196_p1 = esl_sext<32,17>(tmp64_reg_11806.read());
}

void vta::thread_tmp65_cast_fu_7147_p1() {
    tmp65_cast_fu_7147_p1 = esl_sext<32,18>(ap_reg_pp5_iter9_tmp65_reg_12326.read());
}

void vta::thread_tmp65_fu_6210_p2() {
    tmp65_fu_6210_p2 = (!tmp67_cast_fu_6207_p1.read().is_01() || !tmp66_cast_fu_6204_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp67_cast_fu_6207_p1.read()) + sc_bigint<18>(tmp66_cast_fu_6204_p1.read()));
}

void vta::thread_tmp66_cast_fu_6204_p1() {
    tmp66_cast_fu_6204_p1 = esl_sext<18,17>(tmp66_reg_11811.read());
}

void vta::thread_tmp67_cast_fu_6207_p1() {
    tmp67_cast_fu_6207_p1 = esl_sext<18,17>(tmp67_reg_11816.read());
}

void vta::thread_tmp68_cast_fu_7155_p1() {
    tmp68_cast_fu_7155_p1 = esl_sext<32,19>(tmp68_reg_12641.read());
}

void vta::thread_tmp68_fu_6798_p2() {
    tmp68_fu_6798_p2 = (!tmp72_cast_fu_6794_p1.read().is_01() || !tmp69_cast_fu_6779_p1.read().is_01())? sc_lv<19>(): (sc_bigint<19>(tmp72_cast_fu_6794_p1.read()) + sc_bigint<19>(tmp69_cast_fu_6779_p1.read()));
}

void vta::thread_tmp69_cast_fu_6779_p1() {
    tmp69_cast_fu_6779_p1 = esl_sext<19,18>(tmp69_reg_12331.read());
}

void vta::thread_tmp69_fu_6222_p2() {
    tmp69_fu_6222_p2 = (!tmp71_cast_fu_6219_p1.read().is_01() || !tmp70_cast_fu_6216_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp71_cast_fu_6219_p1.read()) + sc_bigint<18>(tmp70_cast_fu_6216_p1.read()));
}

void vta::thread_tmp6_cast_fu_6040_p1() {
    tmp6_cast_fu_6040_p1 = esl_sext<18,17>(tmp6_reg_11671.read());
}

void vta::thread_tmp70_cast_fu_6216_p1() {
    tmp70_cast_fu_6216_p1 = esl_sext<18,17>(tmp70_reg_11821.read());
}

void vta::thread_tmp71_cast_fu_6219_p1() {
    tmp71_cast_fu_6219_p1 = esl_sext<18,17>(tmp71_reg_11826.read());
}

void vta::thread_tmp72_cast_fu_6794_p1() {
    tmp72_cast_fu_6794_p1 = esl_sext<19,18>(tmp72_fu_6788_p2.read());
}

void vta::thread_tmp72_fu_6788_p2() {
    tmp72_fu_6788_p2 = (!tmp74_cast_fu_6785_p1.read().is_01() || !tmp73_cast_fu_6782_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp74_cast_fu_6785_p1.read()) + sc_bigint<18>(tmp73_cast_fu_6782_p1.read()));
}

void vta::thread_tmp73_cast_fu_6782_p1() {
    tmp73_cast_fu_6782_p1 = esl_sext<18,17>(tmp73_reg_12336.read());
}

void vta::thread_tmp74_cast_fu_6785_p1() {
    tmp74_cast_fu_6785_p1 = esl_sext<18,17>(tmp74_reg_12341.read());
}

void vta::thread_tmp76_fu_7167_p2() {
    tmp76_fu_7167_p2 = (!tmp80_cast_fu_7164_p1.read().is_01() || !ap_reg_pp5_iter9_tmp77_reg_12346.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp80_cast_fu_7164_p1.read()) + sc_biguint<32>(ap_reg_pp5_iter9_tmp77_reg_12346.read()));
}

void vta::thread_tmp77_fu_6240_p2() {
    tmp77_fu_6240_p2 = (!tmp79_cast_fu_6237_p1.read().is_01() || !ap_reg_pp5_iter7_tmp78_reg_10726.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp79_cast_fu_6237_p1.read()) + sc_bigint<32>(ap_reg_pp5_iter7_tmp78_reg_10726.read()));
}

void vta::thread_tmp79_cast_fu_6237_p1() {
    tmp79_cast_fu_6237_p1 = esl_sext<32,17>(tmp79_reg_11841.read());
}

void vta::thread_tmp7_cast_fu_6043_p1() {
    tmp7_cast_fu_6043_p1 = esl_sext<18,17>(tmp7_reg_11676.read());
}

void vta::thread_tmp80_cast_fu_7164_p1() {
    tmp80_cast_fu_7164_p1 = esl_sext<32,18>(ap_reg_pp5_iter9_tmp80_reg_12351.read());
}

void vta::thread_tmp80_fu_6251_p2() {
    tmp80_fu_6251_p2 = (!tmp82_cast_fu_6248_p1.read().is_01() || !tmp81_cast_fu_6245_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp82_cast_fu_6248_p1.read()) + sc_bigint<18>(tmp81_cast_fu_6245_p1.read()));
}

void vta::thread_tmp81_cast_fu_6245_p1() {
    tmp81_cast_fu_6245_p1 = esl_sext<18,17>(tmp81_reg_11846.read());
}

void vta::thread_tmp82_cast_fu_6248_p1() {
    tmp82_cast_fu_6248_p1 = esl_sext<18,17>(tmp82_reg_11851.read());
}

void vta::thread_tmp83_cast_fu_7172_p1() {
    tmp83_cast_fu_7172_p1 = esl_sext<32,19>(tmp83_reg_12646.read());
}

void vta::thread_tmp83_fu_6823_p2() {
    tmp83_fu_6823_p2 = (!tmp87_cast_fu_6819_p1.read().is_01() || !tmp84_cast_fu_6804_p1.read().is_01())? sc_lv<19>(): (sc_bigint<19>(tmp87_cast_fu_6819_p1.read()) + sc_bigint<19>(tmp84_cast_fu_6804_p1.read()));
}

void vta::thread_tmp84_cast_fu_6804_p1() {
    tmp84_cast_fu_6804_p1 = esl_sext<19,18>(tmp84_reg_12356.read());
}

void vta::thread_tmp84_fu_6263_p2() {
    tmp84_fu_6263_p2 = (!tmp86_cast_fu_6260_p1.read().is_01() || !tmp85_cast_fu_6257_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp86_cast_fu_6260_p1.read()) + sc_bigint<18>(tmp85_cast_fu_6257_p1.read()));
}

void vta::thread_tmp85_cast_fu_6257_p1() {
    tmp85_cast_fu_6257_p1 = esl_sext<18,17>(tmp85_reg_11856.read());
}

void vta::thread_tmp86_cast_fu_6260_p1() {
    tmp86_cast_fu_6260_p1 = esl_sext<18,17>(tmp86_reg_11861.read());
}

void vta::thread_tmp87_cast_fu_6819_p1() {
    tmp87_cast_fu_6819_p1 = esl_sext<19,18>(tmp87_fu_6813_p2.read());
}

void vta::thread_tmp87_fu_6813_p2() {
    tmp87_fu_6813_p2 = (!tmp89_cast_fu_6810_p1.read().is_01() || !tmp88_cast_fu_6807_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp89_cast_fu_6810_p1.read()) + sc_bigint<18>(tmp88_cast_fu_6807_p1.read()));
}

void vta::thread_tmp88_cast_fu_6807_p1() {
    tmp88_cast_fu_6807_p1 = esl_sext<18,17>(tmp88_reg_12361.read());
}

void vta::thread_tmp89_cast_fu_6810_p1() {
    tmp89_cast_fu_6810_p1 = esl_sext<18,17>(tmp89_reg_12366.read());
}

void vta::thread_tmp8_cast_fu_7087_p1() {
    tmp8_cast_fu_7087_p1 = esl_sext<32,19>(tmp8_reg_12621.read());
}

void vta::thread_tmp8_fu_6698_p2() {
    tmp8_fu_6698_p2 = (!tmp12_cast_fu_6694_p1.read().is_01() || !tmp9_cast_fu_6679_p1.read().is_01())? sc_lv<19>(): (sc_bigint<19>(tmp12_cast_fu_6694_p1.read()) + sc_bigint<19>(tmp9_cast_fu_6679_p1.read()));
}

void vta::thread_tmp91_fu_7184_p2() {
    tmp91_fu_7184_p2 = (!tmp95_cast_fu_7181_p1.read().is_01() || !ap_reg_pp5_iter9_tmp92_reg_12371.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp95_cast_fu_7181_p1.read()) + sc_biguint<32>(ap_reg_pp5_iter9_tmp92_reg_12371.read()));
}

void vta::thread_tmp92_fu_6281_p2() {
    tmp92_fu_6281_p2 = (!tmp94_cast_fu_6278_p1.read().is_01() || !ap_reg_pp5_iter7_tmp93_reg_10761.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp94_cast_fu_6278_p1.read()) + sc_bigint<32>(ap_reg_pp5_iter7_tmp93_reg_10761.read()));
}

void vta::thread_tmp94_cast_fu_6278_p1() {
    tmp94_cast_fu_6278_p1 = esl_sext<32,17>(tmp94_reg_11876.read());
}

void vta::thread_tmp95_cast_fu_7181_p1() {
    tmp95_cast_fu_7181_p1 = esl_sext<32,18>(ap_reg_pp5_iter9_tmp95_reg_12376.read());
}

void vta::thread_tmp95_fu_6292_p2() {
    tmp95_fu_6292_p2 = (!tmp97_cast_fu_6289_p1.read().is_01() || !tmp96_cast_fu_6286_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp97_cast_fu_6289_p1.read()) + sc_bigint<18>(tmp96_cast_fu_6286_p1.read()));
}

void vta::thread_tmp96_cast_fu_6286_p1() {
    tmp96_cast_fu_6286_p1 = esl_sext<18,17>(tmp96_reg_11881.read());
}

void vta::thread_tmp97_cast_fu_6289_p1() {
    tmp97_cast_fu_6289_p1 = esl_sext<18,17>(tmp97_reg_11886.read());
}

void vta::thread_tmp98_cast_fu_7189_p1() {
    tmp98_cast_fu_7189_p1 = esl_sext<32,19>(tmp98_reg_12651.read());
}

void vta::thread_tmp98_fu_6848_p2() {
    tmp98_fu_6848_p2 = (!tmp102_cast_fu_6844_p1.read().is_01() || !tmp99_cast_fu_6829_p1.read().is_01())? sc_lv<19>(): (sc_bigint<19>(tmp102_cast_fu_6844_p1.read()) + sc_bigint<19>(tmp99_cast_fu_6829_p1.read()));
}

void vta::thread_tmp99_cast_fu_6829_p1() {
    tmp99_cast_fu_6829_p1 = esl_sext<19,18>(tmp99_reg_12381.read());
}

void vta::thread_tmp99_fu_6304_p2() {
    tmp99_fu_6304_p2 = (!tmp101_cast_fu_6301_p1.read().is_01() || !tmp100_cast_fu_6298_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp101_cast_fu_6301_p1.read()) + sc_bigint<18>(tmp100_cast_fu_6298_p1.read()));
}

void vta::thread_tmp9_cast_fu_6679_p1() {
    tmp9_cast_fu_6679_p1 = esl_sext<19,18>(tmp9_reg_12231.read());
}

void vta::thread_tmp9_fu_6058_p2() {
    tmp9_fu_6058_p2 = (!tmp11_cast_fu_6055_p1.read().is_01() || !tmp10_cast_fu_6052_p1.read().is_01())? sc_lv<18>(): (sc_bigint<18>(tmp11_cast_fu_6055_p1.read()) + sc_bigint<18>(tmp10_cast_fu_6052_p1.read()));
}

void vta::thread_tmp_106_fu_2877_p1() {
    tmp_106_fu_2877_p1 = wgt_mem_7_V_q0.read().range(8-1, 0);
}

void vta::thread_tmp_10_fu_1477_p4() {
    tmp_10_fu_1477_p4 = insn_reg_8567.read().range(14, 3);
}

void vta::thread_tmp_11_fu_1499_p1() {
    tmp_11_fu_1499_p1 = esl_zext<32,13>(uop_end_V_fu_1486_p4.read());
}

void vta::thread_tmp_121_fu_3041_p1() {
    tmp_121_fu_3041_p1 = wgt_mem_8_V_q0.read().range(8-1, 0);
}

void vta::thread_tmp_12_fu_1503_p2() {
    tmp_12_fu_1503_p2 = (!upc1_reg_959.read().is_01() || !tmp_11_reg_8836.read().is_01())? sc_lv<1>(): (sc_bigint<32>(upc1_reg_959.read()) < sc_bigint<32>(tmp_11_reg_8836.read()));
}

void vta::thread_tmp_136_fu_3205_p1() {
    tmp_136_fu_3205_p1 = wgt_mem_9_V_q0.read().range(8-1, 0);
}

void vta::thread_tmp_13_cast_fu_1206_p1() {
    tmp_13_cast_fu_1206_p1 = esl_zext<33,32>(dram_base_V_fu_1115_p4.read());
}

void vta::thread_tmp_13_fu_1089_p3() {
    tmp_13_fu_1089_p3 = ins_port_RDATA.read().range(1, 1);
}

void vta::thread_tmp_151_fu_3369_p1() {
    tmp_151_fu_3369_p1 = wgt_mem_10_V_q0.read().range(8-1, 0);
}

void vta::thread_tmp_15_fu_1153_p2() {
    tmp_15_fu_1153_p2 = (!memory_type_V_fu_1097_p4.read().is_01() || !ap_const_lv2_2.is_01())? sc_lv<1>(): sc_lv<1>(memory_type_V_fu_1097_p4.read() == ap_const_lv2_2);
}

void vta::thread_tmp_166_fu_3533_p1() {
    tmp_166_fu_3533_p1 = wgt_mem_11_V_q0.read().range(8-1, 0);
}

void vta::thread_tmp_17_fu_1403_p1() {
    tmp_17_fu_1403_p1 = esl_zext<32,14>(size_V_reg_8597.read());
}

void vta::thread_tmp_181_fu_3697_p1() {
    tmp_181_fu_3697_p1 = wgt_mem_12_V_q0.read().range(8-1, 0);
}

void vta::thread_tmp_18_fu_1159_p2() {
    tmp_18_fu_1159_p2 = (!memory_type_V_fu_1097_p4.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<1>(): sc_lv<1>(memory_type_V_fu_1097_p4.read() == ap_const_lv2_1);
}

void vta::thread_tmp_196_fu_3861_p1() {
    tmp_196_fu_3861_p1 = wgt_mem_13_V_q0.read().range(8-1, 0);
}

void vta::thread_tmp_19_fu_1257_p2() {
    tmp_19_fu_1257_p2 = (!indvar1_cast_fu_1253_p1.read().is_01() || !tmp_6_i_cast_reg_8661.read().is_01())? sc_lv<15>(): (sc_biguint<15>(indvar1_cast_fu_1253_p1.read()) + sc_biguint<15>(tmp_6_i_cast_reg_8661.read()));
}

void vta::thread_tmp_1_fu_1465_p2() {
    tmp_1_fu_1465_p2 = (!opcode_V_reg_8578.read().is_01() || !ap_const_lv2_2.is_01())? sc_lv<1>(): sc_lv<1>(opcode_V_reg_8578.read() == ap_const_lv2_2);
}

void vta::thread_tmp_20_fu_1262_p1() {
    tmp_20_fu_1262_p1 = esl_zext<64,15>(tmp_19_reg_8675.read());
}

void vta::thread_tmp_211_fu_4025_p1() {
    tmp_211_fu_4025_p1 = wgt_mem_14_V_q0.read().range(8-1, 0);
}

void vta::thread_tmp_21_fu_1508_p1() {
    tmp_21_fu_1508_p1 = esl_sext<64,32>(upc1_reg_959.read());
}

void vta::thread_tmp_226_fu_4189_p1() {
    tmp_226_fu_4189_p1 = wgt_mem_15_V_q0.read().range(8-1, 0);
}

void vta::thread_tmp_23_fu_1543_p1() {
    tmp_23_fu_1543_p1 = esl_zext<64,11>(ac_idx_V_reg_8865.read());
}

void vta::thread_tmp_23_i_cast_fu_1407_p1() {
    tmp_23_i_cast_fu_1407_p1 = esl_zext<15,14>(sram_base_V_reg_8588.read());
}

void vta::thread_tmp_241_fu_1355_p1() {
    tmp_241_fu_1355_p1 = indvar3_reg_926.read().range(4-1, 0);
}

void vta::thread_tmp_24_fu_1548_p1() {
    tmp_24_fu_1548_p1 = esl_zext<64,11>(in_idx_V_reg_8855.read());
}

void vta::thread_tmp_25_fu_1552_p1() {
    tmp_25_fu_1552_p1 = esl_zext<64,10>(tmp_22_reg_8860.read());
}

void vta::thread_tmp_26_fu_1571_p1() {
    tmp_26_fu_1571_p1 = acc_mem_0_V_q0.read().range(32-1, 0);
}

void vta::thread_tmp_27_fu_1456_p2() {
    tmp_27_fu_1456_p2 = (!indvar_cast_fu_1452_p1.read().is_01() || !p_i_cast_reg_8799.read().is_01())? sc_lv<15>(): (sc_biguint<15>(indvar_cast_fu_1452_p1.read()) + sc_biguint<15>(p_i_cast_reg_8799.read()));
}

void vta::thread_tmp_28_fu_1461_p1() {
    tmp_28_fu_1461_p1 = esl_zext<64,15>(ap_reg_pp4_iter1_tmp_27_reg_8813.read());
}

void vta::thread_tmp_29_fu_1575_p1() {
    tmp_29_fu_1575_p1 = inp_mem_0_V_q0.read().range(8-1, 0);
}

void vta::thread_tmp_2_cast_fu_1059_p1() {
    tmp_2_cast_fu_1059_p1 = esl_zext<33,26>(tmp_reg_8498.read());
}

void vta::thread_tmp_30_fu_1579_p1() {
    tmp_30_fu_1579_p1 = wgt_mem_0_V_q0.read().range(8-1, 0);
}

void vta::thread_tmp_32_fu_1893_p1() {
    tmp_32_fu_1893_p1 = wgt_mem_1_V_q0.read().range(8-1, 0);
}

void vta::thread_tmp_33_fu_1329_p3() {
    tmp_33_fu_1329_p3 = esl_concat<14,4>(sram_base_V_reg_8588.read(), ap_const_lv4_0);
}

void vta::thread_tmp_34_fu_1165_p2() {
    tmp_34_fu_1165_p2 = (!memory_type_V_fu_1097_p4.read().is_01() || !ap_const_lv2_3.is_01())? sc_lv<1>(): sc_lv<1>(memory_type_V_fu_1097_p4.read() == ap_const_lv2_3);
}

void vta::thread_tmp_35_fu_2057_p1() {
    tmp_35_fu_2057_p1 = wgt_mem_2_V_q0.read().range(8-1, 0);
}

void vta::thread_tmp_36_add_i32_shr_c_fu_1324_p1() {
    tmp_36_add_i32_shr_c_fu_1324_p1 = esl_zext<32,18>(tmp_36_add_i32_shr_fu_1317_p3.read());
}

void vta::thread_tmp_36_add_i32_shr_fu_1317_p3() {
    tmp_36_add_i32_shr_fu_1317_p3 = esl_concat<14,4>(size_V_reg_8597.read(), ap_const_lv4_0);
}

void vta::thread_tmp_36_fu_1425_p2() {
    tmp_36_fu_1425_p2 = (!indvar2_cast_fu_1421_p1.read().is_01() || !tmp_23_i_cast_reg_8775.read().is_01())? sc_lv<15>(): (sc_biguint<15>(indvar2_cast_fu_1421_p1.read()) + sc_biguint<15>(tmp_23_i_cast_reg_8775.read()));
}

void vta::thread_tmp_37_fu_1430_p1() {
    tmp_37_fu_1430_p1 = esl_zext<64,15>(ap_reg_pp3_iter1_tmp_36_reg_8789.read());
}

void vta::thread_tmp_39_fu_1359_p2() {
    tmp_39_fu_1359_p2 = (!tmp_45_cast_reg_8741.read().is_01() || !indvar3_cast_fu_1351_p1.read().is_01())? sc_lv<19>(): (sc_biguint<19>(tmp_45_cast_reg_8741.read()) + sc_biguint<19>(indvar3_cast_fu_1351_p1.read()));
}

void vta::thread_tmp_3_cast_fu_1062_p1() {
    tmp_3_cast_fu_1062_p1 = esl_zext<33,26>(tmp_2_reg_8503.read());
}

void vta::thread_tmp_41_fu_1374_p1() {
    tmp_41_fu_1374_p1 = esl_zext<64,15>(ap_reg_pp2_iter1_tmp_40_reg_8759.read());
}

void vta::thread_tmp_42_fu_1298_p2() {
    tmp_42_fu_1298_p2 = (!indvar4_cast_fu_1294_p1.read().is_01() || !tmp_42_i_cast_reg_8701.read().is_01())? sc_lv<15>(): (sc_biguint<15>(indvar4_cast_fu_1294_p1.read()) + sc_biguint<15>(tmp_42_i_cast_reg_8701.read()));
}

void vta::thread_tmp_42_i_cast_fu_1280_p1() {
    tmp_42_i_cast_fu_1280_p1 = esl_zext<15,14>(sram_base_V_reg_8588.read());
}

void vta::thread_tmp_43_fu_1303_p1() {
    tmp_43_fu_1303_p1 = esl_zext<64,15>(ap_reg_pp1_iter1_tmp_42_reg_8715.read());
}

void vta::thread_tmp_45_cast_fu_1336_p1() {
    tmp_45_cast_fu_1336_p1 = esl_zext<19,18>(tmp_33_fu_1329_p3.read());
}

void vta::thread_tmp_46_fu_2221_p1() {
    tmp_46_fu_2221_p1 = wgt_mem_3_V_q0.read().range(8-1, 0);
}

void vta::thread_tmp_4_fu_1147_p2() {
    tmp_4_fu_1147_p2 = (!memory_type_V_fu_1097_p4.read().is_01() || !ap_const_lv2_0.is_01())? sc_lv<1>(): sc_lv<1>(memory_type_V_fu_1097_p4.read() == ap_const_lv2_0);
}

void vta::thread_tmp_5_cast_fu_1065_p1() {
    tmp_5_cast_fu_1065_p1 = esl_zext<37,28>(tmp_3_reg_8508.read());
}

void vta::thread_tmp_61_fu_2385_p1() {
    tmp_61_fu_2385_p1 = wgt_mem_4_V_q0.read().range(8-1, 0);
}

void vta::thread_tmp_6_i_cast_fu_1239_p1() {
    tmp_6_i_cast_fu_1239_p1 = esl_zext<15,14>(sram_base_V_reg_8588.read());
}

void vta::thread_tmp_76_fu_2549_p1() {
    tmp_76_fu_2549_p1 = wgt_mem_5_V_q0.read().range(8-1, 0);
}

void vta::thread_tmp_7_cast_fu_1068_p1() {
    tmp_7_cast_fu_1068_p1 = esl_zext<33,28>(tmp_5_reg_8513.read());
}

void vta::thread_tmp_91_fu_2713_p1() {
    tmp_91_fu_2713_p1 = wgt_mem_6_V_q0.read().range(8-1, 0);
}

void vta::thread_tmp_9_cast_fu_1071_p1() {
    tmp_9_cast_fu_1071_p1 = esl_zext<33,30>(tmp_7_reg_8518.read());
}

void vta::thread_tmp_9_fu_1049_p1() {
    tmp_9_fu_1049_p1 = esl_zext<64,29>(insns1_reg_8523.read());
}

void vta::thread_tmp_s_fu_1133_p2() {
    tmp_s_fu_1133_p2 = (!opcode_V_reg_8578.read().is_01() || !ap_const_lv2_0.is_01())? sc_lv<1>(): sc_lv<1>(opcode_V_reg_8578.read() == ap_const_lv2_0);
}

void vta::thread_uop_end_V_fu_1486_p4() {
    uop_end_V_fu_1486_p4 = insn_reg_8567.read().range(27, 15);
}

void vta::thread_uop_mem_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp5_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00000000.read(), ap_const_boolean_0))) {
        uop_mem_address0 =  (sc_lv<12>) (tmp_21_fu_1508_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp4_stage0_flag00000000.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp4_iter2.read()))) {
        uop_mem_address0 =  (sc_lv<12>) (tmp_28_fu_1461_p1.read());
    } else {
        uop_mem_address0 =  (sc_lv<12>) ("XXXXXXXXXXXX");
    }
}

void vta::thread_uop_mem_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp5_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp4_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp4_iter2.read())))) {
        uop_mem_ce0 = ap_const_logic_1;
    } else {
        uop_mem_ce0 = ap_const_logic_0;
    }
}

void vta::thread_uop_mem_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp4_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp4_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp4_iter1_exitcond2_reg_8804.read()))) {
        uop_mem_we0 = ap_const_logic_1;
    } else {
        uop_mem_we0 = ap_const_logic_0;
    }
}

void vta::thread_uop_port_ARLEN() {
    uop_port_ARLEN = esl_zext<32,14>(size_V_reg_8597.read());
}

void vta::thread_uop_port_ARVALID() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state52.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_uop_port_ARREADY.read()))) {
        uop_port_ARVALID = ap_const_logic_1;
    } else {
        uop_port_ARVALID = ap_const_logic_0;
    }
}

void vta::thread_uop_port_RREADY() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp4_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp4_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_8804.read()) && 
         esl_seteq<1,1,1>(ap_block_pp4_stage0_flag00011001.read(), ap_const_boolean_0))) {
        uop_port_RREADY = ap_const_logic_1;
    } else {
        uop_port_RREADY = ap_const_logic_0;
    }
}

void vta::thread_uop_port_blk_n_AR() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state52.read())) {
        uop_port_blk_n_AR = m_axi_uop_port_ARREADY.read();
    } else {
        uop_port_blk_n_AR = ap_const_logic_1;
    }
}

void vta::thread_uop_port_blk_n_R() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp4_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp4_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp4_stage0_flag00000000.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_8804.read()))) {
        uop_port_blk_n_R = m_axi_uop_port_RVALID.read();
    } else {
        uop_port_blk_n_R = ap_const_logic_1;
    }
}

void vta::thread_uops4_sum_cast_fu_1215_p1() {
    uops4_sum_cast_fu_1215_p1 = esl_zext<64,33>(uops4_sum_fu_1210_p2.read());
}

void vta::thread_uops4_sum_fu_1210_p2() {
    uops4_sum_fu_1210_p2 = (!tmp_13_cast_fu_1206_p1.read().is_01() || !tmp_9_cast_reg_8554.read().is_01())? sc_lv<33>(): (sc_biguint<33>(tmp_13_cast_fu_1206_p1.read()) + sc_biguint<33>(tmp_9_cast_reg_8554.read()));
}

void vta::thread_upc_1_fu_1513_p2() {
    upc_1_fu_1513_p2 = (!upc1_reg_959.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_biguint<32>(upc1_reg_959.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void vta::thread_upc_fu_1495_p1() {
    upc_fu_1495_p1 = esl_zext<32,12>(tmp_10_fu_1477_p4.read());
}

void vta::thread_weights_V8_sum_cast_fu_1307_p1() {
    weights_V8_sum_cast_fu_1307_p1 = esl_zext<64,37>(weights_V8_sum_reg_8640.read());
}

void vta::thread_weights_V8_sum_fu_1192_p2() {
    weights_V8_sum_fu_1192_p2 = (!r_V_2_cast_cast_fu_1188_p1.read().is_01() || !tmp_5_cast_reg_8544.read().is_01())? sc_lv<37>(): (sc_biguint<37>(r_V_2_cast_cast_fu_1188_p1.read()) + sc_biguint<37>(tmp_5_cast_reg_8544.read()));
}

void vta::thread_wgt_mem_0_V_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00000000.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read()))) {
        wgt_mem_0_V_address0 =  (sc_lv<10>) (tmp_25_fu_1552_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00000000.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read()))) {
        wgt_mem_0_V_address0 =  (sc_lv<10>) (tmp_41_fu_1374_p1.read());
    } else {
        wgt_mem_0_V_address0 =  (sc_lv<10>) ("XXXXXXXXXX");
    }
}

void vta::thread_wgt_mem_0_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read())))) {
        wgt_mem_0_V_ce0 = ap_const_logic_1;
    } else {
        wgt_mem_0_V_ce0 = ap_const_logic_0;
    }
}

void vta::thread_wgt_mem_0_V_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read()) && 
         esl_seteq<1,4,4>(ap_reg_pp2_iter1_tmp_241_reg_8755.read(), ap_const_lv4_0))) {
        wgt_mem_0_V_we0 = ap_const_logic_1;
    } else {
        wgt_mem_0_V_we0 = ap_const_logic_0;
    }
}

void vta::thread_wgt_mem_10_V_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00000000.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read()))) {
        wgt_mem_10_V_address0 =  (sc_lv<10>) (tmp_25_fu_1552_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00000000.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read()))) {
        wgt_mem_10_V_address0 =  (sc_lv<10>) (tmp_41_fu_1374_p1.read());
    } else {
        wgt_mem_10_V_address0 =  (sc_lv<10>) ("XXXXXXXXXX");
    }
}

void vta::thread_wgt_mem_10_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read())))) {
        wgt_mem_10_V_ce0 = ap_const_logic_1;
    } else {
        wgt_mem_10_V_ce0 = ap_const_logic_0;
    }
}

void vta::thread_wgt_mem_10_V_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read()) && 
         esl_seteq<1,4,4>(ap_reg_pp2_iter1_tmp_241_reg_8755.read(), ap_const_lv4_A))) {
        wgt_mem_10_V_we0 = ap_const_logic_1;
    } else {
        wgt_mem_10_V_we0 = ap_const_logic_0;
    }
}

void vta::thread_wgt_mem_11_V_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00000000.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read()))) {
        wgt_mem_11_V_address0 =  (sc_lv<10>) (tmp_25_fu_1552_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00000000.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read()))) {
        wgt_mem_11_V_address0 =  (sc_lv<10>) (tmp_41_fu_1374_p1.read());
    } else {
        wgt_mem_11_V_address0 =  (sc_lv<10>) ("XXXXXXXXXX");
    }
}

void vta::thread_wgt_mem_11_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read())))) {
        wgt_mem_11_V_ce0 = ap_const_logic_1;
    } else {
        wgt_mem_11_V_ce0 = ap_const_logic_0;
    }
}

void vta::thread_wgt_mem_11_V_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read()) && 
         esl_seteq<1,4,4>(ap_reg_pp2_iter1_tmp_241_reg_8755.read(), ap_const_lv4_B))) {
        wgt_mem_11_V_we0 = ap_const_logic_1;
    } else {
        wgt_mem_11_V_we0 = ap_const_logic_0;
    }
}

void vta::thread_wgt_mem_12_V_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00000000.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read()))) {
        wgt_mem_12_V_address0 =  (sc_lv<10>) (tmp_25_fu_1552_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00000000.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read()))) {
        wgt_mem_12_V_address0 =  (sc_lv<10>) (tmp_41_fu_1374_p1.read());
    } else {
        wgt_mem_12_V_address0 =  (sc_lv<10>) ("XXXXXXXXXX");
    }
}

void vta::thread_wgt_mem_12_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read())))) {
        wgt_mem_12_V_ce0 = ap_const_logic_1;
    } else {
        wgt_mem_12_V_ce0 = ap_const_logic_0;
    }
}

void vta::thread_wgt_mem_12_V_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read()) && 
         esl_seteq<1,4,4>(ap_reg_pp2_iter1_tmp_241_reg_8755.read(), ap_const_lv4_C))) {
        wgt_mem_12_V_we0 = ap_const_logic_1;
    } else {
        wgt_mem_12_V_we0 = ap_const_logic_0;
    }
}

void vta::thread_wgt_mem_13_V_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00000000.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read()))) {
        wgt_mem_13_V_address0 =  (sc_lv<10>) (tmp_25_fu_1552_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00000000.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read()))) {
        wgt_mem_13_V_address0 =  (sc_lv<10>) (tmp_41_fu_1374_p1.read());
    } else {
        wgt_mem_13_V_address0 =  (sc_lv<10>) ("XXXXXXXXXX");
    }
}

void vta::thread_wgt_mem_13_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read())))) {
        wgt_mem_13_V_ce0 = ap_const_logic_1;
    } else {
        wgt_mem_13_V_ce0 = ap_const_logic_0;
    }
}

void vta::thread_wgt_mem_13_V_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read()) && 
         esl_seteq<1,4,4>(ap_reg_pp2_iter1_tmp_241_reg_8755.read(), ap_const_lv4_D))) {
        wgt_mem_13_V_we0 = ap_const_logic_1;
    } else {
        wgt_mem_13_V_we0 = ap_const_logic_0;
    }
}

void vta::thread_wgt_mem_14_V_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00000000.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read()))) {
        wgt_mem_14_V_address0 =  (sc_lv<10>) (tmp_25_fu_1552_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00000000.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read()))) {
        wgt_mem_14_V_address0 =  (sc_lv<10>) (tmp_41_fu_1374_p1.read());
    } else {
        wgt_mem_14_V_address0 =  (sc_lv<10>) ("XXXXXXXXXX");
    }
}

void vta::thread_wgt_mem_14_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read())))) {
        wgt_mem_14_V_ce0 = ap_const_logic_1;
    } else {
        wgt_mem_14_V_ce0 = ap_const_logic_0;
    }
}

void vta::thread_wgt_mem_14_V_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read()) && 
         esl_seteq<1,4,4>(ap_reg_pp2_iter1_tmp_241_reg_8755.read(), ap_const_lv4_E))) {
        wgt_mem_14_V_we0 = ap_const_logic_1;
    } else {
        wgt_mem_14_V_we0 = ap_const_logic_0;
    }
}

void vta::thread_wgt_mem_15_V_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00000000.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read()))) {
        wgt_mem_15_V_address0 =  (sc_lv<10>) (tmp_25_fu_1552_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00000000.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read()))) {
        wgt_mem_15_V_address0 =  (sc_lv<10>) (tmp_41_fu_1374_p1.read());
    } else {
        wgt_mem_15_V_address0 =  (sc_lv<10>) ("XXXXXXXXXX");
    }
}

void vta::thread_wgt_mem_15_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read())))) {
        wgt_mem_15_V_ce0 = ap_const_logic_1;
    } else {
        wgt_mem_15_V_ce0 = ap_const_logic_0;
    }
}

void vta::thread_wgt_mem_15_V_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read()) && 
         esl_seteq<1,4,4>(ap_reg_pp2_iter1_tmp_241_reg_8755.read(), ap_const_lv4_F))) {
        wgt_mem_15_V_we0 = ap_const_logic_1;
    } else {
        wgt_mem_15_V_we0 = ap_const_logic_0;
    }
}

void vta::thread_wgt_mem_1_V_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00000000.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read()))) {
        wgt_mem_1_V_address0 =  (sc_lv<10>) (tmp_25_fu_1552_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00000000.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read()))) {
        wgt_mem_1_V_address0 =  (sc_lv<10>) (tmp_41_fu_1374_p1.read());
    } else {
        wgt_mem_1_V_address0 =  (sc_lv<10>) ("XXXXXXXXXX");
    }
}

void vta::thread_wgt_mem_1_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read())))) {
        wgt_mem_1_V_ce0 = ap_const_logic_1;
    } else {
        wgt_mem_1_V_ce0 = ap_const_logic_0;
    }
}

void vta::thread_wgt_mem_1_V_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read()) && 
         esl_seteq<1,4,4>(ap_reg_pp2_iter1_tmp_241_reg_8755.read(), ap_const_lv4_1))) {
        wgt_mem_1_V_we0 = ap_const_logic_1;
    } else {
        wgt_mem_1_V_we0 = ap_const_logic_0;
    }
}

void vta::thread_wgt_mem_2_V_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00000000.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read()))) {
        wgt_mem_2_V_address0 =  (sc_lv<10>) (tmp_25_fu_1552_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00000000.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read()))) {
        wgt_mem_2_V_address0 =  (sc_lv<10>) (tmp_41_fu_1374_p1.read());
    } else {
        wgt_mem_2_V_address0 =  (sc_lv<10>) ("XXXXXXXXXX");
    }
}

void vta::thread_wgt_mem_2_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read())))) {
        wgt_mem_2_V_ce0 = ap_const_logic_1;
    } else {
        wgt_mem_2_V_ce0 = ap_const_logic_0;
    }
}

void vta::thread_wgt_mem_2_V_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read()) && 
         esl_seteq<1,4,4>(ap_reg_pp2_iter1_tmp_241_reg_8755.read(), ap_const_lv4_2))) {
        wgt_mem_2_V_we0 = ap_const_logic_1;
    } else {
        wgt_mem_2_V_we0 = ap_const_logic_0;
    }
}

void vta::thread_wgt_mem_3_V_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00000000.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read()))) {
        wgt_mem_3_V_address0 =  (sc_lv<10>) (tmp_25_fu_1552_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00000000.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read()))) {
        wgt_mem_3_V_address0 =  (sc_lv<10>) (tmp_41_fu_1374_p1.read());
    } else {
        wgt_mem_3_V_address0 =  (sc_lv<10>) ("XXXXXXXXXX");
    }
}

void vta::thread_wgt_mem_3_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read())))) {
        wgt_mem_3_V_ce0 = ap_const_logic_1;
    } else {
        wgt_mem_3_V_ce0 = ap_const_logic_0;
    }
}

void vta::thread_wgt_mem_3_V_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read()) && 
         esl_seteq<1,4,4>(ap_reg_pp2_iter1_tmp_241_reg_8755.read(), ap_const_lv4_3))) {
        wgt_mem_3_V_we0 = ap_const_logic_1;
    } else {
        wgt_mem_3_V_we0 = ap_const_logic_0;
    }
}

void vta::thread_wgt_mem_4_V_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00000000.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read()))) {
        wgt_mem_4_V_address0 =  (sc_lv<10>) (tmp_25_fu_1552_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00000000.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read()))) {
        wgt_mem_4_V_address0 =  (sc_lv<10>) (tmp_41_fu_1374_p1.read());
    } else {
        wgt_mem_4_V_address0 =  (sc_lv<10>) ("XXXXXXXXXX");
    }
}

void vta::thread_wgt_mem_4_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read())))) {
        wgt_mem_4_V_ce0 = ap_const_logic_1;
    } else {
        wgt_mem_4_V_ce0 = ap_const_logic_0;
    }
}

void vta::thread_wgt_mem_4_V_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read()) && 
         esl_seteq<1,4,4>(ap_reg_pp2_iter1_tmp_241_reg_8755.read(), ap_const_lv4_4))) {
        wgt_mem_4_V_we0 = ap_const_logic_1;
    } else {
        wgt_mem_4_V_we0 = ap_const_logic_0;
    }
}

void vta::thread_wgt_mem_5_V_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00000000.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read()))) {
        wgt_mem_5_V_address0 =  (sc_lv<10>) (tmp_25_fu_1552_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00000000.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read()))) {
        wgt_mem_5_V_address0 =  (sc_lv<10>) (tmp_41_fu_1374_p1.read());
    } else {
        wgt_mem_5_V_address0 =  (sc_lv<10>) ("XXXXXXXXXX");
    }
}

void vta::thread_wgt_mem_5_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read())))) {
        wgt_mem_5_V_ce0 = ap_const_logic_1;
    } else {
        wgt_mem_5_V_ce0 = ap_const_logic_0;
    }
}

void vta::thread_wgt_mem_5_V_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read()) && 
         esl_seteq<1,4,4>(ap_reg_pp2_iter1_tmp_241_reg_8755.read(), ap_const_lv4_5))) {
        wgt_mem_5_V_we0 = ap_const_logic_1;
    } else {
        wgt_mem_5_V_we0 = ap_const_logic_0;
    }
}

void vta::thread_wgt_mem_6_V_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00000000.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read()))) {
        wgt_mem_6_V_address0 =  (sc_lv<10>) (tmp_25_fu_1552_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00000000.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read()))) {
        wgt_mem_6_V_address0 =  (sc_lv<10>) (tmp_41_fu_1374_p1.read());
    } else {
        wgt_mem_6_V_address0 =  (sc_lv<10>) ("XXXXXXXXXX");
    }
}

void vta::thread_wgt_mem_6_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read())))) {
        wgt_mem_6_V_ce0 = ap_const_logic_1;
    } else {
        wgt_mem_6_V_ce0 = ap_const_logic_0;
    }
}

void vta::thread_wgt_mem_6_V_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read()) && 
         esl_seteq<1,4,4>(ap_reg_pp2_iter1_tmp_241_reg_8755.read(), ap_const_lv4_6))) {
        wgt_mem_6_V_we0 = ap_const_logic_1;
    } else {
        wgt_mem_6_V_we0 = ap_const_logic_0;
    }
}

void vta::thread_wgt_mem_7_V_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00000000.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read()))) {
        wgt_mem_7_V_address0 =  (sc_lv<10>) (tmp_25_fu_1552_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00000000.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read()))) {
        wgt_mem_7_V_address0 =  (sc_lv<10>) (tmp_41_fu_1374_p1.read());
    } else {
        wgt_mem_7_V_address0 =  (sc_lv<10>) ("XXXXXXXXXX");
    }
}

void vta::thread_wgt_mem_7_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read())))) {
        wgt_mem_7_V_ce0 = ap_const_logic_1;
    } else {
        wgt_mem_7_V_ce0 = ap_const_logic_0;
    }
}

void vta::thread_wgt_mem_7_V_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read()) && 
         esl_seteq<1,4,4>(ap_reg_pp2_iter1_tmp_241_reg_8755.read(), ap_const_lv4_7))) {
        wgt_mem_7_V_we0 = ap_const_logic_1;
    } else {
        wgt_mem_7_V_we0 = ap_const_logic_0;
    }
}

void vta::thread_wgt_mem_8_V_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00000000.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read()))) {
        wgt_mem_8_V_address0 =  (sc_lv<10>) (tmp_25_fu_1552_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00000000.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read()))) {
        wgt_mem_8_V_address0 =  (sc_lv<10>) (tmp_41_fu_1374_p1.read());
    } else {
        wgt_mem_8_V_address0 =  (sc_lv<10>) ("XXXXXXXXXX");
    }
}

void vta::thread_wgt_mem_8_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read())))) {
        wgt_mem_8_V_ce0 = ap_const_logic_1;
    } else {
        wgt_mem_8_V_ce0 = ap_const_logic_0;
    }
}

void vta::thread_wgt_mem_8_V_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read()) && 
         esl_seteq<1,4,4>(ap_reg_pp2_iter1_tmp_241_reg_8755.read(), ap_const_lv4_8))) {
        wgt_mem_8_V_we0 = ap_const_logic_1;
    } else {
        wgt_mem_8_V_we0 = ap_const_logic_0;
    }
}

void vta::thread_wgt_mem_9_V_address0() {
    if ((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00000000.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read()))) {
        wgt_mem_9_V_address0 =  (sc_lv<10>) (tmp_25_fu_1552_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00000000.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read()))) {
        wgt_mem_9_V_address0 =  (sc_lv<10>) (tmp_41_fu_1374_p1.read());
    } else {
        wgt_mem_9_V_address0 =  (sc_lv<10>) ("XXXXXXXXXX");
    }
}

void vta::thread_wgt_mem_9_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_block_pp5_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter2.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00011001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read())))) {
        wgt_mem_9_V_ce0 = ap_const_logic_1;
    } else {
        wgt_mem_9_V_ce0 = ap_const_logic_0;
    }
}

void vta::thread_wgt_mem_9_V_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp2_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter2.read()) && 
         esl_seteq<1,4,4>(ap_reg_pp2_iter1_tmp_241_reg_8755.read(), ap_const_lv4_9))) {
        wgt_mem_9_V_we0 = ap_const_logic_1;
    } else {
        wgt_mem_9_V_we0 = ap_const_logic_0;
    }
}

void vta::thread_wide_port_ARADDR() {
    wide_port_ARADDR =  (sc_lv<32>) (biases_V10_sum_cast_fu_1266_p1.read());
}

void vta::thread_wide_port_ARLEN() {
    wide_port_ARLEN = esl_zext<32,14>(size_V_reg_8597.read());
}

void vta::thread_wide_port_ARVALID() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state21.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_wide_port_ARREADY.read()))) {
        wide_port_ARVALID = ap_const_logic_1;
    } else {
        wide_port_ARVALID = ap_const_logic_0;
    }
}

void vta::thread_wide_port_AWADDR() {
    wide_port_AWADDR =  (sc_lv<32>) (outputs_V12_sum_cast_fu_1225_p1.read());
}

void vta::thread_wide_port_AWLEN() {
    wide_port_AWLEN = esl_zext<32,14>(size_V_reg_8597.read());
}

void vta::thread_wide_port_AWVALID() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state11.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_wide_port_AWREADY.read()))) {
        wide_port_AWVALID = ap_const_logic_1;
    } else {
        wide_port_AWVALID = ap_const_logic_0;
    }
}

void vta::thread_wide_port_BREADY() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state20.read()) && 
         esl_seteq<1,1,1>(wide_port_BVALID.read(), ap_const_logic_1))) {
        wide_port_BREADY = ap_const_logic_1;
    } else {
        wide_port_BREADY = ap_const_logic_0;
    }
}

void vta::thread_wide_port_RREADY() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond5_reg_8706.read()) && 
         esl_seteq<1,1,1>(ap_block_pp1_stage0_flag00011001.read(), ap_const_boolean_0))) {
        wide_port_RREADY = ap_const_logic_1;
    } else {
        wide_port_RREADY = ap_const_logic_0;
    }
}

void vta::thread_wide_port_WVALID() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond_reg_8666.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00001001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_wide_port_WREADY.read()))) {
        wide_port_WVALID = ap_const_logic_1;
    } else {
        wide_port_WVALID = ap_const_logic_0;
    }
}

void vta::thread_wide_port_blk_n_AR() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state21.read())) {
        wide_port_blk_n_AR = m_axi_wide_port_ARREADY.read();
    } else {
        wide_port_blk_n_AR = ap_const_logic_1;
    }
}

void vta::thread_wide_port_blk_n_AW() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state11.read())) {
        wide_port_blk_n_AW = m_axi_wide_port_AWREADY.read();
    } else {
        wide_port_blk_n_AW = ap_const_logic_1;
    }
}

void vta::thread_wide_port_blk_n_B() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state20.read())) {
        wide_port_blk_n_B = m_axi_wide_port_BVALID.read();
    } else {
        wide_port_blk_n_B = ap_const_logic_1;
    }
}

void vta::thread_wide_port_blk_n_R() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp1_stage0_flag00000000.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond5_reg_8706.read()))) {
        wide_port_blk_n_R = m_axi_wide_port_RVALID.read();
    } else {
        wide_port_blk_n_R = ap_const_logic_1;
    }
}

void vta::thread_wide_port_blk_n_W() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00000000.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond_reg_8666.read()))) {
        wide_port_blk_n_W = m_axi_wide_port_WREADY.read();
    } else {
        wide_port_blk_n_W = ap_const_logic_1;
    }
}

}


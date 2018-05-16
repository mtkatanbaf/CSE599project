// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __vta_mac_muladd_8sdEe__HH__
#define __vta_mac_muladd_8sdEe__HH__
#include "simcore_mac_2.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(vta_mac_muladd_8sdEe) {
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    simcore_mac_2<ID, 1, din0_WIDTH, din1_WIDTH, din2_WIDTH, dout_WIDTH> simcore_mac_2_U;

    SC_CTOR(vta_mac_muladd_8sdEe):  simcore_mac_2_U ("simcore_mac_2_U") {
        simcore_mac_2_U.din0(din0);
        simcore_mac_2_U.din1(din1);
        simcore_mac_2_U.din2(din2);
        simcore_mac_2_U.dout(dout);

    }

};

#endif //

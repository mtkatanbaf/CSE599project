// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

/***************************** Include Files *********************************/
#include "xvta.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XVta_CfgInitialize(XVta *InstancePtr, XVta_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_bus_BaseAddress = ConfigPtr->Control_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XVta_Start(XVta *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVta_ReadReg(InstancePtr->Control_bus_BaseAddress, XVTA_CONTROL_BUS_ADDR_AP_CTRL) & 0x80;
    XVta_WriteReg(InstancePtr->Control_bus_BaseAddress, XVTA_CONTROL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XVta_IsDone(XVta *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVta_ReadReg(InstancePtr->Control_bus_BaseAddress, XVTA_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XVta_IsIdle(XVta *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVta_ReadReg(InstancePtr->Control_bus_BaseAddress, XVTA_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XVta_IsReady(XVta *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVta_ReadReg(InstancePtr->Control_bus_BaseAddress, XVTA_CONTROL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XVta_EnableAutoRestart(XVta *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVta_WriteReg(InstancePtr->Control_bus_BaseAddress, XVTA_CONTROL_BUS_ADDR_AP_CTRL, 0x80);
}

void XVta_DisableAutoRestart(XVta *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVta_WriteReg(InstancePtr->Control_bus_BaseAddress, XVTA_CONTROL_BUS_ADDR_AP_CTRL, 0);
}

void XVta_Set_insn_count(XVta *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVta_WriteReg(InstancePtr->Control_bus_BaseAddress, XVTA_CONTROL_BUS_ADDR_INSN_COUNT_DATA, Data);
}

u32 XVta_Get_insn_count(XVta *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVta_ReadReg(InstancePtr->Control_bus_BaseAddress, XVTA_CONTROL_BUS_ADDR_INSN_COUNT_DATA);
    return Data;
}

void XVta_Set_insns(XVta *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVta_WriteReg(InstancePtr->Control_bus_BaseAddress, XVTA_CONTROL_BUS_ADDR_INSNS_DATA, Data);
}

u32 XVta_Get_insns(XVta *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVta_ReadReg(InstancePtr->Control_bus_BaseAddress, XVTA_CONTROL_BUS_ADDR_INSNS_DATA);
    return Data;
}

void XVta_Set_uops(XVta *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVta_WriteReg(InstancePtr->Control_bus_BaseAddress, XVTA_CONTROL_BUS_ADDR_UOPS_DATA, Data);
}

u32 XVta_Get_uops(XVta *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVta_ReadReg(InstancePtr->Control_bus_BaseAddress, XVTA_CONTROL_BUS_ADDR_UOPS_DATA);
    return Data;
}

void XVta_Set_inputs_V(XVta *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVta_WriteReg(InstancePtr->Control_bus_BaseAddress, XVTA_CONTROL_BUS_ADDR_INPUTS_V_DATA, Data);
}

u32 XVta_Get_inputs_V(XVta *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVta_ReadReg(InstancePtr->Control_bus_BaseAddress, XVTA_CONTROL_BUS_ADDR_INPUTS_V_DATA);
    return Data;
}

void XVta_Set_weights_V(XVta *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVta_WriteReg(InstancePtr->Control_bus_BaseAddress, XVTA_CONTROL_BUS_ADDR_WEIGHTS_V_DATA, Data);
}

u32 XVta_Get_weights_V(XVta *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVta_ReadReg(InstancePtr->Control_bus_BaseAddress, XVTA_CONTROL_BUS_ADDR_WEIGHTS_V_DATA);
    return Data;
}

void XVta_Set_biases_V(XVta *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVta_WriteReg(InstancePtr->Control_bus_BaseAddress, XVTA_CONTROL_BUS_ADDR_BIASES_V_DATA, Data);
}

u32 XVta_Get_biases_V(XVta *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVta_ReadReg(InstancePtr->Control_bus_BaseAddress, XVTA_CONTROL_BUS_ADDR_BIASES_V_DATA);
    return Data;
}

void XVta_Set_outputs_V(XVta *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVta_WriteReg(InstancePtr->Control_bus_BaseAddress, XVTA_CONTROL_BUS_ADDR_OUTPUTS_V_DATA, Data);
}

u32 XVta_Get_outputs_V(XVta *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVta_ReadReg(InstancePtr->Control_bus_BaseAddress, XVTA_CONTROL_BUS_ADDR_OUTPUTS_V_DATA);
    return Data;
}

void XVta_InterruptGlobalEnable(XVta *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVta_WriteReg(InstancePtr->Control_bus_BaseAddress, XVTA_CONTROL_BUS_ADDR_GIE, 1);
}

void XVta_InterruptGlobalDisable(XVta *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVta_WriteReg(InstancePtr->Control_bus_BaseAddress, XVTA_CONTROL_BUS_ADDR_GIE, 0);
}

void XVta_InterruptEnable(XVta *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XVta_ReadReg(InstancePtr->Control_bus_BaseAddress, XVTA_CONTROL_BUS_ADDR_IER);
    XVta_WriteReg(InstancePtr->Control_bus_BaseAddress, XVTA_CONTROL_BUS_ADDR_IER, Register | Mask);
}

void XVta_InterruptDisable(XVta *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XVta_ReadReg(InstancePtr->Control_bus_BaseAddress, XVTA_CONTROL_BUS_ADDR_IER);
    XVta_WriteReg(InstancePtr->Control_bus_BaseAddress, XVTA_CONTROL_BUS_ADDR_IER, Register & (~Mask));
}

void XVta_InterruptClear(XVta *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVta_WriteReg(InstancePtr->Control_bus_BaseAddress, XVTA_CONTROL_BUS_ADDR_ISR, Mask);
}

u32 XVta_InterruptGetEnabled(XVta *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XVta_ReadReg(InstancePtr->Control_bus_BaseAddress, XVTA_CONTROL_BUS_ADDR_IER);
}

u32 XVta_InterruptGetStatus(XVta *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XVta_ReadReg(InstancePtr->Control_bus_BaseAddress, XVTA_CONTROL_BUS_ADDR_ISR);
}

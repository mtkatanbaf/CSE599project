#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/mohamad/Xilinx/Vivado/2017.1/ids_lite/ISE/bin/lin64:/home/mohamad/Xilinx/Vivado/2017.1/bin
else
  PATH=/home/mohamad/Xilinx/Vivado/2017.1/ids_lite/ISE/bin/lin64:/home/mohamad/Xilinx/Vivado/2017.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/home/mohamad/Xilinx/Vivado/2017.1/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/home/mohamad/Xilinx/Vivado/2017.1/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/mohamad/Documents/CSE599/lab1/build/vivado/vta.runs/vta_proc_sys_reset_0_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log vta_proc_sys_reset_0.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source vta_proc_sys_reset_0.tcl

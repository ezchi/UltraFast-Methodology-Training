#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/opt/amd/Vitis/2022.2/bin:/opt/amd/Vivado/2022.2/bin
else
  PATH=/opt/amd/Vitis/2022.2/bin:/opt/amd/Vivado/2022.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/amd/training/phys_opt/lab/KCU105/verilog/wave_gen.runs/char_fifo_phys_opt_synth_1'
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

EAStep vivado -log char_fifo_phys_opt.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source char_fifo_phys_opt.tcl

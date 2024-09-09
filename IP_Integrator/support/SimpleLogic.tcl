# create the block design
   create_bd_design "simpleLogic";

   # add two and gates
   create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 firstAnd;
   set_property -dict [list CONFIG.C_OPERATION {and} CONFIG.LOGO_FILE {data/sym_andgate.png}] [get_bd_cells firstAnd];
   create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 secondAnd;
   set_property -dict [list CONFIG.C_OPERATION {and} CONFIG.LOGO_FILE {data/sym_andgate.png}] [get_bd_cells secondAnd];
   
   # add two inverters
   create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 firstNot;
   set_property -dict [list CONFIG.C_OPERATION {not} CONFIG.LOGO_FILE {data/sym_notgate.png}] [get_bd_cells firstNot];
   create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 secondNot;
   set_property -dict [list CONFIG.C_OPERATION {not} CONFIG.LOGO_FILE {data/sym_notgate.png}] [get_bd_cells secondNot];
   
   # add an or gate
   create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 ORgate;
   set_property -dict [list CONFIG.C_OPERATION {or} CONFIG.LOGO_FILE {data/sym_orgate.png}] [get_bd_cells ORgate];

   # wire the outputs of the ANDs into the OR together (internally)
   connect_bd_net [get_bd_pins firstAnd/Res] [get_bd_pins ORgate/Op1];
   connect_bd_net [get_bd_pins secondAnd/Res] [get_bd_pins ORgate/Op2];
   
   # create ports
   create_bd_port -dir I -from 7 -to 0 A;
   create_bd_port -dir I -from 7 -to 0 B;
   make_bd_pins_external  [get_bd_pins ORgate/Res];
   set_property name XOR_out [get_bd_ports Res_0];

   # finish connections   
   connect_bd_net [get_bd_ports A] [get_bd_pins firstAnd/Op1];
   connect_bd_net [get_bd_pins firstAnd/Op2] [get_bd_pins secondNot/Res];
   connect_bd_net [get_bd_ports B] [get_bd_pins secondNot/Op1];
   connect_bd_net [get_bd_pins secondAnd/Op1] [get_bd_pins firstNot/Res];
   connect_bd_net [get_bd_ports A] [get_bd_pins firstNot/Op1];
   connect_bd_net [get_bd_ports B] [get_bd_pins secondAnd/Op2];
   
   # insert the register (As an afterthought...)
   create_bd_cell -type ip -vlnv xilinx.com:ip:c_shift_ram:12.0 c_shift_ram_0;
   set_property -dict [list CONFIG.ShiftRegType {Fixed_Length}] [get_bd_cells c_shift_ram_0];
   set_property -dict [list CONFIG.Width.VALUE_SRC USER] [get_bd_cells c_shift_ram_0];
   set_property -dict [list CONFIG.Width {8} CONFIG.Depth {1} CONFIG.DefaultData {00000000} CONFIG.AsyncInitVal {00000000} CONFIG.SyncInitVal {00000000}] [get_bd_cells c_shift_ram_0];
   delete_bd_objs [get_bd_nets ORgate_Res];
   connect_bd_net [get_bd_ports XOR_out] [get_bd_pins c_shift_ram_0/Q];
   connect_bd_net [get_bd_pins c_shift_ram_0/D] [get_bd_pins ORgate/Res];
   make_bd_pins_external  [get_bd_pins c_shift_ram_0/CLK];

   # validate and save
   regenerate_bd_layout;
   validate_bd_design;
   save_bd_design;


#<copyright-disclaimer-start>
#  ************************************************************************************************************
#  * © Copyright 2022 Xilinx, Inc. All rights reserved.                                                       *
#  * This file contains confidential and proprietary information of Xilinx, Inc. and                          *
#  * is protected under U.S. and international copyright and other intellectual property laws.                *
#  * DISCLAIMER                                                                                               *
#  * This disclaimer is not a license and does not grant any rights to the materials distributed              *
#  * herewith. Except as otherwise provided in a valid license issued to you by Xilinx, and to the            *
#  * maximum extent permitted by applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS"               *
#  * AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS,                 *
#  * IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT,     *
#  * OR FITNESS FOR ANY PARTICULAR PURPOSE; and (2) Xilinx shall not be liable (whether in contract or tort,  *
#  * including negligence, or under any other theory of liability) for any loss or damage of any kind or      *
#  * nature related to, arising under or in connection with these materials, including for any direct, or     *
#  * any indirect, special, incidental, or consequential loss or damage (including loss of data, profits,     *
#  * goodwill, or any type of loss or damage suffered as a result of any action brought by a third party)     *
#  * even if such damage or loss was reasonably foreseeable or Xilinx had been advised of the possibility     *
#  * of the same.                                                                                             *
#  * CRITICAL APPLICATIONS                                                                                    *
#  * Xilinx products are not designed or intended to be fail-safe, or for use in any application requiring    *
#  * fail-safe performance, such as life-support or safety devices or systems, Class III medical devices,     *
#  * nuclear facilities, applications related to the deployment of airbags, or any other applications that    *
#  * could lead to death, personal injury, or severe property or environmental damage (individually and       *
#  * collectively, "Critical Applications"). Customer assumes the sole risk and liability of any use of       *
#  * Xilinx products in Critical Applications, subject only to applicable laws and regulations governing      *
#  * limitations on product liability.                                                                        *
#  * THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.                 *
#  *                                                                                                          *
#  ************************************************************************************************************
#<copyright-disclaimer-end>
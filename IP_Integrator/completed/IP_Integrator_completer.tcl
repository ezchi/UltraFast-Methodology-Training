###########################################################################
## IP Integrator Completer Script
###########################################################################

# load the standard helper file
source -quiet ../../fpgaSupport_scripts/script1.tcl
source -quiet ../../fpgaSupport_scripts/script2.tcl
# project constants
set verbose 	1
set tcName 	IP_Integrator
set demoOrLab 	completed
set projName 	UART_LED


 ## *********** Step 1 : Opening a project ***********
 proc createProject {} {
variable platform
variable language
variable tcName
variable demoOrLab 
variable projName 
variable TRAINING_PATH
# Add the platform and language combination that you want 
set isLangNotSelected [string compare -nocase $language "undefined"]
set isPlatNotSelected [string compare -nocase $platform "undefined"]
   
if {$isLangNotSelected} {
      puts "Please type: use VHDL | Verilog"
      puts "   then rerun the projectCreate"
} 
if {$isPlatNotSelected} {
      puts "Please type: use KCU105 | KC705 | KC7xx"
      puts "   then rerun the projectCreate"
}

# Create a New project 

create_project UART_LED_Subsystem $TRAINING_PATH/$tcName/$demoOrLab/$platform/$language -part xcku040-ffva1156-2-e
set_property target_language $language [current_project]
}

 ## *********** Step 2 : Adding IP to the IP Catalog ***********

 proc addIP {} {
variable platform
variable language
variable tcName
variable demoOrLab 
variable projName 
variable TRAINING_PATH

set_property  ip_repo_paths  $TRAINING_PATH/$tcName/$demoOrLab/$platform/$language [current_project]
update_ip_catalog
}

 ## *********** Step 3 : Creating an IP Integrator Block Design ***********
 
proc createBlockDesign {} {
variable platform

create_bd_design "UART_LED_Subsystem"
update_compile_order -fileset sources_1

# Add the uart_baud_gen and uart_rx_ctl IPs to subsystem
startgroup
create_bd_cell -type ip -vlnv xilinx.com:user:uart_baud_gen:1.0 uart_baud_gen_0
create_bd_cell -type ip -vlnv xilinx.com:user:uart_rx_ctl:1.0 uart_rx_ctl_0

# Add the led_ctrl IP to the subsystem
create_bd_cell -type ip -vlnv xilinx.com:user:led_ctl:1.0 led_ctl_0

# Add the meta_harden IP three times to the subsystem
create_bd_cell -type ip -vlnv xilinx.com:user:meta_harden:1.0 meta_harden_0
create_bd_cell -type ip -vlnv xilinx.com:user:meta_harden:1.0 meta_harden_1
create_bd_cell -type ip -vlnv xilinx.com:user:meta_harden:1.0 meta_harden_2

# For KCU105 Users - Add the Utility Buffer Block
if {$platform == "KCU105"} {
create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.2 util_ds_buf_0
}

endgroup
}

 ## *********** Step 4, 5: For KC7xx Users - Customizing the Clocking Wizard IP, For KCU105 Users - Customizing the Utility Buffer IP ***********
 
proc customizeIP {} {
variable platform

if {$platform == "KCU105"} {
startgroup
set_property -dict [list CONFIG.C_BUF_TYPE {IBUFDS}] [get_bd_cells util_ds_buf_0]
endgroup
}
}  

 ## *********** Step 6 :Completing the Subsystem Design  ***********
 
proc subsystemDesign {} {
variable platform
 
	if {$platform == "KCU105"} {
		startgroup
		make_bd_pins_external  [get_bd_pins util_ds_buf_0/IBUF_DS_P] [get_bd_pins util_ds_buf_0/IBUF_DS_N]
		endgroup
		set_property name clk_pin_p [get_bd_ports IBUF_DS_P_0]
		set_property name clk_pin_n [get_bd_ports IBUF_DS_N_0]
		regenerate_bd_layout
	}

# Create external ports for the led_ctl_0 IP
startgroup
make_bd_pins_external [get_bd_pins led_ctl_0/led_o]
set_property name led_pins [get_bd_ports led_o_0]

# Rename the meta_harden_1 IP to meta_harden_btn
set_property name meta_harden_btn [get_bd_cells meta_harden_1]

# Make the input port of the meta_harden_btn IP external
make_bd_pins_external [get_bd_pins meta_harden_btn/signal_src]
# Rename this external pin to btn_pin
set_property name btn_pin [get_bd_ports signal_src_0]

# Rename the meta_harden_2 IP to meta_harden_rst
set_property name meta_harden_rst [get_bd_cells meta_harden_2]

# Make the input port of the meta_harden_rst IP external
make_bd_pins_external  [get_bd_pins meta_harden_rst/signal_src]
# Rename this external pin to rst_pin
set_property name rst_pin [get_bd_ports signal_src_0]

# Make the input port of the meta_harden_0 IP external
make_bd_pins_external  [get_bd_pins meta_harden_0/signal_src]
# Rename this external pin to rxd_pin
set_property name rxd_pin [get_bd_ports signal_src_0]
endgroup


# Make the clock connections from the Utility Buffer block to the meta_harden IP in the subsystem
 if {$platform == "KCU105"} { 
connect_bd_net [get_bd_pins util_ds_buf_0/IBUF_OUT] [get_bd_pins meta_harden_0/clk_dst]
connect_bd_net [get_bd_pins util_ds_buf_0/IBUF_OUT] [get_bd_pins led_ctl_0/clk_rx]
connect_bd_net [get_bd_pins util_ds_buf_0/IBUF_OUT] [get_bd_pins uart_baud_gen_0/clk]
connect_bd_net [get_bd_pins util_ds_buf_0/IBUF_OUT] [get_bd_pins uart_rx_ctl_0/clk_rx]
connect_bd_net [get_bd_pins util_ds_buf_0/IBUF_OUT] [get_bd_pins meta_harden_btn/clk_dst]
connect_bd_net [get_bd_pins util_ds_buf_0/IBUF_OUT] [get_bd_pins meta_harden_rst/clk_dst]

regenerate_bd_layout
}

# Make the reset connections from the meta_harden_rst IP
connect_bd_net [get_bd_pins meta_harden_rst/signal_dst] [get_bd_pins meta_harden_btn/rst_dst]
connect_bd_net [get_bd_pins meta_harden_rst/signal_dst] [get_bd_pins meta_harden_0/rst_dst]
connect_bd_net [get_bd_pins meta_harden_rst/signal_dst] [get_bd_pins uart_baud_gen_0/rst]
connect_bd_net [get_bd_pins meta_harden_rst/signal_dst] [get_bd_pins led_ctl_0/rst_clk_rx]
connect_bd_net [get_bd_pins meta_harden_rst/signal_dst] [get_bd_pins uart_rx_ctl_0/rst_clk_rx]
regenerate_bd_layout

connect_bd_net [get_bd_pins meta_harden_0/signal_dst] [get_bd_pins uart_rx_ctl_0/rxd_clk_rx]
connect_bd_net [get_bd_pins meta_harden_btn/signal_dst] [get_bd_pins led_ctl_0/btn_clk_rx]
connect_bd_net [get_bd_pins uart_rx_ctl_0/rx_data] [get_bd_pins led_ctl_0/rx_data]
connect_bd_net [get_bd_pins uart_rx_ctl_0/rx_data_rdy] [get_bd_pins led_ctl_0/rx_data_rdy]
connect_bd_net [get_bd_pins uart_baud_gen_0/baud_x16_en] [get_bd_pins uart_rx_ctl_0/baud_x16_en]
regenerate_bd_layout

# Complete the reset connections by adding the Constant IP to the subsystem
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0
endgroup
set_property -dict [list CONFIG.CONST_VAL {0}] [get_bd_cells xlconstant_0]

connect_bd_net [get_bd_pins meta_harden_rst/rst_dst] [get_bd_pins xlconstant_0/dout]

# Create the uart_rx_i0 hierarchy for the design
startgroup
group_bd_cells uart_rx_i0 [get_bd_cells uart_rx_ctl_0] [get_bd_cells led_ctl_0] [get_bd_cells uart_baud_gen_0]
endgroup

# Create a comment in the canvas
set_property USER_COMMENTS.comment_0 {Enter Comments here}  [current_bd_design]
set_property USER_COMMENTS.comment_0 {This is an IPI example project. This is to demonstrate that the IP integrator flow (IPI flow) can also be used for non-embedded designs.}  [current_bd_design]

# Regenerate the layout
regenerate_bd_layout

# Run a design check to make sure that the design does not contain any errors
validate_bd_design
}

 ## *********** Step 7 :Generating the IP Output Products  ***********
 proc generateOutputProducts {} {
variable platform
variable language
variable tcName
variable demoOrLab 
variable projName 
variable TRAINING_PATH

# Generate the HDL wrapper to synthesize and implement the design
if {$language == "verilog"} {	
	 make_wrapper -files [get_files $TRAINING_PATH/$tcName/$demoOrLab/$platform/$language/UART_LED_Subsystem.srcs/sources_1/bd/UART_LED_Subsystem/UART_LED_Subsystem.bd] -top
	 add_files -norecurse $TRAINING_PATH/$tcName/$demoOrLab/$platform/$language/UART_LED_Subsystem.srcs/sources_1/bd/UART_LED_Subsystem/hdl/UART_LED_Subsystem_wrapper.v

} elseif {$language == "vhdl"} {
	 make_wrapper -files [get_files $TRAINING_PATH/$tcName/$demoOrLab/$platform/$language/UART_LED_Subsystem.srcs/sources_1/bd/UART_LED_Subsystem/UART_LED_Subsystem.bd] -top
	 add_files -norecurse $TRAINING_PATH/$tcName/$demoOrLab/$platform/$language/UART_LED_Subsystem.srcs/sources_1/bd/UART_LED_Subsystem/hdl/UART_LED_Subsystem_wrapper.vhd

}

# Save the block design
save_bd_design

# Generate the Tcl script to save the block design and IP customization
write_bd_tcl $TRAINING_PATH/$tcName/$demoOrLab/$platform/$language/design.tcl
}

 ## *********** Step 8 :Implementing the Block Design  ***********
proc ImplDsgn {} {
variable platform
variable tcName
variable TRAINING_PATH

add_files -fileset constrs_1 -norecurse $TRAINING_PATH/$tcName/support/uart_led_IP_Integrator.xdc
import_files -fileset constrs_1 $TRAINING_PATH/$tcName/support/uart_led_IP_Integrator.xdc

# Calling the proc which runs implementation
implementationRun
}

## ********** Running only the steps that are required with Make **************

proc make {stopAt} {

   puts "Running until the step $stopAt"
   #set steps [list S1_openProject S2_observeReport S3_addPriConstr S4_addGenConstr S5_genReport]
   set limit [string tolower $stopAt]
   switch $limit {
      step1  { createProject }
      step2  { make step1; addIP }
      step3  { make step2; createBlockDesign }
	  step4  { make step3; customizeIP }
      step5  { make step4; subsystemDesign }
      step6  { make step5; generateOutputProducts }
      step7  { make step6; ImplDsgn }
	  all    { make step7 }
      default { 
         puts "Call the make proc, Should be make step*" 
			  }	
	}	
}

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

###########################################################################
## Resets Completer Script
###########################################################################

# load the standard helper file
source -quiet ../../fpgaSupport_scripts/script1.tcl
source -quiet ../../fpgaSupport_scripts/script2.tcl

# project constants
set verbose 	1
set tcName 		Reset
set demoOrLab 	completed


 ## *********** Step 1 : Opening async_reset project and examine ***********

proc openProj_async_reset {} {
variable platform
variable language
variable tcName
variable demoOrLab 
variable projName 
variable TRAINING_PATH

set projName 	async_reset

# Add the platform and language combination that you want 
set isLangNotSelected [string compare -nocase $language "undefined"]
set isPlatNotSelected [string compare -nocase $platform "undefined"]
   
if {$isPlatNotSelected} {
      puts "Please type: use KCU105 | KC705 | KC7xx"
      puts "   then rerun the projectCreate"
}   

# Open a project
set projName.xpr {append $projName .xpr}
open_project $TRAINING_PATH/$tcName/$demoOrLab/$platform/$projName/$projName.xpr


# Calling the proc which runs implementation
synthesisRun

select [get_cells SysRst_L*]
report_timing_summary -delay_type min_max -report_unconstrained -check_timing_verbose -max_paths 10 -input_pins -name timing_1
report_timing -from [get_ports {SysRst_L}] -max_paths 100 -name async_timing_paths
get_property INIT [get_cells *count_reg[0][0]]
get_property INIT [get_cells sload_in_reg]
report_high_fanout_nets
select [get_nets async_reset_L]
close_design


# Calling the proc which runs implementation
implementationRun

report_high_fanout_nets
select [get_nets async_reset_L]
join [get_pins -of [get_nets async_reset_L]] \n
llength [get_pins -of [get_nets async_reset_L]]

close_design

close_project
}


 ## *********** Step 2 : Opening no_reset project and examine ***********

proc openProj_no_reset {} {
variable platform
variable language
variable tcName
variable demoOrLab 
variable projName 
variable TRAINING_PATH

set projName 	no_reset

# Add the platform and language combination that you want 
set isLangNotSelected [string compare -nocase $language "undefined"]
set isPlatNotSelected [string compare -nocase $platform "undefined"]
   
if {$isPlatNotSelected} {
      puts "Please type: use KCU105 | KC705 | KC7xx"
      puts "   then rerun the projectCreate"
}   

# Open a project
set projName.xpr {append $projName .xpr}
open_project $TRAINING_PATH/$tcName/$demoOrLab/$platform/$projName/$projName.xpr

	
# Calling the proc which runs implementation
synthesisRun

report_timing_summary -delay_type min_max -report_unconstrained -check_timing_verbose -max_paths 10 -input_pins -name timing_1
get_property INIT [get_cells sload_in_reg*]
close_design

# Calling the proc which runs implementation
implementationRun

select [get_cells sload_in_reg]
report_high_fanout_nets
close_design
close_project
}

 ## *********** Step 3 : Opening sync_reset project and examine ***********

proc openProj_sync_reset {} {
variable platform
variable language
variable tcName
variable demoOrLab 
variable projName 
variable TRAINING_PATH


set projName 	sync_reset

# Add the platform and language combination that you want 
set isLangNotSelected [string compare -nocase $language "undefined"]
set isPlatNotSelected [string compare -nocase $platform "undefined"]
   
if {$isPlatNotSelected} {
      puts "Please type: use KCU105 | KC705 | KC7xx"
      puts "   then rerun the projectCreate"
}   

# Open a project
set projName.xpr {append $projName .xpr}
open_project $TRAINING_PATH/$tcName/$demoOrLab/$platform/$projName/$projName.xpr


synth_design -rtl -name rtl_1

select [get_cells RESET_BRIDGE_100]
close_design

# Calling the proc which runs implementation
synthesisRun

report_timing_summary -delay_type min_max -report_unconstrained -check_timing_verbose -max_paths 10 -input_pins -name timing_1
report_high_fanout_nets
all_fanout -endpoints_only -flat [get_nets RESET_BRIDGE_100/sync_reset_out]
llength [all_fanout -endpoints_only -flat [get_nets RESET_BRIDGE_100/sync_reset_out]]
report_timing -through [get_nets {RESET_BRIDGE_100/sync_reset_out}] -name reset_timing_paths -max_paths 10
close_design
}


 ## *********** Step 4 : Moving high fan out signal ***********

proc move_highfanout_signal {} {

set_property verilog_define SYNC_RESET_ON_BUFG=1 [current_fileset]
reset_run synth_1

# Calling the proc which runs implementation
synthesisRun

report_high_fanout_nets
select [get_cells RESET_BRIDGE_100]
report_timing -through [get_nets {reset_clk100}] -name reset_timing_paths -max_paths 10
close_design
close_project
}


 ## ********** Running only the steps that are required with Make **************

proc make {stopAt} {

   puts "Running until the step $stopAt"
   set limit [string tolower $stopAt]
   switch $limit {
      step1  { openProj_async_reset }
      step2  { make step1; openProj_no_reset }
      step3  { make step2; openProj_sync_reset }
      step4  { make step3; move_highfanout_signal }
      all    { make step4 }
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

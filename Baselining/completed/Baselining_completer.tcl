###########################################################################
## Baselining Completer Script
###########################################################################

# load the standard helper file
source -quiet ../../fpgaSupport_scripts/script1.tcl
source -quiet ../../fpgaSupport_scripts/script2.tcl

# project constants
set verbose 	1
set tcName 	Baselining
set demoOrLab 	completed
set projName 	uart_led

 ## *********** Step 1 : Opening a project ***********

proc openProject {} {
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

# Open a project
set projName.xpr {append $projName .xpr}
open_project $TRAINING_PATH/$tcName/$demoOrLab/$platform/$language/$projName.xpr
}


 ## *********** Step 2 : Open synthesized design and run report_clock_networks and add primary clock constraints and run report_clock_networks again ***********

proc addPriConstr {} {
variable platform
variable language
variable tcName
variable demoOrLab 
variable projName
variable TRAINING_PATH

# Open the synthesized design
open_run synth_1 -name synth_1

report_clock_networks -name {network_1}

set projName.srcs {append $projName .srcs}
set_property target_constrs_file $TRAINING_PATH/$tcName/$demoOrLab/$platform/$language/$projName.srcs/constrs_1/imports/uart_led_Baselining.xdc [current_fileset -constrset]

# Adding the Primary Clock Constraints for both 7 series and Ultra-Scale board
create_clock -period 8 -name clk_pin_p -waveform {0.000 1.667} [get_ports clk_pin_p]

save_constraints

# Running the report_clock_networks
refresh_design
report_clock_networks -name {network_1}
report_clock_interaction -delay_type min_max -significant_digits 3 -name timing_1
check_timing -help

# Running check_timing 
check_timing -verbose

# Running report_timing_summary
report_timing_summary -delay_type min_max -report_unconstrained -check_timing_verbose -max_paths 10 -input_pins -name timing_1
close_design
}

 
 ## *********** Step 3 : Implementing the design and run report_timing_summary ***********

proc genReport {} {
variable platform
variable language
variable tcName
variable demoOrLab 
variable projName

# Implementing the design
implementationRun

# Running report_timing_summary and view different sections of the report
report_timing_summary -delay_type min_max -report_unconstrained -check_timing_verbose -max_paths 10 -input_pins -name timing_1
}


 ## *********** Step 4 : Adding the IO constraints and Implementing the design and run report_timing_summary again ***********

proc addIOConstr {} {
variable platform
variable language
variable tcName
variable demoOrLab 
variable projName

# Adding the Constraints for both 7 series and Ultra-Scale board

set_input_delay -clock [get_clocks clk_pin_p] 1.500 [get_ports {rst_pin rxd_pin btn_pin}]
set_input_delay -clock [get_clocks clk_pin_p] -min 1.00 [get_ports {rst_pin rxd_pin btn_pin}]
set_output_delay -clock [get_clocks clk_pin_p] 0.500 [get_ports led_pins*]
set_output_delay -clock [get_clocks clk_pin_p] -min -0.500 [get_ports led_pins*]

save_constraints -force

reset_run impl_1

# Implementing the design again
implementationRun

# Running check_timing
check_timing

}

 ## ********** Running only the steps that are required with Make **************

proc make {stopAt} {

   puts "Running until the step $stopAt"
   set limit [string tolower $stopAt]
   switch $limit {
      step1  { openProject }
      step2  { make step1; addPriConstr }
      step3  { make step2; genReport }
      step4  { make step3; addIOConstr }
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

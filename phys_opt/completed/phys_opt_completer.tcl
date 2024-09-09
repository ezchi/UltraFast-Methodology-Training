###########################################################################
## HDL Instantiation Flow Completer Script
###########################################################################

# load the standard helper file
source -quiet ../../fpgaSupport_scripts/script1.tcl
source -quiet ../../fpgaSupport_scripts/script2.tcl

# project constants
set verbose 	1
set tcName 	phys_opt
set demoOrLab 	completed
set projName 	wave_gen

##########################################################
## Step 1: Opening the project and open implemented design 
##########################################################


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
      puts "Please type: use verilog"
      puts "   then rerun the projectCreate"
} 
if {$isPlatNotSelected} {
      puts "Please type: use KCU105"
      puts "   then rerun the projectCreate"
}

# Open a project
set projName.xpr {append $projName .xpr}
open_project $TRAINING_PATH/$tcName/$demoOrLab/$platform/$language/$projName.xpr

#open Implemented design
open_run impl_1
}


##########################################################
## Step 2: Analyzing Timing Critical Paths
##########################################################
proc criticalPaths {} {
   variable platform
  #Generate the timing summary report
   report_timing_summary -delay_type min_max -report_unconstrained -check_timing_verbose -max_paths 10 -input_pins -name timing_1
}  
   
##########################################################
## Step 3: Implementing with phys_opt
##########################################################
proc implPhyOpt {} {
   variable platform
    
  # Create a new implementation run with physical optimization enabled              
  create_run impl_2 -parent_run synth_1 -flow {Vivado Implementation 2021}
  current_run [get_runs impl_2]
  #set_property STEPS.PHYS_OPT_DESIGN.IS_ENABLED true [get_runs impl_2]
  set_property STEPS.POST_ROUTE_PHYS_OPT_DESIGN.IS_ENABLED true [get_runs impl_2]
  
  #Implementing the design with new run impl_2
  launch_runs impl_2 -jobs 6
  wait_on_run impl_2
  open_run impl_2
  
  #Analyzing the path that was failing previously
  
  #report_timing -from [get_pins {clkx_nsamp_i0/bus_dst_reg[2]/C}] -to [get_pins {samp_gen_i0/samp_cnt_reg[3]/R}] -delay_type min_max -sort_by group -input_pins -name timing_1
  report_timing_summary -delay_type min_max -report_unconstrained -check_timing_verbose -max_paths 10 -input_pins -name timing_1
  } 
  # Review the implementation log to understand the physical optimization techniques performed


##########################################################
# Running through the steps that are required, with make
##########################################################
proc make {stopAt} {
   puts "Running until the step $stopAt"
   set limit [string tolower $stopAt]
   switch $limit {
      step1  { openProject }
      step2  { make step1; criticalPaths }
      step3  { make step2; implPhyOpt }
      all    { make step3 }
      
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

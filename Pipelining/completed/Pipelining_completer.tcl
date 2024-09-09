###########################################################################
## Pipelining Completer Script
###########################################################################

# load the standard helper file
source -quiet ../../fpgaSupport_scripts/script1.tcl
source -quiet ../../fpgaSupport_scripts/script2.tcl

# project constants
set verbose 1
set tcName 		Pipelining
set demoOrLab 	completed
set projName 	cksum

##############################################
## Step 1: Examining Non-Pipelined Design
##############################################
proc nonPipeline {} {
 variable platform
 variable tcName
 variable demoOrLab 
 variable projName 
 variable TRAINING_PATH

 set projName.xpr {append $projName .xpr}

 # Add the platform that you want 
 set isPlatNotSelected [string compare -nocase $platform "undefined"]
   
  if {$isPlatNotSelected} {
      puts "Please type: use KCU105 | KC705 | KC7xx"
      puts "   then rerun the projectCreate"
   }

 # Open a project
 open_project $TRAINING_PATH/$tcName/$demoOrLab/$platform/$projName/$projName.xpr

 # Opening the synthesized design
 open_run synth_1 -name synth_1

 # Generating Timing Summary Report
 report_timing_summary -delay_type min_max -report_unconstrained -check_timing_verbose -max_paths 10 -input_pins -name timing_1

}

##########################################################
## Step 2: Examining Partially Pipelined Design
##########################################################
proc partialPipeline {} {

 # Close the previously opened synthesized design
 close_design   

 # Make the synth_pipe1 design run the active run 
 # Design with a single additional pipeline register stage
 current_run [get_runs synth_pipe1]

 # Opening the synthesized design
 open_run synth_pipe1 -name synth_pipe1

 # Generating Timing Summary Report
 report_timing_summary -delay_type min_max -report_unconstrained -check_timing_verbose -max_paths 10 -input_pins -name timing_1
   
}


##########################################################
## Step 3: Examining Fully Pipelined Design
##########################################################

proc fullPipeline {} {

 # Close the previously opened synthesized design
 close_design 
 
 # Make the synth_pipe1 design run the active run 
 # Design with three pipeline register stages
 current_run [get_runs synth_pipe3]

 # Opening the synthesized design
 open_run synth_pipe3 -name synth_pipe3

 # Generating Timing Summary Report
 report_timing_summary -delay_type min_max -report_unconstrained -check_timing_verbose -max_paths 10 -input_pins -name timing_1
	
}

##########################################################
# Running through the steps that are required, with make
##########################################################
proc make {stopAt} {
   puts "Running until the step $stopAt"
   set limit [string tolower $stopAt]
   switch $limit {
      step1  { nonPipeline }
      step2  { make step1; partialPipeline }
      step3  { make step2; fullPipeline }
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

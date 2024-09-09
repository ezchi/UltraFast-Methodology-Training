// ******************************************************************
// ******	            Reset Example Top System              ******
// ******************************************************************
//
// File:        reset_example_top.v 
// Revision:    1.0
// Project:     Reset Methodology Lab
// Company:     Xilinx
// Date:        Feb 4, 2013 
// Author:      Andy Norton
//
//
//---------------------------------------------------------------------  
// Description:
//---------------------------------------------------------------------  
//  This example builds N counters (N=NUM_CNTRS) of counter width
//  C (CNTR_WIDTH). Counter outputs go to a PISO in order for these
//  to not be synthesized out. A single Serial Output is then
//  used for each counter.
//  
//  The NUM_CTNRS and CNTR_WIDTH parameters can be changed to increase
//   or decrease the size of the design.
//
//  The example can be built to use 
//       'no resets'   (best choice)                         
//      'async resets' (poor choice)   
//      'sync resets'  with a reset bridge (if reset needed, next best choice)
//      'sync_resets'  with a reset bridge with the high fanout sync_reset
//                       signal on a BUFG  (optional)
//
//  The different versions can be generated as follows:
//      no_reset         `define NO_RESET
//      async_reset       no defines (all commented out)
//      sync_reset       `define SYNC_RESET
//      sync_reset/BUFG  `define SYNC_RESET_ON_BUFG AND `define SYNC_RESET
//
//
//  The design should be build and examined as outlined in the lab 
//   description.
//---------------------------------------------------------------------  
//
//
// ******************************************************************
// ***              FPGA TOP MODULE VERILOG SOURCE CODE          ***
// ******************************************************************
`timescale 1ns/1ns


// ******************************************************************
// ******            LOCAL PARAMETERS & DEFINES                ******
// ******************************************************************
//`define SYNC_RESET_ON_BUFG 1        // for SYNC_RESET, puts it on a BUFG
//`define SYNC_RESET   1
//`define NO_RESET   1

//generic
`define INACTIVE    1'b0
`define ACTIVE      1'b1
`define INACTIVE_N  1'b1
`define ACTIVE_N    1'b0

// ******************************************************************
// **                     MODULE/PORT DEFINITIONS                  **
// **                                                              **
// **    CHANGE NUM_CNTRS and CNTR_WIDTH parameters as desired     **
// ******************************************************************

module reset_example_top #
     (
     parameter NUM_CNTRS =  64,
     parameter CNTR_WIDTH = 64       
     )(
    // System Clock 
    input                           SysClk,         // 100MHz in to MMCM
    input                           SysRst_L,       // System Reset In, active lo
    input       [NUM_CNTRS-1:0]     hold,           // hold per counter 
    input                           sload,          // sync load to PISOs 
    output reg  [NUM_CNTRS-1:0]     count_so,        // serial output from PISO
    output                          locked          // MMCM output
	);

// ******************************************************************
// ******     MODULE INTERNAL WIRE & REGISTER DEFINITIONS      ******
// ******************************************************************
    reg     [NUM_CNTRS-1:0]     hold_in ={NUM_CNTRS{`ACTIVE}};
    reg                         sload_in=`ACTIVE;
    wire    [NUM_CNTRS-1:0]     count_piso_so;
    reg     [CNTR_WIDTH-1:0]    count [0:NUM_CNTRS-1] ;

    wire                        clk100;
   (* dont_touch = "true" *) wire async_reset_L;
	
    wire                        reset_clk100;
    wire                        reset_clk100_i;



// ******************************************************************
// ******               CLOCKs and RESETs                      ******
// ******************************************************************

    assign async_reset_L = !SysRst_L;


// This was created by the IP Catelog Clock Wizard.
//----------------------------------------------------------------------------
//  Output     Output      Phase    Duty Cycle   Pk-to-Pk     Phase
//   Clock     Freq (MHz)  (degrees)    (%)     Jitter (ps)  Error (ps)
//----------------------------------------------------------------------------
// CLK_OUT1___100.000______0.000______50.0______130.958_____98.575
// CLK_OUT2___200.000______0.000______50.0______114.829_____98.575
//
 mmcm_clocks    mmcm_clocks_inst (
   // Clock in ports
    .clk_in1    (SysClk),               // input CLK_IN1
    // Clock out ports
    .clk_out1   (clk100),               // output CLK_OUT1
    .clk_out2   (),                     // output CLK_OUT2, not currently used
    // Status and control signals
    .reset      (`INACTIVE),          // input RESET
    .locked     (locked)
    );      

`ifdef SYNC_RESET_ON_BUFG
//--- Reset Bridge per clock domain ---
reset_bridge RESET_BRIDGE_100 (
    .clk            (clk100),                   // clk domain specific
    .ext_reset_in   (async_reset),              // active hi ext reset
    .lock           (locked),                   // lock from MMCM
    .sync_reset_out (reset_clk100_i)              // synch reset out
    );
    // put the reset on a BUFG
    BUFG SYNC_RESET_BUFG_inst ( .I(reset_clk100_i), .O(reset_clk100) );

`elsif SYNC_RESET
reset_bridge RESET_BRIDGE_100 (
    .clk            (clk100),                   // clk domain specific
    .ext_reset_in   (async_reset),              // active hi ext reset
    .lock           (locked),                   // lock from MMCM
    .sync_reset_out (reset_clk100)              // synch reset out
    );
`endif

// ******************************************************************
// ******                       MAIN CODE                      ******
// ******************************************************************

    // sync inputs to clock domain
    always @(posedge clk100)
    begin
`ifdef SYNC_RESET
      if(reset_clk100) begin
        hold_in        <= #1 {NUM_CNTRS{`ACTIVE}};
        sload_in       <= #1 `ACTIVE;
      end
      else 
`endif
      begin
        hold_in        <= #1 hold;
        sload_in       <= #1 sload;
      end

    end

    // COUNTERS
    genvar i;
    generate
    for(i=0; i < NUM_CNTRS; i=i+1)
      begin: cntr_inst
`ifdef NO_RESET
        always @(posedge clk100)
        if(hold_in[i])
            count[i] <= #1 count[i];
        else
            count[i] <= #1 count[i]+1;
`elsif SYNC_RESET
        always @(posedge clk100)
        if(reset_clk100)
            count[i] <= #1 0;
        else if(hold_in[i])
            count[i] <= #1 count[i];
        else 
            count[i] <= #1 count[i]+1;
`else
    // ASYNC_RESET
        always @(posedge clk100 or posedge async_reset_L)
        if(async_reset_L)
            count[i] <= #1 {CNTR_WIDTH{`INACTIVE}};
        else if(hold_in[i])
            count[i] <= #1 count[i];
        else 
            count[i] <= #1 count[i]+1;
`endif

    // PISO per counter
    piso #(.WIDTH(CNTR_WIDTH) ) PISO_inst  ( 
        .clk  (clk100), 
        .SLOAD(sload_in ), 
        .PI   (count[i] ),
        .SO   (count_piso_so[i])
        );
      end
    endgenerate


    // register SO outputs
    genvar k;
    generate
    for(k=0; k < NUM_CNTRS; k=k+1)
      begin: count_so_inst
`ifdef NO_RESET
       always @(posedge clk100)
            count_so[k] <= #1 count_piso_so[k];
      end
`elsif SYNC_RESET
        always @(posedge clk100)
        if(reset_clk100)
            count_so[k] <= #1 {NUM_CNTRS{`INACTIVE}};
        else 
            count_so[k] <= #1 count_piso_so[k];
      end
`else
    // ASYNC_RESET
        always @(posedge clk100 or posedge async_reset_L)
        if(async_reset_L)
            count_so[k] <= #1 {NUM_CNTRS{`INACTIVE}};
        else 
            count_so[k] <= #1 count_piso_so[k];
      end
`endif
    endgenerate

endmodule


//<copyright-disclaimer-start>
//  ************************************************************************************************************
//  * © Copyright 2022 Xilinx, Inc. All rights reserved.                                                       *
//  * This file contains confidential and proprietary information of Xilinx, Inc. and                          *
//  * is protected under U.S. and international copyright and other intellectual property laws.                *
//  * DISCLAIMER                                                                                               *
//  * This disclaimer is not a license and does not grant any rights to the materials distributed              *
//  * herewith. Except as otherwise provided in a valid license issued to you by Xilinx, and to the            *
//  * maximum extent permitted by applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS"               *
//  * AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS,                 *
//  * IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT,     *
//  * OR FITNESS FOR ANY PARTICULAR PURPOSE; and (2) Xilinx shall not be liable (whether in contract or tort,  *
//  * including negligence, or under any other theory of liability) for any loss or damage of any kind or      *
//  * nature related to, arising under or in connection with these materials, including for any direct, or     *
//  * any indirect, special, incidental, or consequential loss or damage (including loss of data, profits,     *
//  * goodwill, or any type of loss or damage suffered as a result of any action brought by a third party)     *
//  * even if such damage or loss was reasonably foreseeable or Xilinx had been advised of the possibility     *
//  * of the same.                                                                                             *
//  * CRITICAL APPLICATIONS                                                                                    *
//  * Xilinx products are not designed or intended to be fail-safe, or for use in any application requiring    *
//  * fail-safe performance, such as life-support or safety devices or systems, Class III medical devices,     *
//  * nuclear facilities, applications related to the deployment of airbags, or any other applications that    *
//  * could lead to death, personal injury, or severe property or environmental damage (individually and       *
//  * collectively, "Critical Applications"). Customer assumes the sole risk and liability of any use of       *
//  * Xilinx products in Critical Applications, subject only to applicable laws and regulations governing      *
//  * limitations on product liability.                                                                        *
//  * THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.                 *
//  *                                                                                                          *
//  ************************************************************************************************************
//<copyright-disclaimer-end>

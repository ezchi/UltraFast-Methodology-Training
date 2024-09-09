//-----------------------------------------------------------------------------
//  
//  Copyright (c) 2009 Xilinx Inc.
//
//  Project  : Programmable Wave Generator
//  Module   : debouncer.v
//  Parent   : lb_ctl
//  Children : meta_harden.v
//
//  Description: 
//     Simple switch debouncer. Filters out any transition that lasts less
//     than FILTER clocks long
//
//  Parameters:
//     FILTER:     Number of consecutive clocks of the same data required for
//                 a switch in the output
//
//  Notes       : 
//
//  Multicycle and False Paths
//     None

`timescale 1ns/1ps


module debouncer (
  input            clk,          // Clock input
  input            rst,          // Active HIGH reset - synchronous to clk
  
  input            signal_in,    // Undebounced signal
  output           signal_out    // Debounced signal
);

//***************************************************************************
// Function definitions
//***************************************************************************

`include "clogb2.txt"

//***************************************************************************
// Parameter definitions
//***************************************************************************

  parameter 
    FILTER = 200_000_000;     // Number of clocks required for a switch

  localparam
    RELOAD = FILTER - 1,
    FILTER_WIDTH = clogb2(FILTER);
    

//***************************************************************************
// Reg declarations
//***************************************************************************

  reg                    signal_out_reg; // Current output
  reg [FILTER_WIDTH-1:0] cnt;            // Counter

//***************************************************************************
// Wire declarations
//***************************************************************************

  wire signal_in_clk; // Synchronized to clk

//***************************************************************************
// Code
//***************************************************************************

  // signal_in is not synchronous to clk - use a metastability hardener to
  // synchronize it
  meta_harden meta_harden_signal_in_i0 (
    .clk_dst       (clk),
    .rst_dst       (rst),
    .signal_src    (signal_in),
    .signal_dst    (signal_in_clk)
  );

  always @(posedge clk)
  begin
    if (rst)
    begin
      signal_out_reg <= signal_in_clk;
      cnt            <= RELOAD;
    end
    else // !rst
    begin
      if (signal_in_clk == signal_out_reg)
      begin
        // The input is not different then the current filtered value.
        // Reload the counter so that it is ready to count down in case
        // it is different during the next clock
        cnt <= RELOAD;
      end
      else if (cnt == 0) // The counter expired and we are still not equal
      begin
        // Take the new value, and reload the counter
        signal_out_reg <= signal_in_clk;
        cnt            <= RELOAD;
      end
      else // The counter is not 0
      begin
        cnt <= cnt - 1'b1; // decrement it
      end
    end // if rst
  end // always

  assign signal_out = signal_out_reg;

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

//-----------------------------------------------------------------------------
//  
//  Copyright (c) 2009 Xilinx Inc.
//
//  Project  : Programmable Wave Generator
//  Module   : clk_div.v
//  Parent   : wave_gen.v
//  Children : None
//
//  Description: 
//     This module is a programmable divider use for generating the sample
//     clock (clk_samp). It continuously counts down from pre_clk_tx-1 to
//     0, asserting en_clk_samp during the 0 count.
//
//     To ensure proper reset of the FFs running on the derived clock,
//     en_clk_samp is asserted during reset.
//
//  Parameters:
//
//  Notes       : 
//     pre_clk_tx must be at least 2 for this module to work. Since
//     it is not allowed to be <32 (by the parser), this is not a problem.
//
//  Multicycle and False Paths
//     None

`timescale 1ns/1ps


module clk_div (
  input             clk_tx,          // Clock input
  input             rst_clk_tx,      // Reset - synchronous to clk_tx
  
  input      [15:0] pre_clk_tx,      // Current divider
  output reg        en_clk_samp      // Clock enable for BUFG
);

//***************************************************************************
// Function definitions
//***************************************************************************

//***************************************************************************
// Parameter definitions
//***************************************************************************


//***************************************************************************
// Reg declarations
//***************************************************************************

  reg [15:0]             cnt;            // Counter

//***************************************************************************
// Wire declarations
//***************************************************************************
  
//***************************************************************************
// Code
//***************************************************************************

  always @(posedge clk_tx)
  begin
    if (rst_clk_tx)
    begin
      en_clk_samp    <= #5 1'b1;    // Enable the clock during reset
      cnt            <= 16'b0;
    end
    else // !rst
    begin
      // Since we want en_clk_samp to be 1 when cnt is 0 we compare
      // it to 1 on the clock before
      en_clk_samp <= #5 (cnt == 16'b1);

      if (cnt == 0) // The counter expired and we are still not equal
      begin
        cnt <= pre_clk_tx - 1'b1;
      end
      else // The counter is not 0
      begin
        cnt <= cnt - 1'b1; // decrement it
      end
    end // if rst
  end // always

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

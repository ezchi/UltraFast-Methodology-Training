/// *****************************************************************
// ******                       RESET BRIDGE                   ******
// ******************************************************************
//
// File:        reset_bridge.v 
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
//    This is a specialized metastability hardener intended for use in the
//    reset path. The reset will assert ASYNCHRONOUSLY when the input reset is
//    asserted, but will deassert synchronously.
//
//    In designs with asynchronous reset flip-flops, this generates a reset
//    that can meet the "recovery time" requirement of the flip-flop (be sure
//    to enable the recovery time arc checking - ENABLE=reg_sr_r).
//
//    In designs with synchronous resets, it ensures that the reset is
//    available before the first valid clock pulse arrives.
//
//   NOTE: Multicycle and False Paths, Timing Exceptions
//    A tighter timing constraint should be placed between the rst_meta
//    and rst_dst flip-flops to allow for meta-stability settling time
//

`timescale 1ns/1ps


module reset_bridge (
  input            clk,             // Destination clock
  input            ext_reset_in,    // Asynchronous reset signal
  input            lock,            // lock input from MMCM
  output reg       sync_reset_out   // Synchronized reset signal
);


//***************************************************************************
// Register declarations
//***************************************************************************

    reg     rst_meta=0;             // After sampling the async rst, this has
                                    // a high probability of being metastable.
                                    // The second sampling (rst_dst) has
                                    // a much lower probability of being
                                    // metastable
    wire    async_reset;

//***************************************************************************
// Code
//***************************************************************************

// use lock if present
  assign async_reset = ext_reset_in || !lock;

  always @(posedge clk or posedge async_reset)
  begin
    if (async_reset)
    begin
      rst_meta        <= 1'b1;
      sync_reset_out  <= 1'b1;
    end
    else // if !sync_reset_out
    begin
      rst_meta        <= 1'b0;
      sync_reset_out  <= rst_meta;
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

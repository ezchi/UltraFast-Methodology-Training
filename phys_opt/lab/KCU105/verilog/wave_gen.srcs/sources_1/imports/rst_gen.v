//-----------------------------------------------------------------------------
//  
//  Copyright (c) 2009 Xilinx Inc.
//
//  Project  : Programmable Wave Generator
//  Module   : rst_gen.v
//  Parent   : wave_gen.v
//  Children : reset_bridge.v
//
//  Description: 
//     This module is the reset generator for the design.
//     It takes the asynchronous reset in (from the IBUF), and generates
//     three synchronous resets - one on each clock domain.
//
//  Parameters:
//     None
//
//  Notes       : 
//
//  Multicycle and False Paths
//     None

`timescale 1ns/1ps


module rst_gen (
  input             clk_rx,          // Receive clock
  input             clk_tx,          // Transmit clock
  input             clk_samp,        // Sample clock

  input             rst_i,           // Asynchronous input - from IBUF
  input             clock_locked,    // Locked signal from clk_core

  output            rst_clk_rx,      // Reset, synchronized to clk_rx
  output            rst_clk_tx,      // Reset, synchronized to clk_tx
  output            rst_clk_samp     // Reset, synchronized to clk_samp
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

//***************************************************************************
// Wire declarations
//***************************************************************************

  wire int_rst;
  
//***************************************************************************
// Code
//***************************************************************************

  // Generate the internal reset - it is asserted whenever the reset pin
  // is asserted, or the DCM is not locked
  assign int_rst = rst_i || !clock_locked;

  // Instantiate the reset bridges

  // For clk_rx
  reset_bridge reset_bridge_clk_rx_i0 (
    .clk_dst   (clk_rx),
    .rst_in    (int_rst),
    .rst_dst   (rst_clk_rx)
  );

  // For clk_tx
  reset_bridge reset_bridge_clk_tx_i0 (
    .clk_dst   (clk_tx),
    .rst_in    (int_rst),
    .rst_dst   (rst_clk_tx)
  );
  

  // For clk_samp
  reset_bridge reset_bridge_clk_samp_i0 (
    .clk_dst   (clk_samp),
    .rst_in    (int_rst),
    .rst_dst   (rst_clk_samp)
  );

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

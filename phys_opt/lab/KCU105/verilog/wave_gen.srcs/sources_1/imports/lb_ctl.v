//-----------------------------------------------------------------------------
//  
//  Copyright (c) 2009 Xilinx Inc.
//
//  Project  : Programmable Wave Generator
//  Module   : lb_ctl.v
//  Parent   : wave_gen
//  Children : debouncer.v
//
//  Description: 
//     Loopback controller.
//     Implements a debouncer on a slide switch, which is used to select
//     the output on the txd pin. When "off" (connected to gnd, so low), the 
//     normal transmit path is selected. When "on" (high), the rxd pin is
//     looped back to the txd pin with no intervening logic (a pure
//     combinational path)
//
//  Parameters:
//     CLOCK_RATE:     Clock rate (in Hz)
//     DEBOUNCE_TIME:  In SECONDS (real)
//
//  Local Parameters:
//
//  Notes       : 
//
//  Multicycle and False Paths
//     None

`timescale 1ns/1ps


module lb_ctl (
  input            clk_tx,          // Clock input
  input            rst_clk_tx,      // Active HIGH reset - synchronous to clk_tx
  
  input            lb_sel_i,        // Undebounced slide switch input
  
  input            txd_tx,          // Normal transmit data
  input            rxd_clk_rx,      // Receive data

  output reg       txd_o            // Transmit data to pin
);


//***************************************************************************
// Parameter definitions
//***************************************************************************

//  parameter 
//    CLOCK_RATE = 50_000_000,
//    DEBOUNCE_TIME = 0.004;    // The switch bounces for 2ms. Use 4ms for safety

//  localparam
//    CLOCK_PERIOD = 1.0/CLOCK_RATE,
//    FILTER       = (DEBOUNCE_TIME + CLOCK_PERIOD/2) / CLOCK_PERIOD;

  parameter FILTER = 200_000; // 0.004s at 50MHz
    

//***************************************************************************
// Reg declarations
//***************************************************************************


//***************************************************************************
// Wire declarations
//***************************************************************************

  wire         lb_sel_filt;          // Filtered value of the lb_sel switch

  wire         rxd_clk_tx;           // RXD re-synchronized to clk_tx
  
//***************************************************************************
// Code
//***************************************************************************

  // Instantiate the debouncer.

  debouncer #(
    .FILTER     (FILTER)
  ) debouncer_i0 (
    .clk        (clk_tx),
    .rst        (rst_clk_tx),
    .signal_in  (lb_sel_i),
    .signal_out (lb_sel_filt)
  );

  meta_harden meta_harden_rxd_i0 (
    .clk_dst    (clk_tx),
    .rst_dst    (rst_clk_tx),
    .signal_src (rxd_clk_rx),
    .signal_dst (rxd_clk_tx)
  );

  // Implement the loopback MUX
  always @(posedge clk_tx)
  begin
    if (rst_clk_tx)
    begin
      txd_o <= 1'b0;
    end
    else
    begin
      txd_o <= lb_sel_filt ? rxd_clk_tx : txd_tx;
    end
  end

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

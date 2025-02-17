//-----------------------------------------------------------------------------
//  
//  Copyright (c) 2008 Xilinx Inc.
//
//  Project  : Programmable Wave Generator
//  Module   : clkx_bus.v
//  Parent   : Various
//  Children : meta_harden.v
//
//  Description: 
//    This module brings a bus of signals across a clock boundary. The 
//    bus must not change more often than once every 8+ destination clocks.
//    The change of the bus must be accompanied by a "new" signal which is
//    valid for one source clock cycle
//
//  Parameters:
//    PW        : Minumum pulse length, measured in source clock periods, to
//                accurately cross between domains. For clock crossings
//                between similar frequency domains, should be set to 3
//    WIDTH     : Width of the bus to cross
//
//  Notes       : 
//    This module is only expected to be used for "infrequently" updating
//    signals.
//
//  Multicycle and False Paths, Timing Exceptions
//    The metastibility hardener meta_harden used in this module should have
//    a tighter timing constraint placed on its internal net.
//

`timescale 1ns/1ps


module clkx_bus #(
  parameter PW    = 3,
  parameter WIDTH = 16
) (
  input                  clk_src,      // Source clock
  input                  rst_clk_src,  // Reset - synchronous to source clock
  input                  clk_dst,      // Destination clock
  input                  rst_clk_dst,  // Reset - synchronous to dest clock
  input      [WIDTH-1:0] bus_src,      // Bus input, sync to source clock
  input                  bus_new_src,  // bus_src has changed this clock 
  output reg [WIDTH-1:0] bus_dst,      // Bus output, sync to dest clock
  output reg             bus_new_dst   // bus_dst has changed this clock 
);

`include "clogb2.txt"

//***************************************************************************
// Register declarations
//***************************************************************************

  reg [clogb2(PW)-1:0] bus_new_cnt_src; // Counts from PW-1 to 0

  reg                  bus_new_stretch_src; // bus_new_src stretched to PW

  wire                 bus_new_stretch_dst; // Stretched pulse sync'd to dest

  reg                  bus_new_stretch_old_dst; // value on previous clock 
                                                // for edge detect

  reg [WIDTH-1:0]      bus_samp_src;        // Bus input sampled when 
                                            // bus_new_src is asserted 


//***************************************************************************
// Code
//***************************************************************************


  // Generate the stretched version of bus_new_src

  // To assert for PW clocks, we use the one where the bus_src_new is detected
  // and the PW-1 following clocks. To do that, we count from PW-1 to 0, and
  // keep the output asserted whenever the counter is not 0

  always @(posedge clk_src)
  begin
    if (rst_clk_src)
    begin
      bus_new_cnt_src     <= 0;
      bus_new_stretch_src <= 1'b0;
    end
    else if (bus_new_cnt_src != 0) // If not zero, in a count, so decrement
    begin
      bus_new_cnt_src     <= bus_new_cnt_src - 1'b1;
      bus_new_stretch_src <= 1'b1;
    end
    else if (bus_new_src) // We have a new pulse to generate
    begin
      bus_new_cnt_src <= PW - 1'b1;
      bus_new_stretch_src <= 1'b1;
    end
    else // We didn't see a new one, and we aren't counting a pulse
    begin
      bus_new_stretch_src <= 1'b0;
    end
  end // always

  // Sample the incoming bus whenever the "new" signal is asserted to ensure
  // that we have a stable version of it between assertions of "new"

  always @(posedge clk_src)
  begin
    if (rst_clk_src)
    begin
      bus_samp_src   <= 0;
    end
    else if (bus_new_src)
    begin
      bus_samp_src   <= bus_src;
    end
  end // always

  // Metastability harden the bus_new_stretch_src
  meta_harden meta_harden_bus_new_i0 (
    .clk_dst    (clk_dst),
    .rst_dst    (rst_clk_dst),
    .signal_src (bus_new_stretch_src),
    .signal_dst (bus_new_stretch_dst)
  );

  // Capture the value of bus_new_stretch_dst for edge detection
  always @(posedge clk_dst)
  begin
    if (rst_clk_dst)
    begin
      bus_new_stretch_old_dst   <= 1'b0;
    end
    else 
    begin
      bus_new_stretch_old_dst   <= bus_new_stretch_dst;
    end
  end // always

  // Now generate the outputs
  always @(posedge clk_dst)
  begin
    if (rst_clk_dst)
    begin
      bus_dst     <= bus_src;
      bus_new_dst <= 1'b0;
    end
    else if (bus_new_stretch_dst && !bus_new_stretch_old_dst)
    begin
      // This is the first clock that bus_new_stretch_dst is asserted
      // We know that bus_samp_src is stable, so we can sample it on the
      // destination clock even though it is on the other clock domain.
      // We also need to pulse the bus_new_dst for one clock
      bus_dst     <= bus_samp_src;
      bus_new_dst <= 1'b1;
    end
    else
    begin
      bus_new_dst <= 1'b0;
    end
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

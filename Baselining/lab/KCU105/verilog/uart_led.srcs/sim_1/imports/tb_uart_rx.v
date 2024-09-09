//-----------------------------------------------------------------------------
//  
//  Copyright (c) 2009 Xilinx Inc.
//
//  Project  : Programmable Wave Generator
//  Module   : tb_uart_rx.v
//  Parent   : Testcase
//  Children : tb_uart_driver, tb_resp_checker, tb_fifo, uart_rx
//
//  Description: 
//    This is the top level module for the testbench for the uart_rx module.
//
//  Parameters: 
//
//  Tasks:
//
//  Internal variables:
//
//  Notes       : 
//    
//
//  Multicycle and False Paths
//    None - this is a testbench file only, and is not intended for synthesis
//

// All times in this testbench are expressed in units of nanoseconds, with a 
// precision of 1ps increments
`timescale 1ns/1ps


module tb_uart_rx (); 

//***************************************************************************
// Parameter definitions
//***************************************************************************
  parameter FIFO_DEPTH=256;

  parameter BAUD_RATE = 115_200; 

  parameter CLOCK_RATE = 125_000_000;  // Clock period

  parameter PERIOD = 1_000_000_000.0/CLOCK_RATE;



//***************************************************************************
// Register declarations
//***************************************************************************
  
  reg               clk = 1'b0;

  wire              rst;

  wire              rxd_i;

  wire [7:0]        rx_data;
  wire              rx_data_rdy;
  wire              frm_err;

//***************************************************************************
// Code
//***************************************************************************

  // Generate the clock
  initial
  begin
    clk = 0;
    forever
    begin
      #(PERIOD/2.0) clk = ~clk;
    end // forever
  end // initial

  // Instantiate the reset generator
  
  tb_resetgen tb_resetgen_i0 (
    .clk      (clk),
    .reset    (rst)
  );

  // Instantiate the data fifo

  tb_fifo #(
    .WIDTH(8),
    .DEPTH(FIFO_DEPTH)
  ) tb_char_fifo_i0 ();

  // Instantiate the data generator

  tb_uart_driver #(
    .BAUD_RATE (BAUD_RATE)
  ) tb_uart_driver_i0 (
    .data_out  (rxd_i)
  );

  // Instantiate the data checker
  
  tb_resp_checker tb_resp_checker_i0 (
    .strobe      (rx_data_rdy),
    .frm_err     (frm_err),
    .data_in     (rx_data)
  );


  uart_rx #(
    .BAUD_RATE   (BAUD_RATE),
    .CLOCK_RATE  (CLOCK_RATE)
  ) uart_rx_i0 (
    .clk_rx      (clk),
    .rst_clk_rx  (rst),
    .rxd_i       (rxd_i),
    .rx_data     (rx_data),
    .rx_data_rdy (rx_data_rdy),
    .frm_err     (frm_err)

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

//-----------------------------------------------------------------------------
//  
//  Copyright (c) 2009 Xilinx Inc.
//
//  Project  : Programmable Wave Generator
//  Module   : uart_led.v
//  Parent   : None
//  Children : uart_rx.v led_ctl.v 
//
//  Description: 
//     Ties the UART receiver to the LED controller
//
//  Parameters:
//     None
//
//  Local Parameters:
//
//  Notes       : 
//
//  Multicycle and False Paths
//    None
//

`timescale 1ns/1ps


module uart_led (
  // Write side inputs
  input            clk_pin_p,      // Clock input (from pin)
  input            clk_pin_n,      //   - differential pair
  input            rst_pin,        // Active HIGH reset (from pin)

  input            btn_pin,        // Button to swap high and low bits

  input            rxd_pin,        // RS232 RXD pin - directly from pin

  output     [7:0] led_pins         // 8 LED outputs
);


//***************************************************************************
// Parameter definitions
//***************************************************************************

  parameter BAUD_RATE           = 115_200;   

  parameter CLOCK_RATE          = 125_000_000;

//***************************************************************************
// Reg declarations
//***************************************************************************

//***************************************************************************
// Wire declarations
//***************************************************************************

  // Pins

  wire             rst_i;
  wire             clk_i;
  wire             rxd_i;
  wire             btn_i;
  wire [7:0]       led_o;

  // Output of BUFG
  wire             clk_rx;

  // Synchronized reset
  wire             rst_clk_rx;

  // Synchronized button
  wire             btn_clk_rx;

  // Between uart_rx and led_ctl
  wire [7:0]       rx_data;      // Data output of uart_rx
  wire             rx_data_rdy;  // Data ready output of uart_rx
  
//***************************************************************************
// Code
//***************************************************************************

  IBUFGDS IBUFG_clk_i0   ( .I  (clk_pin_p),   
                           .IB (clk_pin_n),
                           .O  (clk_i)
                         );
  IBUF    IBUF_rxd_i0    (.I (rxd_pin),   .O (rxd_i));
  IBUF    IBUF_rst_i0    (.I (rst_pin),   .O (rst_i));
  IBUF    IBUF_btn_i0    (.I (btn_pin),   .O (btn_i));

  BUFG    BUFG_clk_rx_i0 (.I (clk_i), .O (clk_rx));

  // Metastability harden the rst - this is an asynchronous input to the
  // system (from a pushbutton), and is used in synchronous logic. Therefore
  // it must first be synchronized to the clock domain (clk_rx in this case)
  // prior to being used. A simple metastability hardener is appropriate here.
  meta_harden meta_harden_rst_i0 (
    .clk_dst      (clk_rx),
    .rst_dst      (1'b0),    // No reset on the hardener for reset!
    .signal_src   (rst_i),
    .signal_dst   (rst_clk_rx)
  );

  // And the button input
  meta_harden meta_harden_btn_i0 (
    .clk_dst      (clk_rx),
    .rst_dst      (rst_clk_rx),
    .signal_src   (btn_i),
    .signal_dst   (btn_clk_rx)
  );

  uart_rx #(
    .CLOCK_RATE   (CLOCK_RATE),
    .BAUD_RATE    (BAUD_RATE) 
  ) uart_rx_i0 (
    .clk_rx      (clk_rx),
    .rst_clk_rx  (rst_clk_rx),

    .rxd_i       (rxd_i),
    .rxd_clk_rx  (),
    
    .rx_data_rdy (rx_data_rdy),
    .rx_data     (rx_data),
    .frm_err     ()
  );

  led_ctl led_ctl_i0 (
    .clk_rx      (clk_rx),
    .rst_clk_rx  (rst_clk_rx),
    .btn_clk_rx  (btn_clk_rx),
    .rx_data     (rx_data),
    .rx_data_rdy (rx_data_rdy),
    .led_o       (led_o)
  );

  OBUF OBUF_led_i0 (.I(led_o[0]), .O(led_pins[0]));
  OBUF OBUF_led_i1 (.I(led_o[1]), .O(led_pins[1]));
  OBUF OBUF_led_i2 (.I(led_o[2]), .O(led_pins[2]));
  OBUF OBUF_led_i3 (.I(led_o[3]), .O(led_pins[3]));
  OBUF OBUF_led_i4 (.I(led_o[4]), .O(led_pins[4]));
  OBUF OBUF_led_i5 (.I(led_o[5]), .O(led_pins[5]));
  OBUF OBUF_led_i6 (.I(led_o[6]), .O(led_pins[6]));
  OBUF OBUF_led_i7 (.I(led_o[7]), .O(led_pins[7]));

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

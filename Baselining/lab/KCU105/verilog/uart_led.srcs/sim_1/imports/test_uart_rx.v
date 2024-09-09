//-----------------------------------------------------------------------------
//  
//  Copyright (c) 2009 Xilinx Inc.
//
//  Project  : Programmable Wave Generator
//  Module   : test_uart_rx
//  Parent   : None
//  Children : tb_uart_rx
//
//  Description: 
//    This module is a test for the uart receiver
//
//  Parameters: 
//    None
//
//  Global variables:
//    Only those provided by the tb_fifo
//
//
//  Notes       : 
//
//  Multicycle and False Paths
//    None - this is a testbench file only, and is not intended for synthesis
//

// All times in this testbench are expressed in units of nanoseconds, with a 
// precision of 1ps increments
`timescale 1ns/1ps

module test_uart_rx (); // No ports

//***************************************************************************
// Parameter definitions
//***************************************************************************

  parameter NUM_CHAR=43; // Be sure to change if you change string
//***************************************************************************
// Local Reg and Wires
//***************************************************************************
  
  integer i,j;

  reg [7:0]              char_to_send;
  reg [0:(NUM_CHAR*8)-1] string =
    "Welcome to Our training";

//***************************************************************************
// Code
//***************************************************************************

  // Instantiate the testbench
  tb_uart_rx tb ();

  initial
  begin

    $timeformat(-9,2," ns",14);
    
    #10;
    $display("%t       Starting simulation",$realtime);

    // Assert the reset for 20 clocks
    tb.tb_resetgen_i0.assert_reset(20);

    // Enable the data checker
    tb.tb_resp_checker_i0.enable(1'b1);
    
    // Wait 500us
    #500_000 ;

    // Send the string
    for (i=0; i <= NUM_CHAR-1; i=i+1)
    begin
      char_to_send = string[i*8+:8];
      tb.tb_uart_driver_i0.send_char_push(char_to_send);
      
      // Wait 20us between characters - not necessary for protocol
      // Remove the delay to test back-to-back characters
      #20_000;  
    end

    #500_000 ; // Wait 500us after last char


    // Check that the all data was received
    tb.tb_resp_checker_i0.is_done;

    $stop;
    $finish;

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

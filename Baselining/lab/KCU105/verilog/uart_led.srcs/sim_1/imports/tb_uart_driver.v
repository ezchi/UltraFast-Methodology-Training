//-----------------------------------------------------------------------------
//  
//  Copyright (c) 2009 Xilinx Inc.
//
//  Project  : Programmable Wave Generator
//  Module   : tb_uart_driver.v
//  Parent   : tb_uart_rx
//  Children : none
//
//  Description: 
//    This testbench module generates serial data. It is essentially
//    a behavioral implementation of a UART transmitter, sending one character
//    at a time (when invoked through one of its tasks), at a specified bit
//    period. The character is sent using the RS232 protocol; START, 8 data
//    bits (LSbit first), STOP.
//
//  Parameters: 
//
//  Tasks:
//    send_char_bitper : Sends a character at the specified bit period
//                       (in NANOSECONDS)
//    set_bitper       : Sets the default bit period in NANOSECONDS
//    send_char        : Sends a character at the default bit period
//    send_char_push   : Sends a character at the default bit period, and
//                       pushes the character into the data FIFO
//
//  Functions:
//
//  Internal variables:
//    reg [63:0]   bit_period
//    
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


module tb_uart_driver (
  output      data_out       // Transmitted serial data
);

//***************************************************************************
// Parameter definitions
//***************************************************************************

  parameter BAUD_RATE = 57_600; // This is the default bit rate - can be
                                // overridden by "set_bitper"

//***************************************************************************
// Register declarations
//***************************************************************************
  
  // bit_period is 1/BAUD_RATE, but needs to be in ns (not seconds), so 
  // we multiply by 1e9. We need to round
  reg  [63:0]       bit_period = (1_000_000_000 + BAUD_RATE/2) /BAUD_RATE; 

  reg               data_out_reg = 1'b1;

//***************************************************************************
// Tasks
//***************************************************************************

  // The bit period is in nanoseconds since you can't pass a real to a task
  task set_bitper;
    input [63:0] new_bit_per;
  begin
    bit_period = new_bit_per;
  end
  endtask


  task send_char_bitper (
    input [7:0]  char,
    input [63:0] bit_per
  );
    integer      i;
  begin
    $display ("%t       Sending character %x (%c)",$realtime, char,char);
    data_out_reg = 1'b0; // send start bit
    #(bit_per);
    for (i=0; i<=7; i=i+1)
    begin
      data_out_reg = char[i];
      #(bit_per);
    end
    data_out_reg = 1'b1; // send stop bit
    #(bit_per);
  end
  endtask

  task send_char (
    input [7:0]  char
  );
  begin
    send_char_bitper(char,bit_period);
  end
  endtask

  task send_char_push (
    input [7:0] char
  );
  begin
    tb.tb_char_fifo_i0.push(char);
    send_char(char);
  end
  endtask

//***************************************************************************
// Code
//***************************************************************************

  assign data_out = data_out_reg;

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

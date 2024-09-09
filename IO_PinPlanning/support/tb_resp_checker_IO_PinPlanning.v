//-----------------------------------------------------------------------------
//  
//  Copyright (c) 2009 Xilinx Inc.
//
//  Project  : Programmable Wave Generator
//  Module   : tb_resp_checker.v
//  Parent   : tb_uart_rx, tb_wave_gen
//  Children : none
//
//  Description: 
//    This testbench module checks the data received from the DUT against
//    the data stored in a FIFO
//
//  Parameters: 
//
//  Tasks:
//    start_chk        : Enables the checker
//
//  Functions:
//
//  Internal variables:
//    reg    enabled;
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


module tb_resp_checker (
  input [7:0] data_in,  
  input       frm_err,
  input       strobe
);

//***************************************************************************
// Parameter definitions
//***************************************************************************


//***************************************************************************
// Register declarations
//***************************************************************************
  
  reg               enabled = 1'b0;

  reg  [7:0]        my_data;
  reg  [7:0]        char_received;

//***************************************************************************
// Tasks
//***************************************************************************

  // Enables the checker 
  task enable;
    input new_enable;
  begin
    enabled = new_enable;
  end
  endtask

  task is_done (
  );
  begin
    if (!tb.tb_char_fifo_i0.is_empty(1'b0))
      $display("%t ERROR Data FIFO is not empty when expected",$realtime);
  end
  endtask


//***************************************************************************
// Code
//***************************************************************************

  always @(posedge strobe)
  begin
    if (enabled)
    begin
      my_data = tb.tb_char_fifo_i0.pop(1'b0);
      char_received = data_in;
      #1; // Wait to ensure that the output data is valid after the rising
          // edge of the strobe
      if (data_in !== my_data)
      begin
         $display(
           "%t ERROR Character mismatch. Expected %x (%c), received %x (%c)",
           $realtime, my_data, my_data, data_in, data_in);
      end
      else
      begin
         $display("%t       Character received %x (%c)", $realtime, my_data,my_data);
      end
    end // if enabled
  end // always 

  always @(posedge frm_err)
  begin
    if (enabled)
    begin
       $display("%t ERROR Frame Error Detected", $realtime);
    end // if enabled
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

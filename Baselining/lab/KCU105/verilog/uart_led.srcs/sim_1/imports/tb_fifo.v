//-----------------------------------------------------------------------------
//  
//  Copyright (c) 2009 Xilinx Inc.
//
//  Project  : Programmable Wave Generator
//  Module   : tb_fifo.v
//  Parent   : tb_uart_rx
//  Children : none
//
//  Description: 
//    This module is a generic FIFO for testbench applications. It stores data
//    internally in a verilog memory, and provides access to it via the tasks
//    and functions push, pop, is_empty, is_full.
//
//  Parameters: 
//    WIDTH        : Width of the data to be pushed and popped
//    DEPTH        : Number of entries. The FIFO will signal full when DEPTH-1
//                   entries are in the FIFO
//
//  Tasks:
//    push         : Pushes data into the FIFO - if the FIFO is full, an
//                   error message is generated
//
//  Functions:
//
//    is_empty     : Returns 1 if the FIFO is empty
//    pop          : Returns the element at the front of the FIFO
//
//
//  Internal variables:
//    reg [WIDTH-1:0] data [0:DEPTH-1] - the array for storing data
//    integer         head             - head pointer
//    integer         tail             - tail pointer
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


module tb_fifo ();

//***************************************************************************
// Parameter definitions
//***************************************************************************

  parameter         WIDTH        = 8;
  parameter         DEPTH        = 256;

//***************************************************************************
// Register declarations
//***************************************************************************

  reg [WIDTH-1:0] data [0:DEPTH-1]; // the array for storing data
  integer         head;             // head pointer
  integer         tail;             // tail pointer

//***************************************************************************
// Functions
//***************************************************************************

  function [31:0] next_ptr;
    input [31:0] ptr;
  begin
    next_ptr = (ptr + 1) % DEPTH;
  end
  endfunction

  function is_empty;
    input ignore; // A function must have at least one input
  begin
    is_empty = (head == tail);
  end
  endfunction

  function is_full;
    input ignore; // A function must have at least one input
  begin
    is_full = (next_ptr(head) == tail);
  end
  endfunction

  function [WIDTH-1:0] pop;
    input ignore; // A function must have at least one input
  begin
    if (is_empty(0))
    begin
      $display ("%t ERROR: Popping an empty FIFO in %m",$realtime);
      pop = {WIDTH{1'bx}};
    end
    else
    begin
      pop = data[tail];
      tail = next_ptr(tail);
    end
  end
  endfunction

//***************************************************************************
// Tasks
//***************************************************************************
  task push (
    input [WIDTH-1:0] new_data
  );
  begin
    if (is_full(0))
    begin
      $display ("%t ERROR: Pushing a full FIFO in %m",$realtime);
    end
    else
    begin
      data[head] = new_data;
      head = next_ptr(head);
    end
  end     // task
  endtask // full


//***************************************************************************
// Code
//***************************************************************************
  initial
  begin
    head = 0;
    tail = 0;
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

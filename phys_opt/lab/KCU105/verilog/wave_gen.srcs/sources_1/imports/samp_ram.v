//-----------------------------------------------------------------------------
//  
//  Copyright (c) 2009 Xilinx Inc.
//
//  Project  : Programmable Wave Generator
//  Module   : samp_ram.v
//  Parent   : wave_gen.v
//  Children : None
//
//  Description: 
//    This module infers the sample RAM - a 1024x16 dual port RAM
//
//  Parameters:
//     None
//
//  Notes       : 
//     This models a WRITE_FIRST memory
//
//  Multicycle and False Paths
//     None

`timescale 1ns/1ps


module samp_ram #(
  parameter DATA_WIDTH = 16,
  parameter ADDR_WIDTH = 10
 ) (
  // A port
  input                       clka,           // Clock
  input      [DATA_WIDTH-1:0] dina,           // Input data
  input      [ADDR_WIDTH-1:0] addra,          // Address
  input                       wea,            // Write enable
  output reg [DATA_WIDTH-1:0] douta,          // Output data
  // B port
  input                       clkb,           // Clock
  input      [DATA_WIDTH-1:0] dinb,           // Input data
  input      [ADDR_WIDTH-1:0] addrb,          // Address
  input                       web,            // Write enable
  output reg [DATA_WIDTH-1:0] doutb           // Output data
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

  reg [DATA_WIDTH-1:0] mem_array [0:(2**ADDR_WIDTH)-1];

//***************************************************************************
// Wire declarations
//***************************************************************************

//***************************************************************************
// Code
//***************************************************************************

  // A port operations
  always @(posedge clka)
  begin
    if (wea)
    begin
      mem_array[addra] <= dina;   // Synchronous write
      douta <= dina;
    end
    else
    begin
      douta <= mem_array[addra];     // Synchronous read
    end
  end

  // B port operations
  always @(posedge clkb)
  begin
    if (web)
    begin
      mem_array[addrb] <= dinb;   // Synchronous write
      doutb <= dinb;
    end
    else
    begin
      doutb <= mem_array[addrb];     // Synchronous read
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

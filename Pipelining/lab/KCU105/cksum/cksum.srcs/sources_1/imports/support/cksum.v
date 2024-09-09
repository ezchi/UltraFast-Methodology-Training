/********************************************************************************
* This module generates L3 checksums for packets. 
* IP header checksum is calculated over IP header only 
*
* The IP header checksum is calculated by forming the ones' complement of 
* the ones' complement sum of the header's 16-bit words.
*
*******************************************************************************/
`timescale 100 ps / 10 ps

`ifdef USEDSP
(* use_dsp48 = "yes" *)module cksum 
`else
module cksum 
`endif
(
    // System Signals
    input                       SysClk_in,

    // Input Control
    input                       SOP,            // Start of Packet
    input           [7:0]       L3LaneEn,       // Driven by a FSM
    // Input Data
    input           [15:0]      L3PktData0,     
    input           [15:0]      L3PktData1,
    input           [15:0]      L3PktData2,
    input           [15:0]      L3PktData3,
    input           [15:0]      L3PktData4,
    input           [15:0]      L3PktData5,
    input           [15:0]      L3PktData6,
    input           [15:0]      L3PktData7,
    // output Data
    output reg                  cksum_valid=0,
    output reg      [15:0]      L3ChksumFinal=0 
);

//
`ifdef PIPELINED3
    reg  [18:0]       L3Chksum7654_Partial=19'h0;
    reg  [18:0]       L3Chksum3210_Partial=19'h0;
    reg  [18:0]       L3Chksum76_Partial=19'h0;
    reg  [18:0]       L3Chksum54_Partial=19'h0;
    reg  [18:0]       L3Chksum32_Partial=19'h0;
    reg  [18:0]       L3Chksum10_Partial=19'h0;
    reg  [18:0]       L3ChksumPartial   =19'h0;
`elsif PIPELINED2
    reg  [18:0]       L3Chksum7654_Partial=19'h0;
    reg  [18:0]       L3Chksum3210_Partial=19'h0;
    reg  [18:0]       L3ChksumPartial     =19'h0;
`elsif PIPELINED1
    reg  [18:0]       L3ChksumPartial     =19'h0;
`else
    wire [18:0]       L3ChksumPartial;
`endif
    reg   [15:0]      L3Chksum0=16'h0;
    reg   [15:0]      L3Chksum1=16'h0;
    reg   [15:0]      L3Chksum2=16'h0;
    reg   [15:0]      L3Chksum3=16'h0;
    reg   [15:0]      L3Chksum4=16'h0;
    reg   [15:0]      L3Chksum5=16'h0;
    reg   [15:0]      L3Chksum6=16'h0;
    reg   [15:0]      L3Chksum7=16'h0;

    reg           [7:0]       L3LaneEn_reg  =8'h0; 
    reg           [7:0]       L3LaneEn_reg1 =8'h0; 
    reg           [15:0]      L3PktData0_reg=16'h0;     
    reg           [15:0]      L3PktData1_reg=16'h0;
    reg           [15:0]      L3PktData2_reg=16'h0;
    reg           [15:0]      L3PktData3_reg=16'h0;
    reg           [15:0]      L3PktData4_reg=16'h0;
    reg           [15:0]      L3PktData5_reg=16'h0;
    reg           [15:0]      L3PktData6_reg=16'h0;
    reg           [15:0]      L3PktData7_reg=16'h0;

    wire                clk450, clk250;
    wire                mmcm_locked;
    reg sop_reg = 1'b0;
    (* dont_touch = "yes" *) reg sop_reg0 = 1'b0;
    (* dont_touch = "yes" *) reg sop_reg1 = 1'b0;
    (* dont_touch = "yes" *) reg sop_reg2 = 1'b0;
    (* dont_touch = "yes" *) reg sop_reg3 = 1'b0;
    (* dont_touch = "yes" *) reg sop_reg4 = 1'b0;
    (* dont_touch = "yes" *) reg sop_reg5 = 1'b0;
    (* dont_touch = "yes" *) reg sop_reg6 = 1'b0;
    (* dont_touch = "yes" *) reg sop_reg7 = 1'b0;

    reg                 cksum_valid_1=1'b0;
    reg                 cksum_valid_2=1'b0;
    reg                 cksum_valid_3=1'b0;
    reg                 cksum_valid_4=1'b0;
    reg                 cksum_valid_5=1'b0;

   clk_gen clk_gen_inst
  (
  .clk_in1    (SysClk_in),      // input CLK_IN1
  .clk_450    (clk450),
  .clk_250    (clk250),
  .locked     (mmcm_locked)
   );    
    
    // choose SysClk freq
    assign SysClk = clk450;
    
    // input registers
    always @ (posedge SysClk)
    begin
        L3LaneEn_reg    <= #1 L3LaneEn;
        L3LaneEn_reg1    <= #1 L3LaneEn_reg;
        L3PktData0_reg  <= #1 L3PktData0;
        L3PktData1_reg  <= #1 L3PktData1;
        L3PktData2_reg  <= #1 L3PktData2;
        L3PktData3_reg  <= #1 L3PktData3;
        L3PktData4_reg  <= #1 L3PktData4;
        L3PktData5_reg  <= #1 L3PktData5;
        L3PktData6_reg  <= #1 L3PktData6;
        L3PktData7_reg  <= #1 L3PktData7;
        sop_reg         <= #1 SOP;
        sop_reg0        <= #1 sop_reg;
        sop_reg1        <= #1 sop_reg;
        sop_reg2        <= #1 sop_reg;
        sop_reg3        <= #1 sop_reg;
        sop_reg4        <= #1 sop_reg;
        sop_reg5        <= #1 sop_reg;
        sop_reg6        <= #1 sop_reg;
        sop_reg7        <= #1 sop_reg;
    end

    // line up control signal with pipe stages
    always @ (posedge SysClk)
    begin
      if (|L3LaneEn_reg && !sop_reg)
`ifdef PIPELINED3
        cksum_valid_5 <= #1 1'b1; else cksum_valid_5 <= #1 1'b0;
`elsif PIPELINED2
        cksum_valid_4 <= #1 1'b1; else cksum_valid_4 <= #1 1'b0;
`elsif PIPELINED1
        cksum_valid_3 <= #1 1'b1; else cksum_valid_3 <= #1 1'b0;
`else
        cksum_valid_2 <= #1 1'b1; else cksum_valid_2 <= #1 1'b0;
`endif

    end

    

// Calculate Header Checksum.  
    always @ (posedge SysClk)
    begin
      if (sop_reg7)
        L3Chksum7 <= #1 1'b0;
      else if (L3LaneEn_reg1[7])
        L3Chksum7 <= #1 Add1Comp(L3Chksum7, L3PktData7_reg);

      if (sop_reg6)
        L3Chksum6 <= #1 1'b0;
      else if (L3LaneEn_reg1[6])
        L3Chksum6 <= #1 Add1Comp(L3Chksum6, L3PktData6_reg);

      if (sop_reg5)
        L3Chksum5 <= #1 1'b0;
      else if (L3LaneEn_reg1[5])
        L3Chksum5 <= #1 Add1Comp(L3Chksum5, L3PktData5_reg);

      if (sop_reg4)
        L3Chksum4 <= #1 1'b0;
      else if (L3LaneEn_reg1[4])
        L3Chksum4 <= #1 Add1Comp(L3Chksum4, L3PktData4_reg);

      if (sop_reg3)
        L3Chksum3 <= #1 1'b0;
      else if (L3LaneEn_reg1[3])
        L3Chksum3 <= #1 Add1Comp(L3Chksum3, L3PktData3_reg);
        
      if (sop_reg2)
        L3Chksum2 <= #1 1'b0;
      else if (L3LaneEn_reg1[2])
        L3Chksum2 <= #1 Add1Comp(L3Chksum2, L3PktData2_reg);

      if (sop_reg1)
        L3Chksum1 <= #1 1'b0;
      else if (L3LaneEn_reg1[1])
        L3Chksum1 <= #1 Add1Comp(L3Chksum1, L3PktData1_reg);

      if (sop_reg0)
        L3Chksum0 <= #1 1'b0;
      else if (L3LaneEn_reg1[0])
        L3Chksum0 <= #1 Add1Comp(L3Chksum0, L3PktData0_reg);

`ifdef PIPELINED3
        cksum_valid_4      <= #1 cksum_valid_5;
`elsif PIPELINED2
        cksum_valid_3      <= #1 cksum_valid_4;
`elsif PIPELINED1
        cksum_valid_2      <= #1 cksum_valid_3;
`else
        cksum_valid_1      <= #1 cksum_valid_2;
`endif
    end

`ifdef PIPELINED3
    // Partial and Final sums
    always @ (posedge SysClk)
    begin
        L3Chksum76_Partial <= #1 L3Chksum7 + L3Chksum6; 
        L3Chksum54_Partial <= #1 L3Chksum5 + L3Chksum4; 
        L3Chksum32_Partial <= #1 L3Chksum3 + L3Chksum2;
        L3Chksum10_Partial <= #1 L3Chksum1 + L3Chksum0;
        cksum_valid_3      <= #1 cksum_valid_4;

        L3Chksum7654_Partial <= #1 L3Chksum76_Partial + L3Chksum54_Partial; 
        L3Chksum3210_Partial <= #1 L3Chksum32_Partial + L3Chksum10_Partial;
        cksum_valid_2        <= #1 cksum_valid_3;
            
        // Generate 2s complement sum
        L3ChksumPartial <= #1 L3Chksum7654_Partial + L3Chksum3210_Partial;
        cksum_valid_1        <= #1 cksum_valid_2;
    end
`elsif PIPELINED2
    // Partial and Final sums
    always @ (posedge SysClk)
    begin
        L3Chksum7654_Partial <= #1 L3Chksum7 + L3Chksum6 + L3Chksum5 + L3Chksum4;
        L3Chksum3210_Partial <= #1 L3Chksum3 + L3Chksum2 + L3Chksum1 + L3Chksum0;
        cksum_valid_2        <= #1 cksum_valid_3;

        // Generate 2s complement sum
        L3ChksumPartial <= #1 L3Chksum7654_Partial + L3Chksum3210_Partial;
        cksum_valid_1   <= #1 cksum_valid_2;
    end
`elsif PIPELINED1
    // Partial and Final sums
    always @ (posedge SysClk)
    begin
        // Generate 2s complement sum
        L3ChksumPartial <= #1 L3Chksum7 + L3Chksum6 + L3Chksum5 + L3Chksum4 +
                              L3Chksum3 + L3Chksum2 + L3Chksum1 + L3Chksum0;
        cksum_valid_1   <= #1 cksum_valid_2;
    end
`else
    assign L3ChksumPartial =  L3Chksum7 + L3Chksum6 + L3Chksum5 + L3Chksum4 +
                              L3Chksum3 + L3Chksum2 + L3Chksum1 + L3Chksum0;
`endif

    // add the carries to get the 16-bit 1s complement sum
    always @ (posedge SysClk)
    begin
        L3ChksumFinal   <= #1 ~( Add1Comp(L3ChksumPartial[15:0], {13'h0000,L3ChksumPartial[18:16]}) );
        cksum_valid     <= #1 cksum_valid_1;
    end


/******************************************************************************/
/*****                        FUNCTION DEFINITIONS                            */
/******************************************************************************/
// This function performs a 1's-complement addition on 2 16-bit inputs.
// 1's complement addition requires adding the carry-out bit back into the sum.
// To increase performance two additions in parallel, first with CIN=0,
// and second with CIN=1.
function [15:0] Add1Comp;
    input [15:0] In1;
    input [15:0] In2;

    reg [16:0] Sum0;
    reg [15:0] Sum1;

    begin
        Sum0 = In1 + In2 + 1'b0;
        Sum1 = In1 + In2 + 1'b1;

        // Choose second sum only if COUT=1 of first sum.
        Add1Comp = Sum0[16] ? Sum1 : Sum0[15:0];
    end
endfunction


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

//////////////////////////////////////////////////////////////////////
////                                                              ////
////  tb_cksum_top.v                                              ////
////                                                              ////
////                                                              ////
//////////////////////////////////////////////////////////////////////

`timescale 1 ns / 1 ns

`define SOP 1
`define NOSOP 0

// Define Module for Test Fixture
module tb_cksum();

    reg         sop_data=0;
    reg [15:0]  pkt_data=0;
    reg [7:0]   valid_data=0;
    integer     i=0;
    reg         rst_i=0;
    reg         SysClk_in=0;
    reg         clk_i=0;

// system clock
   always begin
       #5 SysClk_in = ~SysClk_in;
   end

task Reset;
begin
    rst_i = 0; # 10;
    rst_i = 1; # 10;
    rst_i = 0; # 10;
end
endtask


task write_data;
    input            sop_i;
    input reg [15:0] dat_i;
    //reg [7:0] wait_cnt;
    begin

    //wait_cnt = 0;
    sop_data = sop_i;
    pkt_data = dat_i;

    // SOP doesnt contain valid L3 data, clears L3cksum
    @(posedge CKSUM_UUT.SysClk);
    if(sop_i) begin
        #1 valid_data = 8'h00;
        $display($time, " SOP found, clear cksum"); 
    end
    else begin
        #1 valid_data = 8'hFF;
        $display($time, " Writing data: %x ",  dat_i); 
    end

    // off
    @(posedge CKSUM_UUT.SysClk);
    #1 valid_data = 8'h00;
    end
endtask





// Instantiate the UUT
 cksum CKSUM_UUT ( 
    // System Signals
    .SysClk_in      (SysClk_in),           

    // Input Control
    .SOP            (sop_data),            
    .L3LaneEn       (valid_data), 
    // Input Data
    .L3PktData0     (pkt_data),     
    .L3PktData1     (pkt_data),     
    .L3PktData2     (pkt_data),     
    .L3PktData3     (pkt_data),     
    .L3PktData4     (pkt_data),     
    .L3PktData5     (pkt_data),     
    .L3PktData6     (pkt_data),     
    .L3PktData7     (pkt_data),     
    // output Data
    .cksum_valid    (),
    .L3ChksumFinal  ()
);

// Initialize Inputs
    initial begin
//      $monitor("Time: %d clk_i=%b",
//          $time, clk_i);
            clk_i = 0;
            rst_i = 0;
            pkt_data = 0;
            sop_data = 0;
            valid_data = 8'h0;
    Reset();

    $display(" \n WAITING... for MMCM Lock....");
    wait(CKSUM_UUT.mmcm_locked)
    $display(" \n MMCM Locked!");

    $display(" \n Sending L3 Packet data  \n");

    for(i=0; i < 4; i=i+1)
    begin
        if(i==0)
            write_data( `SOP, pkt_data );
        else
            write_data( `NOSOP, pkt_data );

        pkt_data = pkt_data +1;
    end

    #100;
    $display(" \n End2 of Cksum testing \n"); 
    
    $display($time, " Simulation Done \n"); $stop(1);

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

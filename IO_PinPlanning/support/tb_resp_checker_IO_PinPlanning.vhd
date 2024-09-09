----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:29:17 01/31/2009 
-- Design Name: 
-- Module Name:    tb_resp_checker - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


library utilities_lib;
use utilities_lib.time_utilities_pkg.all;
use utilities_lib.string_utilities_synth_pkg.all;

library specific_support_lib;
use specific_support_lib.tb_fifo_pkg.all;


entity tb_resp_checker is
    Port (  data_to_send    : in  STD_LOGIC_VECTOR(7 downto 0);
             data_sent      : in  STD_LOGIC;
             rx_data        : in  STD_LOGIC_VECTOR (7 downto 0);
             frm_err        : in  STD_LOGIC;
             rx_data_rdy    : in  STD_LOGIC
           );
end tb_resp_checker;


architecture Behavioral of tb_resp_checker is

    signal data_fifo_debug : FIFO_TYPE;
    
    signal char_received : STD_LOGIC_VECTOR (7 downto 0);

    shared variable data_fifo  : FIFO_TYPE := (width=>8, depth=>16, 
                                               read_ptr=>0, write_ptr=>0, 
                                               n_reads=>0, n_writes=>0,
                                               volume=>0, 
                                               empty=>true, full=>false, 
                                               contents=>(others=>(others=>'0')));

    begin
          
       loadFifo: process
             variable last_data_sent : std_logic := '0';              -- initialize to zero to detect the first rising edge             
          begin
             if ((data_sent = '1') and (last_data_sent = '0')) then   -- detect the rising of signal data_out_sent
                push(data_fifo,data_to_send);                         -- push the datum onto the stack
             end if;
             last_data_sent := data_sent;                             -- update the value for the next comparison           
             wait for 1 ns;             
          end process loadFifo;
          
       validate: process       
             variable sent_data         : std_logic_vector(7 downto 0);
             variable last_rx_data_rdy  : std_logic := '0';
          begin
             if ((rx_data_rdy = '1') and (last_rx_data_rdy = '0')) then  -- if the rising edge of the strobe signal is asserted      
                char_received <= rx_data;
                if (data_fifo.empty) then
                   writeNowToScreen("ERROR Data FIFO is not empty when expected");
                else
                   pop(data_fifo,sent_data);              -- pop the data FIFO and stick the result in my_data
                   wait for 1 ns;                         -- wait for the output data to be valid after the rising edge of the strobe
                   if (frm_err = '0') then                -- if there wasn't a frame error then...
                      if (rx_data /= sent_data) then      -- is what we sent what we received?
                         writeNowToScreen("Error Data mismatch. Expected: " & slvToHexString(sent_data) & "(" & slvToHexString(sent_data) & ")");
                         writeNowToScreen("                     Received: " & slvToHexString(rx_data) & "(" & slvToHexString(rx_data) & ")");

                      else                                -- data did match
                         writeNowToScreen("Data received correctly: " & slvToHexString(sent_data) & "(" & slvToHexString(sent_data) & ")");
                      end if;                             -- end of data sent vs data received check
                   else                                   -- there WAS a framing error
                      writeNowToScreen("Framing error detected - character lost!");
                   end if;                                -- end of framing error detection
                end if;                                   -- end of strobe high test
             end if;                                      -- end of rising edge test
             last_rx_data_rdy := rx_data_rdy;             -- update for next iteration
             wait for 1 ns;                               -- prevents infinite loop. implies that this process will "sample" at 1 ns rate           
          end process validate;
          

    end Behavioral;


--<copyright-disclaimer-start>
--  ************************************************************************************************************
--  * © Copyright 2022 Xilinx, Inc. All rights reserved.                                                       *
--  * This file contains confidential and proprietary information of Xilinx, Inc. and                          *
--  * is protected under U.S. and international copyright and other intellectual property laws.                *
--  * DISCLAIMER                                                                                               *
--  * This disclaimer is not a license and does not grant any rights to the materials distributed              *
--  * herewith. Except as otherwise provided in a valid license issued to you by Xilinx, and to the            *
--  * maximum extent permitted by applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS"               *
--  * AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS,                 *
--  * IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT,     *
--  * OR FITNESS FOR ANY PARTICULAR PURPOSE; and (2) Xilinx shall not be liable (whether in contract or tort,  *
--  * including negligence, or under any other theory of liability) for any loss or damage of any kind or      *
--  * nature related to, arising under or in connection with these materials, including for any direct, or     *
--  * any indirect, special, incidental, or consequential loss or damage (including loss of data, profits,     *
--  * goodwill, or any type of loss or damage suffered as a result of any action brought by a third party)     *
--  * even if such damage or loss was reasonably foreseeable or Xilinx had been advised of the possibility     *
--  * of the same.                                                                                             *
--  * CRITICAL APPLICATIONS                                                                                    *
--  * Xilinx products are not designed or intended to be fail-safe, or for use in any application requiring    *
--  * fail-safe performance, such as life-support or safety devices or systems, Class III medical devices,     *
--  * nuclear facilities, applications related to the deployment of airbags, or any other applications that    *
--  * could lead to death, personal injury, or severe property or environmental damage (individually and       *
--  * collectively, "Critical Applications"). Customer assumes the sole risk and liability of any use of       *
--  * Xilinx products in Critical Applications, subject only to applicable laws and regulations governing      *
--  * limitations on product liability.                                                                        *
--  * THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.                 *
--  *                                                                                                          *
--  ************************************************************************************************************
--<copyright-disclaimer-end>

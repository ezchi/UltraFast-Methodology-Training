----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:33:24 01/28/2009 
-- Design Name: 
-- Module Name:    led_ctl - Behavioral 
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


entity led_ctl is
    Port ( rst_clk_rx   : in  std_logic;                    -- reset signal synchronized with clk_rx
           btn_clk_rx   : in  std_logic;                    -- button to swap low and high bits
           clk_rx       : in  std_logic;                    -- operational clock
           rx_data      : in  std_logic_vector(7 downto 0); -- data received by uart_rx
           rx_data_rdy  : in  std_logic;                    -- active high signal when rx_data is valid
           led_o        : out std_logic_vector(7 downto 0)  -- drives to LEDs
     );
end led_ctl;


architecture Behavioral of led_ctl is
      signal last_rx_data_rdy : std_logic := 'U';   -- temporary storage for previous state of ready signal
      signal char_data        : std_logic_vector (7 downto 0); -- Captured character
    begin
    
       LEDCtrl: process (clk_rx)                             -- process only sensitive to clock
          begin
             if rising_edge(clk_rx) then                     -- only on the rising edge of the clock (i.e. synchronous)
                if (rst_clk_rx = '1') then                   -- if the reset is active (sync reset)
                   led_o            <= (others=>'0');        -- drive all the outputs low
                   last_rx_data_rdy <= '0';
                   char_data        <= (others=>'0');
                else                                         -- not a reset condition
                   last_rx_data_rdy <= rx_data_rdy;          -- update the last state of the ready signal

                   -- detect the rising edge of rx_data_rdy and capture new data
                   if ((rx_data_rdy /= last_rx_data_rdy) and (rx_data_rdy = '1')) then  -- look for both a change in the ready signal and the new state to be high
                      char_data <= rx_data;                  -- capture the new data
                   end if;                                   -- end of rising edge of rx_data_rdy check

                   -- Select which set of bits get put on the low numbered LEDs and which go on the high LEDs
                   if (btn_clk_rx = '1') then
                     led_o <= char_data(3 downto 0) & char_data(7 downto 4);
                   else
                     led_o <= char_data;
                   end if;

                end if;                                      -- end of reset/normal operations
             end if;                                         -- end of synchronous events
          end process LEDCtrl;
    
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

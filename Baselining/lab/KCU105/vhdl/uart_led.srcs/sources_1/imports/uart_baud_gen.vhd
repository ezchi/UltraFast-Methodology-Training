--<insert: c:\HW\releasedULD\headers\uart_baud_gen.head>
-- -----------------------------------------------------------------------------
--
-- module:    uart_baud_gen
-- project:   wave_gen
-- company:   Xilinx, Inc.
-- author:    WK, AW
-- 
-- comment:
--   Generates a 16x Baud enable. This signal is generated 16 times per  bit
--   at the correct baud rate as determined by the parameters for the  system
--   clock frequency and the Baud  rate
--   
-- 1) Divider must be at least 2 (thus CLOCK_RATE must be at least 32x
--   BAUD_RATE)
-- 
-- known issues:
-- status           id     found     description                      by fixed date  by    comment
-- 
-- version history:
--   version    date    author     description
--    11.1-001 20 APR 2009 WK       First version for 11.1          
-- 
-- -----------------------------------------------------------------------
-- 
-- 
--<copyright-disclaimer-start>
--  ************************************************************************************************************
--  * © Copyright 2009-2022 Xilinx, Inc. All rights reserved.                                                  *
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
--
-- -----------------------------------------------------------------------
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity uart_baud_gen is
     Generic (CLOCK_RATE    : integer := 100_000_000;                    -- clock rate
              BAUD_RATE     : integer :=     115_200                     -- desired baud rate
             );                      
    Port ( rst              : in  std_logic;                             -- external reset in
           clk              : in  std_logic;                             -- clock 
           baud_x16_en      : out std_logic                              -- 16 times the baud rate
           );
end uart_baud_gen;


architecture Behavioral of uart_baud_gen is
    begin

          clk_divider: process (clk)
             constant OVERSAMPLE_RATE      : integer := BAUD_RATE * 16;
             constant OVERSAMPLE_VALUE     : integer := (CLOCK_RATE+OVERSAMPLE_RATE/2)/OVERSAMPLE_RATE - 1;     -- one enable produced every this many counts
             variable internal_count       : integer range 0 to OVERSAMPLE_VALUE := 0;  -- internal counter
          begin
             if (rising_edge(clk)) then                                     -- synchronous process
                if (rst = '1') then                                         -- if reset is active
                   internal_count := OVERSAMPLE_VALUE;                      -- reset the count in preparation for count-down
                   baud_x16_en   <= '0';                                    -- drive the external enable inactive
                else                                                        -- every 16xbaud interval, generate a one-clock enable pulse
                   baud_x16_en <= '0';                                      -- hold the enable inactive            
                   if (internal_count = 0) then                             -- at terminal count?
                      baud_x16_en   <= '1';                                 -- generate the active high enable
                      internal_count := OVERSAMPLE_VALUE;                   -- reset the count
                    else   
                      internal_count := internal_count - 1;                 -- decrement the counter   
                   end if;                                                  -- end of count reached
                end if;                                                     -- end of non-reset activities
             end if;                                                        -- end of synchronous activities
          end process clk_divider;

    end Behavioral;


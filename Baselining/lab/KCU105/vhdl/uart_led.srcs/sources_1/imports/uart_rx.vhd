--<insert: c:\HW\releasedULD\headers\uart_rx.head>
-- -----------------------------------------------------------------------------
--
-- module:    uart_rx
-- project:   wave_gen
-- company:   Xilinx, Inc.
-- author:    WK, AW
-- 
-- comment:
--   Top level of the UART  receiver.
--   Brings together the metastability hardener for synchronizing the  
--   rxd pin, the baudrate generator for generating the proper x16  bit
--   enable, and the controller for the UART  itself.
--   
-- Multicycle and False  Paths
--   The uart_baud_gen module generates a 1-in-N pulse (where N  is
--   determined by the baud rate and the system clock frequency),  which
--   enables all flip-flops in the uart_rx_ctl module. Therefore, all  paths
--   within uart_rx_ctl are multicycle paths, as long as N > 2 (which  it
--   will be for all reasonable combinations of Baud rate and  system
--   frequency).
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
use IEEE.numeric_std.all;


library WORK;
use work.wave_gen_pkg.ALL;                             -- load component definitions


entity uart_rx is
    generic (
             BAUD_RATE   : integer := 57600;           -- serves as clock divisor
             CLOCK_RATE  : integer := 100000000        -- freq of clk
          );
    Port ( rst_clk_rx    : in  std_logic;              -- active high, managed synchronously
           clk_rx        : in  std_logic;              -- operational clock
           rxd_i         : in  std_logic;              -- directly from pad - not yet associated with any time domain
           rxd_clk_rx    : out std_logic;              -- RXD resynchronized to clk_rx
           rx_data       : out std_logic_vector (7 downto 0);   -- 8 bit data output valid when rx_data_rdy is asserted
           rx_data_rdy   : out std_logic;              -- active high signal indicating rx_data is valid
           frm_err       : out std_logic               -- framing error - active high when STOP bit not detected
          );
end uart_rx;


architecture Behavioral of uart_rx is

       signal baud_x16_en      : std_logic := 'U';
       signal rxd_clk_rx_int   : std_logic := 'U';

    begin
    
       --
       -- protect against meta-stability
       meta_harden_rxd_i0: meta_harden port map (rst_dst=>rst_clk_rx, clk_dst=>clk_rx, signal_src=>rxd_i, signal_dst=>rxd_clk_rx_int);

       -- Connect the output
       rxd_clk_rx     <= rxd_clk_rx_int;
    
       -- 
       -- free running counter that divides the incoming clock by a value to generate
       -- a 16 x baud rate enable signal
       --
       -- all paths that start and end on flip-flops enabled by baud_x16_en are multi-cycle
       -- 
       uart_baud_gen_rx_i0: uart_baud_gen 
           generic map (CLOCK_RATE  => CLOCK_RATE,
                        BAUD_RATE   => BAUD_RATE)                      
           port map    (rst         => rst_clk_rx,
                        clk         => clk_rx, 
                        baud_x16_en => baud_x16_en
                 );
       
       --
       -- receiver state machine
       uart_rx_ctl_i0: uart_rx_ctl PORT MAP(
          clk_rx      => clk_rx,
          rst_clk_rx  => rst_clk_rx,
          baud_x16_en => baud_x16_en,
          rxd_clk_rx  => rxd_clk_rx_int,
          rx_data     => rx_data,
          rx_data_rdy => rx_data_rdy,
          frm_err     => frm_err 
       );

       
    
    end Behavioral;



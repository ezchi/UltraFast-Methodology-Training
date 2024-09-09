--<insert: c:\HW\releasedULD\headers\uart_led_pkg.head>
-- -----------------------------------------------------------------------------
--
-- module:    uart_led_pkg
-- project:   uart_led
-- company:   Xilinx, Inc.
-- author:    WK, AW
-- 
-- comment:
--   This package provides a convenient mechanism for encapsulating all of the
--   modules used in the uart_led project. To access these module definitions,
--   all one must do is name the library where the package is
--   stored and implement a  use  statement. Typically, this module may reside
--   where all the other VHDL sources exist and, by default, this file will
--   appear in the  WORK  library. The  WORK  library is accessed by default so
--   the  library work;  statement is optional. The next line should read  use
--   WORK.uart_led_pkg.all; which will make all of the contents of this package
--   available to the file in which this statement exists.
--
--   Note that only modules that make use of any of the contents in this package 
--   are required to explicitly connect to it.
--
--   The package also includes a number of constants and user defined enumerated 
--   types. 
--
--   As a rule of thumb, I place all the component instantiations in a package 
--   to reduce the  clutter 
--   within a file.
--
--   Types, subtypes, functions, procedures, and constant are included if they are 
--   used by more than one module. This reduces errors due to inconsistant usage.
-- 
-- known issues:
-- status           id     found     description                      by fixed date  by    comment
-- 
-- version history:
--   version    date    author     description
--    11.1-001 20 APR 2009 WK       New for version 11.1            
-- 
-- ---------------------------------------------------------------------------
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
-- -----------------------------------------------------------------------------
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;


package uart_led_pkg is

    -- 
    -- Device constants
    --
    
    -- Number of bits of address for the Sample RAM - RAM can hold 2^NSAMP_WID
    -- Since NSAMP is coded "naturally" (from 1 to 2**NSAMP_WID, rather than
    -- from 0 to 2**(NSAMP_WID)-1), an extra bit is required in things that
    -- carry the actual value of nsamp. However, the RAM address is coded
    -- 0 to 2**NSAMP_WID-1
    constant NSAMP_WIDTH             : integer := 10;        

    --
    -- specialized types
    --
    type RESPONSE_TYPE is (ACK, ERR, DATA, UNKNOWN);
    
    
    --
    -- component definitions
    --
    
    
    component uart_rx is
       generic (
                BAUD_RATE   : integer :=     115_200;                 -- serves as clock divisor
                CLOCK_RATE  : integer := 100_000_000                  -- freq of clk
             );
        Port ( rst_clk_rx      : in  STD_LOGIC;                       -- active high, managed synchronously
               clk_rx          : in  STD_LOGIC;                       -- operational clock
               rxd_i           : in  STD_LOGIC;                       -- directly from pad - not yet associated with any time domain
               rx_data         : out STD_LOGIC_VECTOR (7 downto 0);   -- 8 bit data output valid when rx_data_rdy is asserted
               rx_data_rdy     : out STD_LOGIC;                       -- active high signal indicating rx_data is valid
               frm_err         : out STD_LOGIC                        -- framing error - active high when STOP bit not detected
              );
    end component uart_rx;  
    
    
    component meta_harden is
        port ( clk_dst      : in  STD_LOGIC;
               rst_dst      : in  STD_LOGIC;
               signal_src   : in  STD_LOGIC;
               signal_dst   : out STD_LOGIC);
    end component meta_harden;    
    

    component uart_baud_gen is
        Generic (CLOCK_RATE       : integer := 100_000_000;              -- clock rate
                 BAUD_RATE        : integer :=     115_200               -- desired baud rate
                );                   
        Port ( rst                : in  STD_LOGIC;                       -- external reset in
               clk                : in  STD_LOGIC;                       -- clock 
               baud_x16_en        : out STD_LOGIC
              );
    end component uart_baud_gen;
    
    component uart_rx_ctl
       PORT(
             clk_rx      : IN  std_logic;
             rst_clk_rx  : IN  std_logic;
             baud_x16_en : IN  std_logic;
             rxd_clk_rx  : IN  std_logic;          
             rx_data     : OUT std_logic_vector(7 downto 0);
             rx_data_rdy : OUT std_logic;
             frm_err     : OUT std_logic
          );
    END component uart_rx_ctl;    
    
    --
    -- handy constants
    constant vcc               : std_logic_vector(31 downto 0) := (others=>'1');
    constant gnd               : std_logic_vector(31 downto 0) := (others=>'0');


end uart_led_pkg;


package body uart_led_pkg is

end uart_led_pkg;

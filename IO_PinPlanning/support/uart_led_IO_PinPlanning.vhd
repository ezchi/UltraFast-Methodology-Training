----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:38:30 12/18/2008 
-- Design Name: 
-- Module Name:    UART_project - Behavioral 
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
--
--  Disclaimer: LIMITED WARRANTY AND DISCLAMER. These designs are
--              provided to you "as is". Xilinx and its licensors make, and you
--              receive no warranties or conditions, express, implied,
--              statutory or otherwise, and Xilinx specifically disclaims any
--              implied warranties of merchantability, non-infringement, or
--              fitness for a particular purpose. Xilinx does not warrant that
--              the functions contained in these designs will meet your
--              requirements, or that the operation of these designs will be
--              uninterrupted or error free, or that defects in the Designs
--              will be corrected. Furthermore, Xilinx does not warrant or
--              make any representations regarding use or the results of the
--              use of the designs in terms of correctness, accuracy,
--              reliability, or otherwise.
--
--              LIMITATION OF LIABILITY. In no event will Xilinx or its
--              licensors be liable for any loss of data, lost profits, cost
--              or procurement of substitute goods or services, or for any
--              special, incidental, consequential, or indirect damages
--              arising from the use or operation of the designs or
--              accompanying documentation, however caused and on any theory
--              of liability. This limitation will apply even if Xilinx
--              has been advised of the possibility of such damage. This
--              limitation shall apply not-withstanding the failure of the
--              essential purpose of any limited remedies herein.
--
--  Copyright © 2002, 2008 Xilinx, Inc.
--  All rights reserved
--
------------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

library UNISIM;
use UNISIM.VComponents.all;

entity uart_led is
     Generic (CLOCK_RATE : integer := 125_000_000;
              BAUD_RATE  : integer :=    115_200
             );
    Port ( clk_pin_p     : in  STD_LOGIC;
           clk_pin_n     : in  STD_LOGIC;
           rst_pin       : in  STD_LOGIC;
           btn_pin       : in  STD_LOGIC;
           rxd_pin       : in  STD_LOGIC;
           led_pins      : out STD_LOGIC_VECTOR (7 downto 0)
         );
end uart_led;


architecture Behavioral of uart_led is

    --
    -- module definitions
    --    
    component uart_rx is
       generic (
                BAUD_RATE         : integer := 57600;                 -- serves as clock divisor
                CLOCK_RATE        : integer := 100000000              -- freq of clk
             );
        Port ( rst_clk_rx         : in  STD_LOGIC;
               clk_rx             : in  STD_LOGIC;
               rxd_i              : in  STD_LOGIC;
               rxd_clk_rx         : out STD_LOGIC;
               rx_data            : out STD_LOGIC_VECTOR (7 downto 0);
               rx_data_rdy        : out STD_LOGIC;
               frm_err            : out STD_LOGIC
             );
    end component uart_rx;  

    component meta_harden is
        Port ( clk_dst            : in  STD_LOGIC;
               rst_dst            : in  STD_LOGIC;
               signal_src         : in  STD_LOGIC;
               signal_dst         : out  STD_LOGIC);
    end component meta_harden;    
    
    component led_ctl is
        Port ( rst_clk_rx         : in  std_logic;
               clk_rx             : in  std_logic;
               btn_clk_rx         : in  std_logic;
               rx_data            : in std_logic_vector(7 downto 0);
               rx_data_rdy        : in std_logic;
               led_o              : out std_logic_vector(7 downto 0)
        );
    end component led_ctl;  
    
    -- clock and controls
    signal rst_i, rst_clk_rx      : std_logic := 'U';
    signal btn_i, btn_clk_rx      : std_logic := 'U';
    signal clk_i, clk_rx          : std_logic := 'U';
    signal rxd_i                  : std_logic := 'U';
    signal led_o                  : std_logic_vector(7 downto 0) := (others=>'U');
    
    signal rx_data_rdy            : std_logic := 'U';
    signal rx_data                : std_logic_vector(7 downto 0) := (others=>'U');

    constant vcc                  : std_logic := '1';
    constant gnd                  : std_logic := '0';
    

begin

    --
    -- define the buffers for the incoming data, clocks, and control
    IBUF_rst_i0:    IBUF    port map (I=>rst_pin, O=>rst_i);
    IBUF_btn_i0:    IBUF    port map (I=>btn_pin, O=>btn_i);
    IBUF_rxd_i0:    IBUF    port map (I=>rxd_pin, O=>rxd_i);
    IBUFG_clk_i0:   IBUFGDS port map 
    ( I  =>clk_pin_p, 
      IB =>clk_pin_n, 
      O  =>clk_i
    );
    BUFG_clk_rx_i0: BUFG  port map (I=>clk_i,   O=>clk_rx);
    
    --
    -- define the buffers for the outgoing data
    OBUF_led_ix: for i in 0 to 7 generate
          OBUF_led_i: OBUF port map (I=>LED_o(i), O=>LED_pins(i));
       end generate;
       
    --
    -- instantiate a metastability hardener for the incoming reset
    meta_harden_rst_i0: meta_harden port map (rst_dst=>gnd,       clk_dst=>clk_rx, signal_src=>rst_i, signal_dst=>rst_clk_rx);

    --
    -- And the button to switch LSB and MSB
    meta_harden_btn_i0: meta_harden port map (rst_dst=>rst_clk_rx,clk_dst=>clk_rx, signal_src=>btn_i, signal_dst=>btn_clk_rx);
    

    --
    -- instantiate the receiver side of the UART
    uart_rx_i0: uart_rx
       generic map (
                BAUD_RATE   =>  BAUD_RATE,          -- serves as clock divisor
                CLOCK_RATE  => CLOCK_RATE           -- freq of clk
             )
        Port map ( 
               rst_clk_rx      => rst_clk_rx,
               clk_rx             => clk_rx,
               rxd_i           => rxd_i,
               rxd_clk_rx      => open,
               rx_data         => rx_data,
               rx_data_rdy     => rx_data_rdy,
               frm_err         => open              -- this signal not used in this design
              );

    --
    -- instantiate the LED controller
    led_ctl_i0: led_ctl port map ( rst_clk_rx    => rst_clk_rx,
                                   btn_clk_rx    => btn_clk_rx,
                                   clk_rx        => clk_rx,
                                   rx_data       => rx_data,
                                   rx_data_rdy   => rx_data_rdy,
                                   led_o         => led_o
                                  );
       
end Behavioral;

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
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.03.2018 15:05:36
-- Design Name: 
-- Module Name: reg_clka_to_clkb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity reg_clka_to_clkb is
    Generic ( DATA_WIDTH : integer := 1000);
    Port ( clka : in STD_LOGIC;
           clkb : in STD_LOGIC;
           a, a1, a2 : in STD_LOGIC;
           b : out STD_LOGIC);
end reg_clka_to_clkb;

architecture Behavioral of reg_clka_to_clkb is

component bit_expander is
    Port ( data_in : in STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR);
end component bit_expander;

component bit_reducer is
    Port (  clk : in STD_LOGIC;
            data_in : in STD_LOGIC_VECTOR;
           data_out : out STD_LOGIC);
end component bit_reducer;

signal expanded_sig0 : std_logic_vector(DATA_WIDTH-1 downto 0);
signal expanded_sig1 : std_logic_vector(DATA_WIDTH-1 downto 0);
signal expanded_sig2 : std_logic_vector(DATA_WIDTH-1 downto 0);
signal expanded_sig3 : std_logic_vector(DATA_WIDTH-1 downto 0);

signal a_r, a_r2 : std_logic;
signal a1_2r, a2_2r : std_logic;
signal a1_r, a2_r, en : std_logic;

begin

bit_expander_i : bit_expander port map (
    data_in => a,
    data_out => expanded_sig0
);

process (clka)
begin
    if rising_edge (clka)  then     
       a1_r <= a1;
       a2_r <= a2;
       a1_2r <= a1_r;
       a2_2r <= a2_r;
       if (en = '1') then
           expanded_sig1 <= expanded_sig0;
       end if;
    end if;
end process;

 en <= a1_2r and a2_2r;
 
process (clkb)
begin
    if rising_edge (clkb)  then
       a_r <= a;
       a_r2 <= a_r;
        if (a_r2 = '1') then
            expanded_sig2 <= expanded_sig1;
        end if;  
        expanded_sig3 <= expanded_sig2;  
    end if;
end process;

bit_reducer_i : bit_reducer port map (
    clk => clkb,
    data_in => expanded_sig3,
    data_out => b
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

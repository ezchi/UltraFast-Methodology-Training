Library UNISIM;
use UNISIM.vcomponents.all;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clocking_module is
generic (CLKIN_PERIOD : real );
port
 (-- Clock in ports
  -- Clock out ports
  clk_600          : out    std_logic;
  clk_300          : out    std_logic;
  clk_150          : out    std_logic;
  clk_400          : out    std_logic;
  clk_500          : out    std_logic;
  -- Status and control signals
  reset             : in     std_logic;
  locked            : out    std_logic;
  clk_in1           : in     std_logic
 );
 attribute keep_hierarchy : string;
 attribute keep_hierarchy of clocking_module : entity is "yes";
end clocking_module;

architecture Behavioral of clocking_module is

  signal clk_in1_clk_wiz_0  : std_logic;
  signal clk_in2_clk_wiz_0  : std_logic;
  signal clk_600_clk_wiz_0  : std_logic;
  signal clk_300_clk_wiz_0  : std_logic;
  signal clk_150_clk_wiz_0  : std_logic;
  signal clk_400_clk_wiz_0  : std_logic;
  signal clk_500_clk_wiz_0  : std_logic;
  signal clk_out6_clk_wiz_0 : std_logic;
  signal clk_out7_clk_wiz_0 : std_logic;
  signal locked_int         : std_logic;
  signal locked_i           : std_logic;
  signal clkfbout_clk_wiz_0 : std_logic;
  signal reset_high         : std_logic;
  signal clk_600_i          : std_logic;
  signal clk_300_i          : std_logic;
  signal clk_150_i          : std_logic;
  signal clk_400_i          : std_logic;
  signal clk_500_i          : std_logic;
    attribute keep : string;
    attribute keep of  clk_600_i : signal is "yes";
    attribute keep of  clk_300_i : signal is "yes";
    attribute keep of  clk_150_i : signal is "yes";
    attribute keep of  clk_400_i : signal is "yes";
    attribute keep of  clk_500_i : signal is "yes";

begin

   clkin1_ibuf : IBUF
   port map (
      O => clk_in1_clk_wiz_0, -- 1-bit output: Clock output
      I => clk_in1 -- 1-bit input: Clock input
   );
   
   MMCME4_ADV_inst : MMCME4_ADV
   generic map (
      BANDWIDTH => "OPTIMIZED",        -- Jitter programming
      CLKFBOUT_MULT_F => 9.000,       -- Multiply value for all CLKOUT
      CLKFBOUT_PHASE => 0.0,           -- Phase offset in degrees of CLKFB
      CLKFBOUT_USE_FINE_PS => "FALSE", -- Fine phase shift enable (TRUE/FALSE)
      CLKIN1_PERIOD => CLKIN_PERIOD,   -- Input clock period in ns to ps resolution (i.e. 33.333 is 30 MHz).
      CLKIN2_PERIOD => 0.0,            -- Input clock period in ns to ps resolution (i.e. 33.333 is 30 MHz).
      CLKOUT0_DIVIDE_F => 1.500,       -- Divide amount for CLKOUT0
      CLKOUT0_DUTY_CYCLE => 0.5,       -- Duty cycle for CLKOUT0
      CLKOUT0_PHASE => 0.0,            -- Phase offset for CLKOUT0
      CLKOUT0_USE_FINE_PS => "FALSE",  -- Fine phase shift enable (TRUE/FALSE)
      CLKOUT1_DIVIDE => 3,             -- Divide amount for CLKOUT (1-128)
      CLKOUT1_DUTY_CYCLE => 0.5,       -- Duty cycle for CLKOUT outputs (0.001-0.999).
      CLKOUT1_PHASE => 0.0,            -- Phase offset for CLKOUT outputs (-360.000-360.000).
      CLKOUT1_USE_FINE_PS => "FALSE",  -- Fine phase shift enable (TRUE/FALSE)
      CLKOUT2_DIVIDE => 8,             -- Divide amount for CLKOUT (1-128)
      CLKOUT2_DUTY_CYCLE => 0.5,       -- Duty cycle for CLKOUT outputs (0.001-0.999).
      CLKOUT2_PHASE => 0.0,            -- Phase offset for CLKOUT outputs (-360.000-360.000).
      CLKOUT2_USE_FINE_PS => "FALSE",  -- Fine phase shift enable (TRUE/FALSE)
      CLKOUT3_DIVIDE => 3,             -- Divide amount for CLKOUT (1-128)
      CLKOUT3_DUTY_CYCLE => 0.5,       -- Duty cycle for CLKOUT outputs (0.001-0.999).
      CLKOUT3_PHASE => 0.0,            -- Phase offset for CLKOUT outputs (-360.000-360.000).
      CLKOUT3_USE_FINE_PS => "FALSE",  -- Fine phase shift enable (TRUE/FALSE)
      CLKOUT4_CASCADE => "FALSE",      -- Divide amount for CLKOUT (1-128)
      CLKOUT4_DIVIDE => 2,             -- Divide amount for CLKOUT (1-128)
      CLKOUT4_DUTY_CYCLE => 0.5,       -- Duty cycle for CLKOUT outputs (0.001-0.999).
      CLKOUT4_PHASE => 0.0,            -- Phase offset for CLKOUT outputs (-360.000-360.000).
      CLKOUT4_USE_FINE_PS => "FALSE",  -- Fine phase shift enable (TRUE/FALSE)
      COMPENSATION => "AUTO",          -- Clock input compensation
      DIVCLK_DIVIDE => 1,              -- Master division value
      STARTUP_WAIT => "FALSE"          -- Delays DONE until MMCM is locked
   )
   port map (
      CDDCDONE => open,         -- 1-bit output: Clock dynamic divide done
      CLKFBOUT => clkfbout_clk_wiz_0, -- 1-bit output: Feedback clock
      CLKFBOUTB => open,       -- 1-bit output: Inverted CLKFBOUT
      CLKFBSTOPPED => open, -- 1-bit output: Feedback clock stopped
      CLKINSTOPPED => open, -- 1-bit output: Input clock stopped
      CLKOUT0 => clk_600_clk_wiz_0,           -- 1-bit output: CLKOUT0
      CLKOUT0B => open,         -- 1-bit output: Inverted CLKOUT0
      CLKOUT1 => clk_300_clk_wiz_0,           -- 1-bit output: CLKOUT1
      CLKOUT1B => open,         -- 1-bit output: Inverted CLKOUT1
      CLKOUT2 => clk_150_clk_wiz_0,           -- 1-bit output: CLKOUT2
      CLKOUT2B => open,         -- 1-bit output: Inverted CLKOUT2
      CLKOUT3 => clk_400_clk_wiz_0,           -- 1-bit output: CLKOUT3
      CLKOUT3B => open,         -- 1-bit output: Inverted CLKOUT3
      CLKOUT4 => clk_500_clk_wiz_0,           -- 1-bit output: CLKOUT4
      CLKOUT5 => open,           -- 1-bit output: CLKOUT5
      CLKOUT6 => open,           -- 1-bit output: CLKOUT6
      DO => open,                     -- 16-bit output: DRP data output
      DRDY => open,                 -- 1-bit output: DRP ready
      LOCKED => locked_int,             -- 1-bit output: LOCK
      PSDONE => open,             -- 1-bit output: Phase shift done
      CDDCREQ => '0',           -- 1-bit input: Request to dynamic divide clock
      CLKFBIN => clkfbout_clk_wiz_0,           -- 1-bit input: Feedback clock
      CLKIN1 => clk_in1_clk_wiz_0,             -- 1-bit input: Primary clock
      CLKIN2 => '0',             -- 1-bit input: Secondary clock
      CLKINSEL => '1',         -- 1-bit input: Clock select, High=CLKIN1 Low=CLKIN2
      DADDR => "0000000",               -- 7-bit input: DRP address
      DCLK => '0',                 -- 1-bit input: DRP clock
      DEN => '0',                   -- 1-bit input: DRP enable
      DI => X"0000",                     -- 16-bit input: DRP data input
      DWE => '0',                   -- 1-bit input: DRP write enable
      PSCLK => '0',               -- 1-bit input: Phase shift clock
      PSEN => '0',                 -- 1-bit input: Phase shift enable
      PSINCDEC => '0',         -- 1-bit input: Phase shift increment/decrement
      PWRDWN => '0',             -- 1-bit input: Power-down
      RST => reset_high                    -- 1-bit input: Reset
   );
 
reset_high <= reset;

process (clk_600_i)
begin
    if rising_edge (clk_600_i) then
        locked_i <= locked_int;
        locked <= locked_i;
    end if;
end process;


   clkout1_buf : BUFG
   port map (
      O => clk_600_i, -- 1-bit output: Clock output
      I => clk_600_clk_wiz_0  -- 1-bit input: Clock input
   );
   
   clkout2_buf : BUFG
   port map (
      O => clk_300_i, -- 1-bit output: Clock output
      I => clk_300_clk_wiz_0 -- 1-bit input: Clock input
   );

--   clkout1_buf : BUFGCE_DIV
--   generic map (
--      BUFGCE_DIVIDE => 1,     -- 1-8
--      -- Programmable Inversion Attributes: Specifies built-in programmable inversion on specific pins
--      IS_CE_INVERTED => '0',  -- Optional inversion for CE
--      IS_CLR_INVERTED => '0', -- Optional inversion for CLR
--      IS_I_INVERTED => '0'    -- Optional inversion for I
--   )
--   port map (
--      O => clk_600_i,     -- 1-bit output: Buffer
--      CE => '1',   -- 1-bit input: Buffer enable
--      CLR => '0', -- 1-bit input: Asynchronous clear
--      I => clk_600_clk_wiz_0      -- 1-bit input: Buffer
--   );
   
--   clkout2_buf : BUFGCE_DIV
--   generic map (
--      BUFGCE_DIVIDE => 2,     -- 1-8
--      -- Programmable Inversion Attributes: Specifies built-in programmable inversion on specific pins
--      IS_CE_INVERTED => '0',  -- Optional inversion for CE
--      IS_CLR_INVERTED => '0', -- Optional inversion for CLR
--      IS_I_INVERTED => '0'    -- Optional inversion for I
--   )
--   port map (
--      O => clk_300_i,     -- 1-bit output: Buffer
--      CE => '1',   -- 1-bit input: Buffer enable
--      CLR => '0', -- 1-bit input: Asynchronous clear
--      I => clk_600_clk_wiz_0      -- 1-bit input: Buffer
--   );


--   clkout3_buf : BUFG
--   port map (
--      O => clk_150_i, -- 1-bit output: Clock output
--      I => clk_150_clk_wiz_0  -- 1-bit input: Clock input
--   );
   
--   clkout4_buf : BUFG
--   port map (
--      O => clk_400_i, -- 1-bit output: Clock output
--      I => clk_400_clk_wiz_0 -- 1-bit input: Clock input
--   );

--   clkout5_buf : BUFG
--   port map (
--      O => clk_500_i, -- 1-bit output: Clock output
--      I => clk_500_clk_wiz_0  -- 1-bit input: Clock input
--   );
   clk_600 <= clk_600_i;
   clk_300 <= clk_300_i;
   clk_150 <= clk_150_i;
   clk_400 <= clk_400_i;
   clk_500 <= clk_500_i;
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

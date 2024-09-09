--<insert: c:\HW\releasedULD\headers\uart_rx_ctl.head>
-- -----------------------------------------------------------------------------
--
-- module:    uart_rx_ctl
-- project:   wave_gen
-- company:   Xilinx, Inc.
-- author:    WK, AW
-- 
-- comment:
--   UART receiver  controller
--   Implements the state machines for doing RS232  reception.
--   
-- Based on the detection of the falling edge of the synchronized  rxd
--   input, this module waits 1/2 of a bit period (8 periods of  baud_x16_en)
--   to find the middle of the start bit, and resamples it. If rxd  
--   is still low it accepts it as a valid START bit, and captures the  rest
--   of the character, otherwise it rejects the start bit and returns  to
--    idle.
--   
-- After detecting the START bit, it advances 1 full bit period at a  time
--   (16 periods of baud_x16_en) to end up in the middle of the 8  data
--   bits, where it samples the 8 data bits.  
--   
-- After the last bit is sampled (the MSbit, since the LSbit is  sent
--   first), it waits one additional bit period to check for the STOP  bit.
--   If the rxd line is not high (the value of a STOP bit), a framing  error
--   is signalled. Regardless of the value of the rxd, though, the  module
--   returns to the IDLE state and immediately begins looking for the  
--   start of the next  character.
--   
-- NOTE: The total cycle time through the state machine is 9 1/2  bit
--   periods (not 10) - this allows for a mismatch between the transmit  and
--   receive clock rates by as much as  5%.
--   
-- Multicycle and False  Paths
--   All flip-flops within this module share the same chip enable,  generated
--   by the Baud rate generator. Hence, all paths from FFs to FFs in  this
--   module are multicycle paths.
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


entity uart_rx_ctl is
    Port ( clk_rx           : in  std_logic;
           rst_clk_rx       : in  std_logic;
           baud_x16_en      : in  std_logic;
           rxd_clk_rx       : in  std_logic;
           rx_data          : out std_logic_vector (7 downto 0);
           rx_data_rdy      : out std_logic;
           frm_err          : out std_logic
          );
end uart_rx_ctl;


architecture Behavioral of uart_rx_ctl is

       type legal_rx_states is ( IDLE, START, DATA, STOP );
       signal state                  : legal_rx_states := IDLE;
       signal bit_cnt                : integer range 0 to 8 := 0;  -- capture up to 8 bits of data
       signal over_sample_cnt_done   : std_logic := 'U';           -- should now be in the middle of the bit
       signal bit_cnt_done           : std_logic := 'U';           -- indicates that all the data has been collected

    begin
    
       --
       -- compute the next state
       genNextState: process (clk_rx)
          begin
             if rising_edge(clk_rx) then                           -- when the rising edge of the clock hits, then...
                if (rst_clk_rx = '1') then                         -- if the reset is asserted
                   state <= IDLE;                                  -- head back to the IDLE state
                else                                               -- otherwise, do non-reset activities
                   if (baud_x16_en = '1') then                     -- 16 times per bit...
                      case state is                                -- locate the tasks for this state
                         when IDLE =>                              -- stay here until the receiver line drops low, indicating a START bit
                            if (rxd_clk_rx = '0') then             -- is the receive line low?
                               state <= START;                     -- yes! transition to the START state
                            end if;                                -- end of test for receive line low
                               
                         when START =>                             -- verify this was not a glitch and consume the start bit
                            if (over_sample_cnt_done = '1') then   -- after 1/2 a bit time, then
                               if (rxd_clk_rx = '0') then          -- is the line still low?
                                  state <= DATA;                   -- really was the start bit, start collecting DATA
                               else                                -- line is back high, must have been a glitch
                                  state <= IDLE;                   -- return to the IDLE state and resume looking for the START bit
                               end if;                             -- end of checking if the line is still low
                            end if;                                -- end of 1/2 bit time check
                            
                         when DATA =>                              -- collect 8 bits of data
                            if ((over_sample_cnt_done = '1') and   -- if this bit is done AND
                                (bit_cnt_done = '1')) then         -- all 8 bits are done
                               state <= STOP;                      -- transition to testing for the STOP bit
                            end if;                                -- end of check to see if all data has been collected
                            
                         when STOP =>                              -- test for the stop bit
                            if (over_sample_cnt_done = '1') then   -- have we captured another bit?
                               state <= IDLE;                         -- return to looking for the next START bit
                            end if;                                -- end test of capturing STOP bit
                
                         when others =>                            -- catchall state - usually optimized out unless explicity kept
                            state <= IDLE;                         -- if the state machine broke, recover by jumping to the IDLE state
                      end case;                                    -- end of case for determining which state
                   end if;                                         -- end of 16 times per bit activities
                end if;                                            -- end of non-reset activities
             end if;                                               -- end of synchronous events
          end process genNextState;
       
       

       -- Oversample counter
       -- Pre-load to 7 when a start condition is detected (rxd_sync is 0 while in
       -- IDLE) - this will get us to the middle of the first bit.
       -- Pre-load to 15 after the START is confirmed and between all data bits.
       oversample_counter: process (clk_rx)
       
             variable over_sample_cnt         : integer range 0 to 15 := 0;    -- each bit is sampled 16 times
             
          begin
             if rising_edge(clk_rx) then                           -- when the rising edge of the clock hits, then...
                if (rst_clk_rx = '1') then                         -- if the reset is asserted
                   over_sample_cnt := 7;                           -- reset the counter, since the first state is IDLE, preset the count to 1/2 a bit width
                   over_sample_cnt_done <= '0';                    -- don't tic during reset (initial condition)
                   
                else                                               -- otherwise, do non-reset activities
                
                   -- countdown if 16x baudrate is enabled
                   if (baud_x16_en = '1') then                     -- 16 times per bit...  
                      if (over_sample_cnt /= 0) then               -- if the count is not yet complete,
                         over_sample_cnt := over_sample_cnt - 1;   -- then decrement the counter
                         if (over_sample_cnt = 0) then             -- are we done yet?
                            over_sample_cnt_done <= '1';           -- indicate that this count is complete
                         else
                            over_sample_cnt_done <= '0';           -- indicate that this count is complete
                         end if;                                   -- end of count check

                      -- if the count has completed, should we preset the count?
                      else                                         -- tasks that can be performed between sync pulses - prep for next count
                        over_sample_cnt_done <= '0';               -- can only be set above - if here, it must be cleared
                         if ((state = IDLE) AND (rxd_clk_rx = '0')) then -- if getting ready to look at IDLE, then 
                            over_sample_cnt := 7;                  -- we need only wait 1/2 a bit width
                         elsif (((state = START) AND (rxd_clk_rx = '0')) OR --  if we're in the start state and the line is low (start bit) or
                               (state = DATA)) then                -- if we're collecting data
                            over_sample_cnt := 15;                 -- count the full 16 sample times
                         end if;                                   -- end of check for times which require 16 counts
                      end if;                                      -- end check of completion of count
                   end if;                                         -- end of check for over sample enable
                end if;                                            -- end of non-reset activities
             end if;                                               -- end of synchronous events
          end process oversample_counter;
          
          
       -- Track which bit we are about to receive
       -- Set to 0 when we confirm the start condition
       -- Increment in all DATA states
       bitTracker: process (clk_rx)
          begin
             if rising_edge(clk_rx) then                           -- when the rising edge of the clock hits, then...
                if (rst_clk_rx = '1') then                         -- if the reset is asserted
                   bit_cnt <= 0;                                   -- reset the bit count
                else                                               -- otherwise, do non-reset activities
                   if (baud_x16_en = '1') then                     -- 16 times per bit...           
                      if (over_sample_cnt_done = '1') then         -- has the count completed          
                         if (state = START) then                   -- action depends on which state we're in                      
                            bit_cnt <= 0;                          -- clear the count as we're now starting
                         elsif (state = DATA) then                 -- collecting data?                        
                            bit_cnt <= bit_cnt + 1;                -- one more piece of data gathered               
                         end if;                                   -- state checks
                      end if;                                      -- end of count not completed
                   end if;                                         -- end of oversample enabled tasks
                end if;                                            -- end of non-reset activities         
             end if;                                               -- end of synchronous events
          end process bitTracker;          

       bit_cnt_done <= '1' when (bit_cnt = 7) else '0';            -- this is the last bit when bit_cnt = 7
          
       -- Capture the data and generate the rdy signal
       -- The rdy signal will be generated as soon as the last bit of data
       -- is captured - even though the STOP bit hasn't been confirmed. It will
       -- remain asserted for one BIT period (16 baud_x16_en periods)    
       outCtrl: process (clk_rx)
          begin
             if rising_edge(clk_rx) then                           -- when the rising edge of the clock hits, then...
                if (rst_clk_rx = '1') then                         -- if the reset is asserted
                   rx_data     <= X"00";                           -- drive the output to all zeros
                   rx_data_rdy <= '0';                             -- ensure that the data ready signal is inactive   
                else                                               -- otherwise, do non-reset activities
                   if ((baud_x16_en = '1') AND                     -- 16 times per bit... AND
                       (over_sample_cnt_done = '1')) then          -- time to keep this sample
                      rx_data_rdy    <= '0';                       -- keep the data ready deasserted                     
                      if (state = DATA) and (bit_cnt < 8) then     -- if we were capturing data, but not the stop bit                   
                         rx_data(bit_cnt) <= rxd_clk_rx;           -- capture this bit and stick it in the right place
                      elsif (state = STOP) and                     -- if we're in the stop state and
                            (over_sample_cnt_done = '1') then      -- we're done with the counting, then the stop bit has been captured                         
                         rx_data_rdy <= '1';                       -- assert the data ready
                      end if;                                      -- end of check to see if we were capturing data
                   end if;                                         -- end of oversample check
                end if;                                            -- end of non-reset activities
             end if;                                               -- end of synchronous events
          end process; 


       -- Framing error generation
       -- Generate for one baud_x16_en period as soon as the framing bit
       -- is supposed to be sampled
       ferrGen: process (clk_rx)
          begin
             if rising_edge(clk_rx) then                           -- when the rising edge of the clock hits, then...
                if (rst_clk_rx = '1') then                         -- if the reset is asserted
                   frm_err <= '0';                                 -- ensure that the framing error is disabled
                else                                               -- otherwise, do non-reset activities
                   if (baud_x16_en = '1') then                     -- 16 times per bit...     
                      if ((state = STOP) AND                       -- if we're in the last state (STOP) and
                          (over_sample_cnt_done = '1') AND         -- we've finished counting and
                          (rxd_clk_rx = '0')) then                 -- the line is low, then 
                         frm_err <= '1';                           -- no error present
                      else                                         -- otherwise
                         frm_err <= '0';                           -- no error present
                      end if;                                      -- end of check for conditions that would generate a framing error
                   end if;                                         -- end of oversample check
                end if;                                            -- end of non-reset activities
             end if;                                               -- end of synchronous events
          end process; 
  
    end Behavioral;

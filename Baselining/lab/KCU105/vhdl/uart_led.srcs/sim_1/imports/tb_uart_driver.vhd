--
-- -------------------------------------------------------------------------------------------------
--
-- Project: waveGenTestBench
-- Description: the UART driver accepts a command string and breaks it into characters, each character
--              is further broken down into bits according to the RS-232 protocol. When the entire 
--              command has been sent, it requests another command
-- File: tb_uart_driver
-- Description: implements the command to serial stream converter
-- Written:     WK  8/15/11
--
-- Notes:
-- Issues:
--
-- --------------------------------------------------------------------------------------------------
--
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library WORK;
use WORK.tb_wave_gen_helper_pkg.all;

library UTILITIES_LIB;
use UTILITIES_LIB.time_utilities_pkg.all;
use UTILITIES_LIB.string_utilities_sim_pkg.all;
use UTILITIES_LIB.string_utilities_synth_pkg.all;


entity tb_uart_driver is
  generic (BAUD_PERIOD             : time
          );
  port    (reset                   : in std_logic;
           next_command_request    : out boolean;
           more_commands_available : in  boolean;      
           command_string          : in  string;
           serial_data_out         : out std_logic
          );
end entity tb_uart_driver;   

architecture BEHAVIORAL of tb_uart_driver is

      type legal_state is (WAIT_FOR_RESET_TO_DEASSERT, WAIT_FOR_CMD, CMD_TO_CHARS, REQ_NEXT_CMD, UNDEFINED);
      signal debug_state : legal_state := UNDEFINED;

   begin
   
       -- simple state machine to see if data is available, and if so, serialize it
       uart_driver_sm: process
             variable cmd             : string(1 to 32);
             variable pattern_to_send : std_logic_vector(7 downto 0); 
             variable state           : legal_state := WAIT_FOR_RESET_TO_DEASSERT;            
          begin
          
             -- make the state visible in the simulator
             debug_state <= state;
             
             -- state machine manages serial line
             -- out-of-reset -> get command -> convert command to individual characters and xmit -> get next command
             SM: case state is
                when WAIT_FOR_RESET_TO_DEASSERT =>
                    next_command_request <= FALSE;
                    serial_data_out      <= '1';
                    wait until reset = '0';
                    wait for 6us;                      -- just so we can see the serial line begin high
                    state := WAIT_FOR_CMD;
                
                when WAIT_FOR_CMD =>               
                   next_command_request <= true;            -- ask for a command 
                   wait for 1 ns;
                   if (more_commands_available) then
                      cmd := command_string;
                      report " ********** ";                           -- separator
                      report "(UART_DRIVER) will issue:" & command_string;
                      state := CMD_TO_CHARS;
                   else
                      wait until (more_commands_available);   -- suspend the process until more commands are available   
                   end if;
                                     
                when CMD_TO_CHARS => 
                   next_command_request <= false;
                   each_char: for i in 1 to strlen(cmd) loop                             
                      -- send the start bit
                      serial_data_out <= '0';
                      wait for BAUD_PERIOD;
                    
                      -- send the 8 data bits
                      pattern_to_send := charToSlv(cmd(i));                
                      each_bit: for i in 0 to 7 loop            -- The count should be from 0 to 7 because the LSB is sent first to the DUT receiver    
                         serial_data_out <= pattern_to_send(i);
                         wait for BAUD_PERIOD;
                      end loop each_bit;
                    
                      serial_data_out <= '1';        -- stop bit
                      wait for BAUD_PERIOD;                      
                      wait for BAUD_PERIOD * 2;     -- wait extra time between characters
                   end loop each_char;
                   
                   -- request and wait for the next command
                   state := REQ_NEXT_CMD;
                
                when REQ_NEXT_CMD =>
                    wait for CLOCK_PERIOD;
                    -- see if there is more data
                    state := WAIT_FOR_CMD;
                   
                when others =>
                   report "Illegal state!";
                   state := WAIT_FOR_CMD;
                   
             end case SM;
          end process uart_driver_sm;   
   
   end architecture BEHAVIORAL;

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

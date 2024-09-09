----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:17:36 09/05/2011 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_resp_checker is
   port (start_response_checker : in boolean;    -- need to check if this pin has to be removed in top level implementation
         data_from_fifo         : in character;
         data_from_uut          : in character;
         data_ready             : in boolean;
         fifo_empty             : in boolean;
         read_fifo              : out boolean
        );  
end entity tb_resp_checker;


architecture Behavioral of tb_resp_checker is  
   begin

      resp_check: process
            variable fifo_data        : character;
            variable uut_data         : character;
            variable last_data_ready  : boolean := false;
         begin
            wait until data_ready'event and data_ready =true;           ---Wait until valid data is received from the Monitor.  
            start_check: if start_response_checker then            
               uut_data := data_from_uut;                                -- Capture only after the DUT transmits valid data  
               do_check: if fifo_empty then
                  report "ERROR Data FIFO is not empty when expected";
                  read_fifo <= false;
               else        
                  read_fifo <= true;
                  wait for 500 ps;
                  fifo_data := data_from_fifo;    
                  data_match: if (uut_data /= fifo_data) then
                     report time'image(now) & "(response check) ERROR Character mismatch. Expected   " & fifo_data & " but received " & uut_data;
                  else 
                     report time'image(now) & "(response check) Correct character received  " &  fifo_data;
                  end if data_match;
                  wait for 0.5 ns;
                  read_fifo <= false;           
               end if do_check;          
            end if start_check;
    
         end process resp_check;

   end architecture behavioral;


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

--<insert: c:\HW\releasedULD\headers\time_utilities_pkg.head>
-- -----------------------------------------------------------------------------
--
-- module:    time_utilities_pkg
-- project:   utilities
-- company:   Xilinx, Inc.
-- author:    WK, AW
-- 
-- comment:
--   This package contains time display/formatting functions useful during
--   simulation
--   impure function time2string(magnitude : String) return String;
--   impure function time2string return String;
--   procedure writeNowToScreen (text_string : String);
-- 
-- known issues:
-- status           id     found     description                      by fixed date  by    comment
-- 
-- version history:
--   version    date    author     description
--    11.1-001 20 APR 2009 WK       New for version 11.1       
--    13.1-001 15 AUG 2011 WK       Fixed definition of WriteNowToScreen
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

library STD;
use STD.TEXTIO.all;

library utilities_lib;
use utilities_lib.string_utilities_synth_pkg.all;
use utilities_lib.string_utilities_sim_pkg.all;


package time_utilities_pkg is

       impure function time2string(magnitude : String) return String;
       impure function time2string(time_value: time) return String;
       impure function time2string return String;
       procedure writeNowToScreen (text_string : in String);

end time_utilities_pkg;


package body time_utilities_pkg is


       impure function time2string return String is
             variable l              : line;
             variable ps_real        : real := 0.0;
             variable str_mantissa   : string (1 to 12);
             variable start, stop    : integer range 0 to 32;
             variable int_exp        : integer range -32 to 32;
             variable new_exp        : integer range -32 to 32;
             variable dec_pnt        : integer range 0 to 12;      
             variable nGroups        : integer range 0 to 12;
             variable str_equ        : string (1 to 32);
             variable strValue       : string (1 to 32);
          begin
          
--           write(l,"in time2string at "&time'image(now));
--           writeline(output,l);
          
             -- convert time into a string
             ps_real := real(now / 1 ps);        -- convert time to real
             str_equ := real'image(ps_real);     -- convert real to string

             -- extract the mantissa       
             start         := 1;                                -- start from the beginning of the string
             stop          := strpos(strAutoResize(str_equ),'e')-1;-- and end at the position of the 'e' for exponent
             str_mantissa  := substr(strAutoResize(str_equ),start,stop); -- get the raw mantissa with the decimal point                    
             start         := 2;                                -- exp format has only 1 char to the left of the decimal point
             stop          := strpos(str_mantissa,'.');         -- locate the decimal point
             str_mantissa  := strdel(str_mantissa,start,stop);  -- remove the decimal point
          
             -- manage the exponent
             start    := strlen(strAutoResize(str_equ))-1;
             stop     := strlen(strAutoResize(str_equ));
             strValue := substr(strAutoResize(str_equ), start, stop);    -- pull out the exponent portion of the string
             int_exp  := integer'value(strValue);                        -- convert from string to integer
             
--           write(l,"integer exp = "&integer'image(int_exp));
--           writeline(output,l);
--           write(l,"extracted mantissa is "&str_mantissa);
--           writeline(output,l);                      
             
             -- figure where to move the decimal point
             dec_pnt := int_exp mod 3 + 1;          
--write(l,"new decimal point goes in position: "&integer'image(dec_pnt));
--writeline(output,l);               
             str_mantissa  := strins(str_mantissa,".",dec_pnt);          -- insert the decimal point for engineering notation
--write(l,"which is..."&str_mantissa);
--writeline(output,l);            
             
             -- figure the nearest exponent of three
             new_exp := int_exp - 12;                                    -- -12 as time is assumed to come in ps
             nGroups := (new_exp-2) / 3;                                 -- how many 10^3 groups are we off of ps
             
--write(l,"group = "&integer'image(nGroups));
--writeline(output,l);
             
-- debug - remove           
--write(l,"int_exp = "&integer'image(int_exp)& " ... dec_pnt = "&integer'image(dec_pnt)&" ... group = "&integer'image(nGroups)
--     &" ... new_exp = "&integer'image(new_exp));
--writeline(output,l);            
             --
             -- the number of groups of 3 digits (away from 0) determines the unit scaling
             case -nGroups is
                when 5 => write(l,strAutoResize(str_mantissa)&" fs");
                when 4 => write(l,strAutoResize(str_mantissa)&" ps");
                when 3 => write(l,strAutoResize(str_mantissa)&" ns");
                when 2 => write(l,strAutoResize(str_mantissa)&" us");
                when 1 => write(l,strAutoResize(str_mantissa)&" ms");
                when 0 => write(l,strAutoResize(str_mantissa)&" sec");
--                when others => write(l,"out of range");
				when others => write(l,strAutoResize(str_mantissa)&" is out of range");
             end case;            

             return (l.all);
          end function time2string;

     --
     -- this version converts the passed time value to a string...
     impure function time2string (time_value : time) return String is
             variable l              : line;
             variable ps_real        : real := 0.0;
             variable str_mantissa   : string (1 to 12);
             variable start, stop    : integer range 0 to 32;
             variable int_exp        : integer range -32 to 32;
             variable new_exp        : integer range -32 to 32;
             variable dec_pnt        : integer range 0 to 12;      
             variable nGroups        : integer range 0 to 12;
             variable str_equ        : string (1 to 32);
             variable strValue       : string (1 to 32);
             
          begin
          
             -- convert time into a string
             ps_real := real(time_value / 1 ps); -- convert time to real
             str_equ := real'image(ps_real);     -- convert real to string

             -- extract the mantissa       
             start         := 1;                                -- start from the beginning of the string
             stop          := strpos(strAutoResize(str_equ),'e')-1;-- and end at the position of the 'e' for exponent
             str_mantissa  := substr(strAutoResize(str_equ),start,stop); -- get the raw mantissa with the decimal point                    
             start         := 2;                                -- exp format has only 1 char to the left of the decimal point
             stop          := strpos(str_mantissa,'.');         -- locate the decimal point
             str_mantissa  := strdel(str_mantissa,start,stop);  -- remove the decimal point
          
             -- manage the exponent
             start    := strlen(strAutoResize(str_equ))-1;
             stop     := strlen(strAutoResize(str_equ));
             strValue := substr(strAutoResize(str_equ), start, stop);    -- pull out the exponent portion of the string
             int_exp  := integer'value(strValue);                        -- convert from string to integer
                                 
             -- figure where to move the decimal point
             dec_pnt := int_exp mod 3 + 1;                        
             str_mantissa  := strins(str_mantissa,".",dec_pnt);          -- insert the decimal point for engineering notation          
             
             -- figure the nearest exponent of three
             new_exp := int_exp - 12;                                    -- -12 as time is assumed to come in ps
             nGroups := (new_exp-2) / 3;                                 -- how many 10^3 groups are we off of ps
                     
             --
             -- the number of groups of 3 digits (away from 0) determines the unit scaling
             case -nGroups is
                when 5 => write(l,strAutoResize(str_mantissa)&" fs");
                when 4 => write(l,strAutoResize(str_mantissa)&" ps");
                when 3 => write(l,strAutoResize(str_mantissa)&" ns");
                when 2 => write(l,strAutoResize(str_mantissa)&" us");
                when 1 => write(l,strAutoResize(str_mantissa)&" ms");
                when 0 => write(l,strAutoResize(str_mantissa)&" sec");
--                when others => write(l,"out of range");
				when others => write(l,strAutoResize(str_mantissa)&" is out of range");
             end case;            

             return (l.all);
          end function time2string;
          
       -- 
       -- converts current time into engineering notation based on the magnitude specified
       impure function time2string(magnitude : String) return String is
             variable l : line;   -- debug - remove

          begin
             -- call time2string()
             -- check if existing units are desire; if so, return
             -- pull off the mantissa and remove decimal point
             -- determine if decimal point should be shifted left or right
             -- pad zeros to appropriate size
             -- rebuild string
             -- return string
             return("not yet coded...");
          end function time2string;
          

       -- ***********************************************************
       --  Proc : writeNowToScreen
       --  Inputs : Text String
       --  Outputs : None
       --  Description : Displays current simulation time and text string to
       --       standard output.
       -- *************************************************************
       procedure writeNowToScreen (text_string : in String) is
             variable l      : line;
          begin
             write (l, String'("[ "));
             write (l, Time'image(Now));          -- shows time in fs
--           write (l,time2string);                 -- shows time in best units normalized and in eng format
             write (l, String'(" ] : "));
             write (l, text_string);
             writeline (output, l);
          end writeNowToScreen;            

end time_utilities_pkg;

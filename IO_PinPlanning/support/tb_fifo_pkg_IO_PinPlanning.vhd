--<insert: c:\HW\releasedULD\headers\tb_fifo_pkg.head>
-- -----------------------------------------------------------------------------
--
-- module:    tb_fifo_pkg
-- project:   utilities
-- company:   Xilinx, Inc.
-- author:    WK, AW
-- 
-- comment:
--   This package contains time display/formatting functions useful during
--   simulation   
--   procedure reset(variable fifo_instance : inout  fifo_type);
--   procedure push(variable fifo_instance : inout fifo_type; value : in
--                       std_logic_vector(MAX_WIDTH-1 downto  0));
--   procedure pop (variable fifo_instance : inout fifo_type; value : out
--                       std_logic_vector(MAX_WIDTH-1 downto  0));
--   procedure spush(signal fifo_instance : inout fifo_type; value : in
--                       std_logic_vector(MAX_WIDTH-1 downto  0));
--   procedure spop (signal fifo_instance : inout fifo_type; value : out
--                       std_logic_vector(MAX_WIDTH-1 downto  0));    
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
use IEEE.numeric_std.all;

library std;
use STD.TEXTIO.all;


library utilities_lib;
use utilities_lib.time_utilities_pkg.all;


package tb_fifo_pkg is

    constant MAX_WIDTH   : integer := 8;
    constant MAX_DEPTH   : integer := 16;

    subtype word   is std_logic_vector(MAX_WIDTH-1 downto 0);
    type    memory is array(0 to MAX_DEPTH-1) of word;

    type fifo_type is
       record
          width             : integer range 1 to MAX_WIDTH;
          depth             : integer range 1 to MAX_DEPTH;
          read_ptr          : integer range 0 to MAX_DEPTH-1;
          write_ptr         : integer range 0 to MAX_DEPTH-1;
          full              : boolean;
          empty             : boolean;
          n_writes          : integer;                             -- very large number to track the total number of write operations
          n_reads           : integer;                             -- very large number to track the total number of read operations
          volume            : integer range 0 to MAX_DEPTH;
          contents          : memory;         
       end record;
 
    -- Declare functions and procedure
    --procedure reset(signal   fifo_instance : inout fifo_type);
    procedure reset(variable fifo_instance : inout fifo_type);
    procedure push(variable fifo_instance : inout fifo_type; value : in std_logic_vector(MAX_WIDTH-1 downto 0));
    procedure pop (variable fifo_instance : inout fifo_type; value : out std_logic_vector(MAX_WIDTH-1 downto 0));
    procedure spush(signal fifo_instance : inout fifo_type; value : in std_logic_vector(MAX_WIDTH-1 downto 0));
    procedure spop (signal fifo_instance : inout fifo_type; value : out std_logic_vector(MAX_WIDTH-1 downto 0));   

end tb_fifo_pkg;


package body tb_fifo_pkg is

    procedure reset(variable fifo_instance: inout fifo_type) is
       begin
          -- width and depth are set to maximum for this version of the pkg.
          -- future version may support variable widths and depths
--        fifo_instance.width     := MAX_WIDTH;
          fifo_instance.depth     := MAX_DEPTH;
          
          --
          fifo_instance.read_ptr  := 0;
          fifo_instance.write_ptr := 0;
          fifo_instance.full      := false;
          fifo_instance.empty     := true;
          fifo_instance.volume    := 0;
          fifo_instance.n_writes  := 0;
          fifo_instance.n_reads   := 0;
          fifo_instance.contents  := (others=>(others=>'0'));
       end procedure reset;

--  procedure reset(signal fifo_instance: inout fifo_type) is
--     begin
--        -- width and depth are set to maximum for this version of the pkg.
--        -- future version may support variable widths and depths
--        fifo_instance.read_ptr     <= 0;
--        fifo_instance.write_ptr    <= 0;
--        fifo_instance.full      <= false;
--        fifo_instance.empty     <= true;
--        fifo_instance.volume       <= 0;
--        clrMem: for i in 0 to MAX_DEPTH-1 loop
--           fifo_instance.contents(i) <= (others=>'0');
--        end loop;
--     end procedure reset;       

    procedure push(variable fifo_instance : inout fifo_type; value : std_logic_vector(MAX_WIDTH-1 downto 0)) is
       begin
          if (fifo_instance.volume = MAX_DEPTH) then
             writeNowToScreen("!Warning - FIFO is full and cannot accept any more data!");
          else
             fifo_instance.contents(fifo_instance.write_ptr) := value;
             fifo_instance.write_ptr := (fifo_instance.write_ptr + 1) mod fifo_instance.depth;

             --manage the volume and flags
             fifo_instance.volume    := fifo_instance.volume + 1;           
             fifo_instance.empty     := false;                        -- always since we just wrote data
             if (fifo_instance.volume = MAX_DEPTH) then
                fifo_instance.full := true;
             else
                fifo_instance.full := false;
             end if;
          end if;
       end push;
       
    procedure pop(variable fifo_instance : inout fifo_type; value : out std_logic_vector(MAX_WIDTH-1 downto 0)) is
       begin
          if (fifo_instance.volume = 0) then
             writeNowToScreen("!Warning - FIFO now empty - can't read!");
             value := (others=>'U');
          else
             value := fifo_instance.contents(fifo_instance.read_ptr);
             fifo_instance.read_ptr := (fifo_instance.read_ptr + 1) mod fifo_instance.depth;     
             
             --manage the volume and flags             
             fifo_instance.full := false;                       -- always since we just read data
             fifo_instance.volume   := fifo_instance.volume - 1;
             if (fifo_instance.volume = 0) then
                fifo_instance.empty := true;
             else
                fifo_instance.empty := false;
             end if;
          end if;
       end pop;       
       
    procedure spush(signal fifo_instance : inout fifo_type; value : std_logic_vector(MAX_WIDTH-1 downto 0)) is
          variable l : line;
          variable new_write_ptr : integer range 0 to MAX_DEPTH := 0;
          variable volume        : integer range 0 to MAX_DEPTH := 0;
       begin
          volume := fifo_instance.n_writes - fifo_instance.n_reads;
          if (volume > MAX_DEPTH) then
             writeNowToScreen("!Warning - FIFO is full and cannot accept any more data!");
          else
             writeNowToScreen("space available at " & integer'image(fifo_instance.write_ptr) & " to write the value " & integer'image(to_integer(unsigned(value))));
             fifo_instance.contents(fifo_instance.write_ptr) <= value;
             write(l,"fifo depth set to " & integer'image(fifo_instance.depth));
             writeline(output,l);
             new_write_ptr := (fifo_instance.write_ptr + 1) mod MAX_DEPTH; -- fifo_instance.depth;  -- debug - resolve when ISIM accepts initializations
             write(l,"new write pointer value = " & integer'image(new_write_ptr));
             writeline(output,l);
             fifo_instance.write_ptr <= new_write_ptr;
             fifo_instance.n_writes  <= fifo_instance.n_writes + 1;
             if ((volume+1) >= MAX_DEPTH) then
                fifo_instance.full <= true;
             else
                fifo_instance.full <= false;
             end if;

          end if;
       end spush;
       
    procedure spop(signal fifo_instance : inout fifo_type; value : out std_logic_vector(MAX_WIDTH-1 downto 0)) is
          variable l : line;
          variable new_write_ptr : integer range 0 to MAX_DEPTH := 0;
          variable volume        : integer range 0 to MAX_DEPTH := 0;
       begin
          volume := fifo_instance.n_writes - fifo_instance.n_reads;      
          if (volume = 0) then
             writeNowToScreen("!Warning - FIFO now empty - can't read!");
          else
             value := fifo_instance.contents(fifo_instance.read_ptr);
             fifo_instance.read_ptr <= (fifo_instance.read_ptr + 1) mod MAX_DEPTH; -- fifo_instance.depth;         -- debug - resolve when ISIM accepts initializations
             fifo_instance.n_reads  <= fifo_instance.n_reads + 1;
             --fifo_instance.volume   <= fifo_instance.volume - 1;
             if ((volume-1) = 1) then
                fifo_instance.empty <= true;
             else
                fifo_instance.empty <= false;
             end if;
          end if;
       end spop;         
                
 
end tb_fifo_pkg;

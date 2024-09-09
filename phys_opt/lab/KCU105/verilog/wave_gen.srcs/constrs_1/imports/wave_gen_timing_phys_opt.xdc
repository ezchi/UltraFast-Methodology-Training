# Global timing constraints
create_clock -period 3.333 -name clk_pin_p -waveform {0.000 1.666} [get_ports clk_pin_p]

create_generated_clock -name spi_clk -source [get_pins dac_spi_i0/out_ddr_flop_spi_clk_i0/ODDR_inst/C] -divide_by 1 -invert [get_ports spi_clk_pin]

set_input_delay -clock clk_pin_p 0.8 [get_ports rst_pin]
set_input_delay -clock clk_pin_p -min 0.5 [get_ports rst_pin]

create_clock -period 5.161 -name clk_tx_virtual -waveform {0.000 2.580}

set_input_delay -clock clk_tx_virtual 1 [get_ports lb_sel_pin]
set_input_delay -clock clk_tx_virtual -min 0.500 [get_ports lb_sel_pin]

create_clock -period 5.000 -name clk_rx_virtual -waveform {0.000 2.500}
set_input_delay -clock clk_rx_virtual 1 [get_ports rxd_pin]
set_input_delay -clock clk_rx_virtual -min 0.5 [get_ports rxd_pin]

set_output_delay -clock clk_tx_virtual 1.25 [get_ports {txd_pin {led_pins[*]}}]
set_output_delay -clock clk_tx_virtual -min 0.5 [get_ports {txd_pin {led_pins[*]}}]

# Path specific timing constraints


set_output_delay -clock [get_clocks spi_clk] -max 1.000 [get_ports {spi_mosi_pin dac_cs_n_pin dac_clr_n_pin}]
set_output_delay -clock [get_clocks spi_clk] -min 0.2 [get_ports {spi_mosi_pin dac_cs_n_pin dac_clr_n_pin}]

set_multicycle_path -from [get_cells {cmd_parse_i0/send_resp_data_reg[*]}] -to [get_cells {resp_gen_i0/to_bcd_i0/bcd_out_reg[*]}] 2
set_multicycle_path -hold -from [get_cells {cmd_parse_i0/send_resp_data_reg[*]}] -to [get_cells {resp_gen_i0/to_bcd_i0/bcd_out_reg[*]}] 1

#set_multicycle_path -from [get_cells uart_rx_i0/uart_rx_ctl_i0/* -filter {IS_SEQUENTIAL == 1}] -to [get_cells uart_rx_i0/uart_rx_ctl_i0/* -filter {IS_SEQUENTIAL == 1}] 108
#set_multicycle_path -hold -from [get_cells uart_rx_i0/uart_rx_ctl_i0/* -filter {IS_SEQUENTIAL == 1}] -to [get_cells uart_rx_i0/uart_rx_ctl_i0/* -filter {IS_SEQUENTIAL == 1}] 107

#set_multicycle_path -from [get_cells uart_tx_i0/uart_tx_ctl_i0/* -filter {IS_SEQUENTIAL == 1}] -to [get_cells uart_tx_i0/uart_tx_ctl_i0/* -filter {IS_SEQUENTIAL == 1}] 105
#set_multicycle_path -hold -from [get_cells uart_tx_i0/uart_tx_ctl_i0/* -filter {IS_SEQUENTIAL == 1}] -to [get_cells uart_tx_i0/uart_tx_ctl_i0/* -filter {IS_SEQUENTIAL == 1}] 104

create_generated_clock -name clk_samp -source [get_pins clk_gen_i0/BUFGCE_clk_samp_i0/I] -divide_by 32 [get_pins clk_gen_i0/BUFGCE_clk_samp_i0/O]

set_max_delay -from clkx_nsamp_i0/meta_harden_bus_new_i0/signal_meta_reg -to clkx_nsamp_i0/meta_harden_bus_new_i0/signal_dst_reg 2.000
set_max_delay -from clkx_pre_i0/meta_harden_bus_new_i0/signal_meta_reg -to clkx_pre_i0/meta_harden_bus_new_i0/signal_dst_reg 2.000
set_max_delay -from clkx_spd_i0/meta_harden_bus_new_i0/signal_meta_reg -to clkx_spd_i0/meta_harden_bus_new_i0/signal_dst_reg 2.000
set_max_delay -from lb_ctl_i0/debouncer_i0/meta_harden_signal_in_i0/signal_meta_reg -to lb_ctl_i0/debouncer_i0/meta_harden_signal_in_i0/signal_dst_reg 2.000
set_max_delay -from samp_gen_i0/meta_harden_samp_gen_go_i0/signal_meta_reg -to samp_gen_i0/meta_harden_samp_gen_go_i0/signal_dst_reg 2.000
set_max_delay -from uart_rx_i0/meta_harden_rxd_i0/signal_meta_reg -to uart_rx_i0/meta_harden_rxd_i0/signal_dst_reg 2.000

set_max_delay -from rst_gen_i0/reset_bridge_clk_rx_i0/rst_meta_reg -to rst_gen_i0/reset_bridge_clk_rx_i0/rst_dst_reg 2.000
set_max_delay -from rst_gen_i0/reset_bridge_clk_tx_i0/rst_meta_reg -to rst_gen_i0/reset_bridge_clk_tx_i0/rst_dst_reg 2.000
set_max_delay -from rst_gen_i0/reset_bridge_clk_samp_i0/rst_meta_reg -to rst_gen_i0/reset_bridge_clk_samp_i0/rst_dst_reg 2.000

set_false_path -from [get_ports rst_pin]
#set_max_delay -from samp_ram_i0/mem_array_reg_bram_0/CLKBWRCLK -to dac_spi_i0/spi_mosi_reg/D 4.7
#set_max_delay -from [get_pins samp_ram_i0/mem_array_reg_bram_0/CLKBWRCLK] -to [get_pins dac_spi_i0/spi_mosi_reg/D] 4.7

#set_max_delay -from [get_pins samp_gen_i0/samp_val_reg/C] -to [get_pins {dac_spi_i0/bit_cnt_reg[1]/CE}] 4.03

#set_max_delay  -from [get_pins {clkx_nsamp_i0/bus_dst_reg[2]/C}] -to [get_pins {samp_gen_i0/samp_cnt_reg[3]/R}] 3.3
set_max_delay -datapath_only -from [get_clocks -of [get_nets clk_rx]] -to [get_clocks -of [get_nets clk_tx]] 5.000

set_clock_uncertainty 0.620 -setup -from [get_clocks clk_samp ] -to [get_clocks clk_out2_clk_core]
set_clock_uncertainty 0.620 -setup -from [get_clocks clk_out2_clk_core] -to [get_clocks clk_samp ]

#<copyright-disclaimer-start>
#  ************************************************************************************************************
#  * © Copyright 2022 Xilinx, Inc. All rights reserved.                                                       *
#  * This file contains confidential and proprietary information of Xilinx, Inc. and                          *
#  * is protected under U.S. and international copyright and other intellectual property laws.                *
#  * DISCLAIMER                                                                                               *
#  * This disclaimer is not a license and does not grant any rights to the materials distributed              *
#  * herewith. Except as otherwise provided in a valid license issued to you by Xilinx, and to the            *
#  * maximum extent permitted by applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS"               *
#  * AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS,                 *
#  * IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT,     *
#  * OR FITNESS FOR ANY PARTICULAR PURPOSE; and (2) Xilinx shall not be liable (whether in contract or tort,  *
#  * including negligence, or under any other theory of liability) for any loss or damage of any kind or      *
#  * nature related to, arising under or in connection with these materials, including for any direct, or     *
#  * any indirect, special, incidental, or consequential loss or damage (including loss of data, profits,     *
#  * goodwill, or any type of loss or damage suffered as a result of any action brought by a third party)     *
#  * even if such damage or loss was reasonably foreseeable or Xilinx had been advised of the possibility     *
#  * of the same.                                                                                             *
#  * CRITICAL APPLICATIONS                                                                                    *
#  * Xilinx products are not designed or intended to be fail-safe, or for use in any application requiring    *
#  * fail-safe performance, such as life-support or safety devices or systems, Class III medical devices,     *
#  * nuclear facilities, applications related to the deployment of airbags, or any other applications that    *
#  * could lead to death, personal injury, or severe property or environmental damage (individually and       *
#  * collectively, "Critical Applications"). Customer assumes the sole risk and liability of any use of       *
#  * Xilinx products in Critical Applications, subject only to applicable laws and regulations governing      *
#  * limitations on product liability.                                                                        *
#  * THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.                 *
#  *                                                                                                          *
#  ************************************************************************************************************
#<copyright-disclaimer-end>

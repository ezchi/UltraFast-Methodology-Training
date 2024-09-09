# Global Clock Constraints
create_clock -period 8 -name clk_pin_p [get_ports clk_pin_p]


# IO Timing Constraints
set_input_delay -clock [get_clocks clk_pin_p] 1.500 [get_ports {rst_pin rxd_pin btn_pin}]
set_input_delay -clock [get_clocks clk_pin_p] -min 1.00 [get_ports {rst_pin rxd_pin btn_pin}]
set_output_delay -clock [get_clocks clk_pin_p] 0.500 [get_ports led_pins*]
set_output_delay -clock [get_clocks clk_pin_p] -min -0.500 [get_ports led_pins*]


#Physical Constraints

set_property PACKAGE_PIN G10      [get_ports "clk_pin_p"] 
set_property IOSTANDARD  LVDS     [get_ports "clk_pin_p"] 
set_property PACKAGE_PIN F10      [get_ports "clk_pin_n"] 
set_property IOSTANDARD  LVDS     [get_ports "clk_pin_n"]



set_property PACKAGE_PIN AP8      [get_ports "led_pins[0]"] 
set_property IOSTANDARD  LVCMOS18 [get_ports "led_pins[0]"]
set_property PACKAGE_PIN H23      [get_ports "led_pins[1]"] 
set_property IOSTANDARD  LVCMOS18 [get_ports "led_pins[1]"]
set_property PACKAGE_PIN P20      [get_ports "led_pins[2]"] 
set_property IOSTANDARD  LVCMOS18 [get_ports "led_pins[2]"]
set_property PACKAGE_PIN P21      [get_ports "led_pins[3]"] 
set_property IOSTANDARD  LVCMOS18 [get_ports "led_pins[3]"]
set_property PACKAGE_PIN N22      [get_ports "led_pins[4]"] 
set_property IOSTANDARD  LVCMOS18 [get_ports "led_pins[4]"]
set_property PACKAGE_PIN M22      [get_ports "led_pins[5]"] 
set_property IOSTANDARD  LVCMOS18 [get_ports "led_pins[5]"]
set_property PACKAGE_PIN R23      [get_ports "led_pins[6]"] 
set_property IOSTANDARD  LVCMOS18 [get_ports "led_pins[6]"] 
set_property PACKAGE_PIN P23      [get_ports "led_pins[7]"] 
set_property IOSTANDARD  LVCMOS18 [get_ports "led_pins[7]"] 



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

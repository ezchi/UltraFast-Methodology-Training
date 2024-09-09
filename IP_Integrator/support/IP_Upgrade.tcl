
#verilog

# LED CONTROL

open_project /home/amd/training/IP_Integrator/lab/KCU105/verilog/led_ctl/led_ctl.xpr

upgrade_project -migrate_output_products
ipx::open_ipxact_file /home/amd/training/IP_Integrator/lab/KCU105/verilog/led_ctl/led_ctl.srcs/sources_1/imports/IP_Integrator/component.xml

set_property supported_families {virtex7 Production qvirtex7 Production kintex7 Production kintex7l Production qkintex7 Production qkintex7l Production artix7 Production artix7l Production aartix7 Production qartix7 Production zynq Production qzynq Production azynq Production spartan7 Production virtexu Production virtexuplus Production kintexuplus Production zynquplus Production kintexu Production kintexu Production kintexuplus Production versal Production virtexuplus Production virtexuplusHBM Production zynquplus Production zynq Production} [ipx::current_core]

ipx::remove_file /home/xilinx/training/IP_Integrator/lab/KCU105/verilog/led_ctl/led_ctl.srcs/sources_1/imports/verilog/led_ctl.v [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]

ipx::remove_file /home/xilinx/training/IP_Integrator/lab/KCU105/verilog/led_ctl/led_ctl.srcs/sources_1/imports/verilog/led_ctl.v [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ../verilog/led_ctl.v [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]
set_property type verilogSource [ipx::get_files ../verilog/led_ctl.v -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
set_property library_name xil_defaultlib [ipx::get_files ../verilog/led_ctl.v -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
ipx::add_file ../verilog/led_ctl.v [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
set_property type verilogSource [ipx::get_files ../verilog/led_ctl.v -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
set_property library_name xil_defaultlib [ipx::get_files ../verilog/led_ctl.v -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]

ipx::save_core [ipx::current_core]
update_ip_catalog -rebuild -repo_path /home/amd/training/IP_Integrator/lab/KCU105/verilog/led_ctl/led_ctl.srcs/sources_1/imports/IP_Integrator

close_project

# META HARDEN 
open_project /home/amd/training/IP_Integrator/lab/KCU105/verilog/meta_harden/meta_harden.xpr

upgrade_project -migrate_output_products
ipx::open_ipxact_file /home/amd/training/IP_Integrator/lab/KCU105/verilog/meta_harden/meta_harden.srcs/sources_1/imports/IP_Integrator/component.xml

set_property supported_families {virtex7 Production qvirtex7 Production kintex7 Production kintex7l Production qkintex7 Production qkintex7l Production artix7 Production artix7l Production aartix7 Production qartix7 Production zynq Production qzynq Production azynq Production spartan7 Production virtexu Production virtexuplus Production kintexuplus Production zynquplus Production kintexu Production kintexu Production kintexuplus Production versal Production virtexuplus Production virtexuplusHBM Production zynquplus Production zynq Production} [ipx::current_core]

ipx::remove_file /home/xilinx/training/IP_Integrator/lab/KCU105/verilog/meta_harden/meta_harden.srcs/sources_1/imports/verilog/meta_harden.v [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]

ipx::remove_file /home/xilinx/training/IP_Integrator/lab/KCU105/verilog/meta_harden/meta_harden.srcs/sources_1/imports/verilog/meta_harden.v [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ../verilog/meta_harden.v [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]
set_property type verilogSource [ipx::get_files ../verilog/meta_harden.v -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
set_property library_name xil_defaultlib [ipx::get_files ../verilog/meta_harden.v -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
ipx::add_file ../verilog/meta_harden.v [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
set_property type verilogSource [ipx::get_files ../verilog/meta_harden.v -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
set_property library_name xil_defaultlib [ipx::get_files ../verilog/meta_harden.v -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]

ipx::save_core [ipx::current_core]
update_ip_catalog -rebuild -repo_path /home/amd/training/IP_Integrator/lab/KCU105/verilog/meta_harden/meta_harden.srcs/sources_1/imports/IP_Integrator

close_project

#Uart_baud_gen

open_project /home/amd/training/IP_Integrator/lab/KCU105/verilog/uart_baud_gen/uart_baud_gen.xpr

upgrade_project -migrate_output_products
ipx::open_ipxact_file /home/amd/training/IP_Integrator/lab/KCU105/verilog/uart_baud_gen/uart_baud_gen.srcs/sources_1/imports/IP_Integrator/component.xml

set_property supported_families {virtex7 Production qvirtex7 Production kintex7 Production kintex7l Production qkintex7 Production qkintex7l Production artix7 Production artix7l Production aartix7 Production qartix7 Production zynq Production qzynq Production azynq Production spartan7 Production virtexu Production virtexuplus Production kintexuplus Production zynquplus Production kintexu Production kintexu Production kintexuplus Production versal Production virtexuplus Production virtexuplusHBM Production zynquplus Production zynq Production} [ipx::current_core]

ipx::remove_file /home/xilinx/training/IP_Integrator/lab/KCU105/verilog/uart_baud_gen/uart_baud_gen.srcs/sources_1/imports/verilog/uart_baud_gen.v [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]

ipx::remove_file /home/xilinx/training/IP_Integrator/lab/KCU105/verilog/uart_baud_gen/uart_baud_gen.srcs/sources_1/imports/verilog/uart_baud_gen.v [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ../verilog/uart_baud_gen.v [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]
set_property type verilogSource [ipx::get_files ../verilog/uart_baud_gen.v -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
set_property library_name xil_defaultlib [ipx::get_files ../verilog/uart_baud_gen.v -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
ipx::add_file ../verilog/uart_baud_gen.v [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
set_property type verilogSource [ipx::get_files ../verilog/uart_baud_gen.v -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
set_property library_name xil_defaultlib [ipx::get_files ../verilog/uart_baud_gen.v -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]

ipx::save_core [ipx::current_core]
update_ip_catalog -rebuild -repo_path /home/amd/training/IP_Integrator/lab/KCU105/verilog/uart_baud_gen/uart_baud_gen.srcs/sources_1/imports/IP_Integrator

close_project

#UART_RX_CTL

open_project /home/amd/training/IP_Integrator/lab/KCU105/verilog/uart_rx_ctl/uart_rx_ctl.xpr

upgrade_project -migrate_output_products
ipx::open_ipxact_file /home/amd/training/IP_Integrator/lab/KCU105/verilog/uart_rx_ctl/uart_rx_ctl.srcs/sources_1/imports/IP_Integrator/component.xml

set_property supported_families {virtex7 Production qvirtex7 Production kintex7 Production kintex7l Production qkintex7 Production qkintex7l Production artix7 Production artix7l Production aartix7 Production qartix7 Production zynq Production qzynq Production azynq Production spartan7 Production virtexu Production virtexuplus Production kintexuplus Production zynquplus Production kintexu Production kintexu Production kintexuplus Production versal Production virtexuplus Production virtexuplusHBM Production zynquplus Production zynq Production} [ipx::current_core]

ipx::remove_file /home/xilinx/training/IP_Integrator/lab/KCU105/verilog/uart_rx_ctl/uart_rx_ctl.srcs/sources_1/imports/verilog/uart_rx_ctl.v [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]

ipx::remove_file /home/xilinx/training/IP_Integrator/lab/KCU105/verilog/uart_rx_ctl/uart_rx_ctl.srcs/sources_1/imports/verilog/uart_rx_ctl.v [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ../verilog/uart_rx_ctl.v [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]
set_property type verilogSource [ipx::get_files ../verilog/uart_rx_ctl.v -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
set_property library_name xil_defaultlib [ipx::get_files ../verilog/uart_rx_ctl.v -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
ipx::add_file ../verilog/uart_rx_ctl.v [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
set_property type verilogSource [ipx::get_files ../verilog/uart_rx_ctl.v -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
set_property library_name xil_defaultlib [ipx::get_files ../verilog/uart_rx_ctl.v -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]

ipx::save_core [ipx::current_core]
update_ip_catalog -rebuild -repo_path /home/amd/training/IP_Integrator/lab/KCU105/verilog/uart_rx_ctl/uart_rx_ctl.srcs/sources_1/imports/IP_Integrator

close_project
#VHDL

# LED CONTROL

open_project /home/amd/training/IP_Integrator/lab/KCU105/vhdl/led_ctl/led_ctl.xpr

upgrade_project -migrate_output_products
ipx::open_ipxact_file /home/amd/training/IP_Integrator/lab/KCU105/vhdl/led_ctl/led_ctl.srcs/sources_1/imports/IP_Integrator/component.xml

set_property supported_families {virtex7 Production qvirtex7 Production kintex7 Production kintex7l Production qkintex7 Production qkintex7l Production artix7 Production artix7l Production aartix7 Production qartix7 Production zynq Production qzynq Production azynq Production spartan7 Production virtexu Production virtexuplus Production kintexuplus Production zynquplus Production kintexu Production kintexu Production kintexuplus Production versal Production virtexuplus Production virtexuplusHBM Production zynquplus Production zynq Production} [ipx::current_core]

ipx::remove_file /home/xilinx/training/IP_Integrator/lab/KCU105/vhdl/led_ctl/led_ctl.srcs/sources_1/imports/vhdl/led_ctl.vhd [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]

ipx::remove_file /home/xilinx/training/IP_Integrator/lab/KCU105/vhdl/led_ctl/led_ctl.srcs/sources_1/imports/vhdl/led_ctl.vhd [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ../vhdl/led_ctl.vhd [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files ../vhdl/led_ctl.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
set_property library_name xil_defaultlib [ipx::get_files ../vhdl/led_ctl.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
ipx::add_file ../vhdl/led_ctl.vhd [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files ../vhdl/led_ctl.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
set_property library_name xil_defaultlib [ipx::get_files ../vhdl/led_ctl.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]

ipx::save_core [ipx::current_core]
update_ip_catalog -rebuild -repo_path /home/amd/training/IP_Integrator/lab/KCU105/vhdl/led_ctl/led_ctl.srcs/sources_1/imports/IP_Integrator

close_project


# META HARDEN 
open_project /home/amd/training/IP_Integrator/lab/KCU105/vhdl/meta_harden/meta_harden.xpr

upgrade_project -migrate_output_products
ipx::open_ipxact_file /home/amd/training/IP_Integrator/lab/KCU105/vhdl/meta_harden/meta_harden.srcs/sources_1/imports/IP_Integrator/component.xml

set_property supported_families {virtex7 Production qvirtex7 Production kintex7 Production kintex7l Production qkintex7 Production qkintex7l Production artix7 Production artix7l Production aartix7 Production qartix7 Production zynq Production qzynq Production azynq Production spartan7 Production virtexu Production virtexuplus Production kintexuplus Production zynquplus Production kintexu Production kintexu Production kintexuplus Production versal Production virtexuplus Production virtexuplusHBM Production zynquplus Production zynq Production} [ipx::current_core]

ipx::remove_file /home/xilinx/training/IP_Integrator/lab/KCU105/vhdl/meta_harden/meta_harden.srcs/sources_1/imports/vhdl/meta_harden.vhd [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]

ipx::remove_file /home/xilinx/training/IP_Integrator/lab/KCU105/vhdl/meta_harden/meta_harden.srcs/sources_1/imports/vhdl/meta_harden.vhd [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ../vhdl/meta_harden.vhd [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files ../vhdl/meta_harden.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
set_property library_name xil_defaultlib [ipx::get_files ../vhdl/meta_harden.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
ipx::add_file ../vhdl/meta_harden.vhd [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files ../vhdl/meta_harden.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
set_property library_name xil_defaultlib [ipx::get_files ../vhdl/meta_harden.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]

ipx::save_core [ipx::current_core]
update_ip_catalog -rebuild -repo_path /home/amd/training/IP_Integrator/lab/KCU105/vhdl/meta_harden/meta_harden.srcs/sources_1/imports/IP_Integrator

close_project

#Uart_baud_gen

open_project /home/amd/training/IP_Integrator/lab/KCU105/vhdl/uart_baud_gen/uart_baud_gen.xpr

upgrade_project -migrate_output_products
ipx::open_ipxact_file /home/amd/training/IP_Integrator/lab/KCU105/vhdl/uart_baud_gen/uart_baud_gen.srcs/sources_1/imports/IP_Integrator/component.xml

set_property supported_families {virtex7 Production qvirtex7 Production kintex7 Production kintex7l Production qkintex7 Production qkintex7l Production artix7 Production artix7l Production aartix7 Production qartix7 Production zynq Production qzynq Production azynq Production spartan7 Production virtexu Production virtexuplus Production kintexuplus Production zynquplus Production kintexu Production kintexu Production kintexuplus Production versal Production virtexuplus Production virtexuplusHBM Production zynquplus Production zynq Production} [ipx::current_core]

ipx::remove_file /home/xilinx/training/IP_Integrator/lab/KCU105/vhdl/uart_baud_gen/uart_baud_gen.srcs/sources_1/imports/vhdl/uart_baud_gen.vhd [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]

ipx::remove_file /home/xilinx/training/IP_Integrator/lab/KCU105/vhdl/uart_baud_gen/uart_baud_gen.srcs/sources_1/imports/vhdl/uart_baud_gen.vhd [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ../vhdl/uart_baud_gen.vhd [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files ../vhdl/uart_baud_gen.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
set_property library_name xil_defaultlib [ipx::get_files ../vhdl/uart_baud_gen.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
ipx::add_file ../vhdl/uart_baud_gen.vhd [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files ../vhdl/uart_baud_gen.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
set_property library_name xil_defaultlib [ipx::get_files ../vhdl/uart_baud_gen.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]

ipx::save_core [ipx::current_core]
update_ip_catalog -rebuild -repo_path /home/amd/training/IP_Integrator/lab/KCU105/vhdl/uart_baud_gen/uart_baud_gen.srcs/sources_1/imports/IP_Integrator

close_project

#UART_RX_CTL

open_project /home/amd/training/IP_Integrator/lab/KCU105/vhdl/uart_rx_ctl/uart_rx_ctl.xpr

upgrade_project -migrate_output_products
ipx::open_ipxact_file /home/amd/training/IP_Integrator/lab/KCU105/vhdl/uart_rx_ctl/uart_rx_ctl.srcs/sources_1/imports/IP_Integrator/component.xml

set_property supported_families {virtex7 Production qvirtex7 Production kintex7 Production kintex7l Production qkintex7 Production qkintex7l Production artix7 Production artix7l Production aartix7 Production qartix7 Production zynq Production qzynq Production azynq Production spartan7 Production virtexu Production virtexuplus Production kintexuplus Production zynquplus Production kintexu Production kintexu Production kintexuplus Production versal Production virtexuplus Production virtexuplusHBM Production zynquplus Production zynq Production} [ipx::current_core]

ipx::remove_file /home/xilinx/training/IP_Integrator/lab/KCU105/vhdl/uart_rx_ctl/uart_rx_ctl.srcs/sources_1/imports/vhdl/uart_rx_ctl.vhd [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]

ipx::remove_file /home/xilinx/training/IP_Integrator/lab/KCU105/vhdl/uart_rx_ctl/uart_rx_ctl.srcs/sources_1/imports/vhdl/uart_rx_ctl.vhd [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ../vhdl/uart_rx_ctl.vhd [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files ../vhdl/uart_rx_ctl.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
set_property library_name xil_defaultlib [ipx::get_files ../vhdl/uart_rx_ctl.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagesynthesis -of_objects [ipx::current_core]]]
ipx::add_file ../vhdl/uart_rx_ctl.vhd [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]
set_property type vhdlSource [ipx::get_files ../vhdl/uart_rx_ctl.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]
set_property library_name xil_defaultlib [ipx::get_files ../vhdl/uart_rx_ctl.vhd -of_objects [ipx::get_file_groups xilinx_anylanguagebehavioralsimulation -of_objects [ipx::current_core]]]

ipx::save_core [ipx::current_core]
update_ip_catalog -rebuild -repo_path /home/amd/training/IP_Integrator/lab/KCU105/vhdl/uart_rx_ctl/uart_rx_ctl.srcs/sources_1/imports/IP_Integrator

close_project

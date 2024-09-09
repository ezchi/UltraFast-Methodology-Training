set_property SRC_FILE_INFO {cfile:/home/amd/training/phys_opt/lab/KCU105/verilog/wave_gen.srcs/constrs_1/imports/wave_gen_timing_phys_opt.xdc rfile:../../../wave_gen.srcs/constrs_1/imports/wave_gen_timing_phys_opt.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:28 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path -hold -from [get_cells {cmd_parse_i0/send_resp_data_reg[*]}] -to [get_cells {resp_gen_i0/to_bcd_i0/bcd_out_reg[*]}] 1
set_property src_info {type:XDC file:1 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -datapath_only -from [get_clocks -of [get_nets clk_rx]] -to [get_clocks -of [get_nets clk_tx]] 5.000
set_property src_info {type:XDC file:1 line:58 export:INPUT save:INPUT read:READ} [current_design]
set_clock_uncertainty 0.620 -setup -from [get_clocks clk_samp ] -to [get_clocks clk_out2_clk_core]
set_property src_info {type:XDC file:1 line:59 export:INPUT save:INPUT read:READ} [current_design]
set_clock_uncertainty 0.620 -setup -from [get_clocks clk_out2_clk_core] -to [get_clocks clk_samp ]

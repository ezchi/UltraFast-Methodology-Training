set_property SRC_FILE_INFO {cfile:/home/amd/training/Reset/lab/KCU105/async_reset/async_reset.gen/sources_1/ip/mmcm_clocks/mmcm_clocks.xdc rfile:../../../async_reset.gen/sources_1/ip/mmcm_clocks/mmcm_clocks.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100


�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental /home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/utils_1/imports/synth_1/top.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2t
`/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/utils_1/imports/synth_1/top.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
�

�

1. Read QOR Suggestions Summary
-------------------------------

Read QOR Suggestions Summary
+---------------------------------------------+---------------+-------+
|              Suggestion Summary             | Incr Friendly | Total |
+---------------------------------------------+---------------+-------+
| Total Number of Enabled Suggestions         |             1 |     7 |
|   Automatic                                 |             1 |     6 |
|   Manual                                    |             0 |     1 |
|   APPLICABLE_FOR                            |               |       |
|    synth_design                             |             0 |     6 |
|    opt_design                               |             0 |     0 |
|     That overlap with synthesis suggestions |             0 |     0 |
|    place_design                             |             1 |     1 |
|    postplace_phys_opt_design                |             0 |     0 |
|    route_design                             |             0 |     0 |
|    postroute_phys_opt_design                |             0 |     0 |
|   ML Strategy                               |             0 |     0 |
| Total Number of Disabled Suggestions        |             0 |     0 |
+---------------------------------------------+---------------+-------+


*commonh px� 
�
+Successfully read QoR suggestions file: %s.452*	vivadotcl2z
f/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/utils_1/imports/impl_1/rqs_report.rqs2default:defaultZ4-1103h px� 
v
Command: %s
53*	vivadotcl2E
1synth_design -top top -part xqvu3p-ffrc1517-2LV-e2default:defaultZ4-113h px� 
~
5Applying enabled RQS suggestion for synth_design: %s
53*implflow2$
RQS_TIMING-7_2-12default:defaultZ47-768h px� 

5Applying enabled RQS suggestion for synth_design: %s
53*implflow2%
RQS_TIMING-44_2-12default:defaultZ47-768h px� 

5Applying enabled RQS suggestion for synth_design: %s
53*implflow2%
RQS_TIMING-33_2-12default:defaultZ47-768h px� 
~
5Applying enabled RQS suggestion for synth_design: %s
53*implflow2$
RQS_NETLIST-19-12default:defaultZ47-768h px� 
~
5Applying enabled RQS suggestion for synth_design: %s
53*implflow2$
RQS_NETLIST-10-12default:defaultZ47-768h px� 
�
1Reading unmanaged XDC file for RQS suggestions:%s453*	vivadotcl2>
*./.Xil/Vivado-54074-xilinx/RQSPreSynth.tcl2default:defaultZ4-1104h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xqvu3p2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xqvu3p2default:defaultZ17-349h px� 
\
Loading part %s157*device2)
xqvu3p-ffrc1517-2LV-e2default:defaultZ21-403h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
42default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
`
#Helper process launched with PID %s4824*oasys2
541932default:defaultZ8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 3177.160 ; gain = 293.828 ; free physical = 7431 ; free virtual = 12714
2default:defaulth px� 
�
synthesizing module '%s'638*oasys2
top2default:default2y
c/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/top.vhd2default:default2
492default:default8@Z8-638h px� 
h
%s
*synth2P
<	Parameter CLKIN_PERIOD bound to: 10.000000 - type: double 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2#
clocking_module2default:default2�
o/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/clocking_module.vhd2default:default2
82default:default2
	mmcm_inst2default:default2#
clocking_module2default:default2y
c/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/top.vhd2default:default2
1062default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2#
clocking_module2default:default2�
o/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/clocking_module.vhd2default:default2
272default:default8@Z8-638h px� 
h
%s
*synth2P
<	Parameter CLKIN_PERIOD bound to: 10.000000 - type: double 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2
clkin1_ibuf2default:default2
IBUF2default:default2�
o/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/clocking_module.vhd2default:default2
562default:default8@Z8-113h px� 
e
%s
*synth2M
9	Parameter BANDWIDTH bound to: OPTIMIZED - type: string 
2default:defaulth p
x
� 
j
%s
*synth2R
>	Parameter CLKFBOUT_MULT_F bound to: 9.000000 - type: double 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter CLKFBOUT_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter CLKFBOUT_USE_FINE_PS bound to: FALSE - type: string 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter CLKIN1_PERIOD bound to: 10.000000 - type: double 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter CLKIN2_PERIOD bound to: 0.000000 - type: double 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter CLKOUT0_DIVIDE_F bound to: 1.500000 - type: double 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter CLKOUT0_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter CLKOUT0_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter CLKOUT0_USE_FINE_PS bound to: FALSE - type: string 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter CLKOUT1_DIVIDE bound to: 3 - type: integer 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter CLKOUT1_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter CLKOUT1_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter CLKOUT1_USE_FINE_PS bound to: FALSE - type: string 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter CLKOUT2_DIVIDE bound to: 8 - type: integer 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter CLKOUT2_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter CLKOUT2_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter CLKOUT2_USE_FINE_PS bound to: FALSE - type: string 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter CLKOUT3_DIVIDE bound to: 3 - type: integer 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter CLKOUT3_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter CLKOUT3_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter CLKOUT3_USE_FINE_PS bound to: FALSE - type: string 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter CLKOUT4_CASCADE bound to: FALSE - type: string 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter CLKOUT4_DIVIDE bound to: 2 - type: integer 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter CLKOUT4_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter CLKOUT4_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter CLKOUT4_USE_FINE_PS bound to: FALSE - type: string 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter COMPENSATION bound to: AUTO - type: string 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter DIVCLK_DIVIDE bound to: 1 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter STARTUP_WAIT bound to: FALSE - type: string 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
MMCME4_ADV_inst2default:default2

MMCME4_ADV2default:default2�
o/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/clocking_module.vhd2default:default2
622default:default8@Z8-113h px� 
�
,binding component instance '%s' to cell '%s'113*oasys2
clkout1_buf2default:default2
BUFG2default:default2�
o/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/clocking_module.vhd2default:default2
1442default:default8@Z8-113h px� 
�
,binding component instance '%s' to cell '%s'113*oasys2
clkout2_buf2default:default2
BUFG2default:default2�
o/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/clocking_module.vhd2default:default2
1502default:default8@Z8-113h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2#
clocking_module2default:default2
02default:default2
12default:default2�
o/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/clocking_module.vhd2default:default2
272default:default8@Z8-256h px� 
b
%s
*synth2J
6	Parameter DATA_WIDTH bound to: 2000 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
reg_clka_to_clkb2default:default2�
p/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/reg_clka_to_clkb.vhd2default:default2
342default:default2*
clk300_to_clk600_ffs_i2default:default2$
reg_clka_to_clkb2default:default2y
c/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/top.vhd2default:default2
1232default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2$
reg_clka_to_clkb2default:default2�
p/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/reg_clka_to_clkb.vhd2default:default2
422default:default8@Z8-638h px� 
b
%s
*synth2J
6	Parameter DATA_WIDTH bound to: 2000 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
bit_expander2default:default2�
l/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/bit_expander.vhd2default:default2
342default:default2"
bit_expander_i2default:default2 
bit_expander2default:default2�
p/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/reg_clka_to_clkb.vhd2default:default2
662default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2 
bit_expander2default:default2�
l/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/bit_expander.vhd2default:default2
392default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
bit_expander2default:default2
02default:default2
12default:default2�
l/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/bit_expander.vhd2default:default2
392default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
bit_reducer2default:default2
k/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/bit_reducer.vhd2default:default2
342default:default2!
bit_reducer_i2default:default2
bit_reducer2default:default2�
p/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/reg_clka_to_clkb.vhd2default:default2
982default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
bit_reducer2default:default2�
k/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/bit_reducer.vhd2default:default2
402default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
bit_reducer2default:default2
02default:default2
12default:default2�
k/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/bit_reducer.vhd2default:default2
402default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2$
reg_clka_to_clkb2default:default2
02default:default2
12default:default2�
p/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/reg_clka_to_clkb.vhd2default:default2
422default:default8@Z8-256h px� 
b
%s
*synth2J
6	Parameter DATA_WIDTH bound to: 2000 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
reg_clka_to_clkb2default:default2�
p/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/reg_clka_to_clkb.vhd2default:default2
342default:default2*
clk600_to_clk300_ffs_i2default:default2$
reg_clka_to_clkb2default:default2y
c/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/top.vhd2default:default2
1342default:default8@Z8-3491h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
top2default:default2
02default:default2
12default:default2y
c/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/top.vhd2default:default2
492default:default8@Z8-256h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2%
data_in_300_i_reg2default:default2
62default:default2
32default:default2y
c/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/top.vhd2default:default2
1282default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2%
data_in_600_i_reg2default:default2
62default:default2
32default:default2y
c/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/top.vhd2default:default2
1392default:default8@Z8-3936h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
data_in_300[5]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
data_in_300[4]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
data_in_300[3]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
data_in_600[5]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
data_in_600[4]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
data_in_600[3]2default:default2
top2default:defaultZ8-7129h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 3264.129 ; gain = 380.797 ; free physical = 8510 ; free virtual = 13794
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 3281.941 ; gain = 398.609 ; free physical = 8510 ; free virtual = 13793
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 3281.941 ; gain = 398.609 ; free physical = 8510 ; free virtual = 13793
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.072default:default2
00:00:00.072default:default2
3287.8792default:default2
0.0002default:default2
85052default:default2
137882default:defaultZ17-722h px� 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
42default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2~
h/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/OriginalConstraints/new/constraints.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2~
h/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/OriginalConstraints/new/constraints.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2|
h/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/OriginalConstraints/new/constraints.xdc2default:default2)
.Xil/top_propImpl.xdc2default:defaultZ1-236h px� 
�
Sourcing Tcl File [%s]
1447*designutils2�
x/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.runs/synth_1_copy_1/.Xil/Vivado-54074-xilinx/RQSPreSynth.tcl2default:default8Z20-1688h px� 
�
+Setting property  %s for QOR suggestion %s.545*	vivadotcl2%
FAILED_TO_APPLY=02default:default2"
RQS_TIMING-7_22default:default2�
x/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.runs/synth_1_copy_1/.Xil/Vivado-54074-xilinx/RQSPreSynth.tcl2default:default2
182default:default8@Z4-1398h px� 
�
+Setting property  %s for QOR suggestion %s.545*	vivadotcl2
	APPLIED=12default:default2"
RQS_TIMING-7_22default:default2�
x/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.runs/synth_1_copy_1/.Xil/Vivado-54074-xilinx/RQSPreSynth.tcl2default:default2
182default:default8@Z4-1398h px� 
�
+Setting property  %s for QOR suggestion %s.545*	vivadotcl2%
FAILED_TO_APPLY=02default:default2#
RQS_TIMING-44_22default:default2�
x/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.runs/synth_1_copy_1/.Xil/Vivado-54074-xilinx/RQSPreSynth.tcl2default:default2
262default:default8@Z4-1398h px� 
�
+Setting property  %s for QOR suggestion %s.545*	vivadotcl2
	APPLIED=12default:default2#
RQS_TIMING-44_22default:default2�
x/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.runs/synth_1_copy_1/.Xil/Vivado-54074-xilinx/RQSPreSynth.tcl2default:default2
262default:default8@Z4-1398h px� 
�
+Setting property  %s for QOR suggestion %s.545*	vivadotcl2%
FAILED_TO_APPLY=02default:default2#
RQS_TIMING-33_22default:default2�
x/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.runs/synth_1_copy_1/.Xil/Vivado-54074-xilinx/RQSPreSynth.tcl2default:default2
342default:default8@Z4-1398h px� 
�
+Setting property  %s for QOR suggestion %s.545*	vivadotcl2
	APPLIED=12default:default2#
RQS_TIMING-33_22default:default2�
x/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.runs/synth_1_copy_1/.Xil/Vivado-54074-xilinx/RQSPreSynth.tcl2default:default2
342default:default8@Z4-1398h px� 
�
+Setting property  %s for QOR suggestion %s.545*	vivadotcl2%
FAILED_TO_APPLY=02default:default2"
RQS_NETLIST-192default:default2�
x/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.runs/synth_1_copy_1/.Xil/Vivado-54074-xilinx/RQSPreSynth.tcl2default:default2
422default:default8@Z4-1398h px� 
�
+Setting property  %s for QOR suggestion %s.545*	vivadotcl2
	APPLIED=12default:default2"
RQS_NETLIST-192default:default2�
x/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.runs/synth_1_copy_1/.Xil/Vivado-54074-xilinx/RQSPreSynth.tcl2default:default2
422default:default8@Z4-1398h px� 
�
+Setting property  %s for QOR suggestion %s.545*	vivadotcl2%
FAILED_TO_APPLY=02default:default2"
RQS_NETLIST-102default:default2�
x/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.runs/synth_1_copy_1/.Xil/Vivado-54074-xilinx/RQSPreSynth.tcl2default:default2
462default:default8@Z4-1398h px� 
�
+Setting property  %s for QOR suggestion %s.545*	vivadotcl2
	APPLIED=12default:default2"
RQS_NETLIST-102default:default2�
x/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.runs/synth_1_copy_1/.Xil/Vivado-54074-xilinx/RQSPreSynth.tcl2default:default2
462default:default8@Z4-1398h px� 
�
 Finished Sourcing Tcl File [%s]
1445*designutils2�
x/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.runs/synth_1_copy_1/.Xil/Vivado-54074-xilinx/RQSPreSynth.tcl2default:default8Z20-1686h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2�
x/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.runs/synth_1_copy_1/.Xil/Vivado-54074-xilinx/RQSPreSynth.tcl2default:default2)
.Xil/top_propImpl.xdc2default:defaultZ1-236h px� 
8
Deriving generated clocks
2*timingZ38-2h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.022default:default2
00:00:00.022default:default2
3434.6212default:default2
0.0002default:default2
84012default:default2
136842default:defaultZ17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2�
w  A total of 3 instances were transformed.
  BUFG => BUFGCE: 2 instances
  IBUF => IBUF (IBUFCTRL, INBUF): 1 instance 
2default:defaultZ1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common24
 Constraint Validation Runtime : 2default:default2
00:00:00.072default:default2
00:00:00.072default:default2
3434.6212default:default2
0.0002default:default2
84012default:default2
136842default:defaultZ17-722h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 3434.621 ; gain = 551.289 ; free physical = 8499 ; free virtual = 13783
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
P
%s
*synth28
$Loading part: xqvu3p-ffrc1517-2LV-e
2default:defaulth p
x
� 
B
 Reading net delay rules and data4578*oasysZ8-6742h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 3434.621 ; gain = 551.289 ; free physical = 8499 ; free virtual = 13783
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 3434.621 ; gain = 551.289 ; free physical = 8489 ; free virtual = 13773
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
I
%s
*synth21
Start Preparing Guide Design
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Doing Graph Differ : Time (s): cpu = 00:00:19 ; elapsed = 00:00:19 . Memory (MB): peak = 3434.621 ; gain = 551.289 ; free physical = 8457 ; free virtual = 13742
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2�
�top__GC0reg_clka_to_clkbreg_clka_to_clkb__xdcDup__1clocking_module__GC0---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Preparing Guide Design : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 3434.621 ; gain = 551.289 ; free physical = 8455 ; free virtual = 13741
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:20 ; elapsed = 00:00:20 . Memory (MB): peak = 3434.621 ; gain = 551.289 ; free physical = 8462 ; free virtual = 13747
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
P
%s
*synth28
$Start Mimic Skeleton from Reference
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Mimic Skeleton from Reference : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 3434.621 ; gain = 551.289 ; free physical = 8476 ; free virtual = 13761
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
U
%s
*synth2=
)

Incremental Synthesis Report Summary:

2default:defaulth p
x
� 
O
%s
*synth27
#1. Incremental synthesis run: yes

2default:defaulth p
x
� 
N
%s
*synth26
"   Stitch points used : changed


2default:defaulth p
x
� 
>
%s
*synth2&
2. Change Summary
2default:defaulth p
x
� 
J
%s
*synth22

Report Incremental Modules: 
2default:defaulth p
x
� 
d
%s
*synth2L
8+-+----------------+------------+----------+----------+
2default:defaulth p
x
� 
d
%s
*synth2L
8| |Changed Modules |Replication |Instances |Changed % |
2default:defaulth p
x
� 
d
%s
*synth2L
8+-+----------------+------------+----------+----------+
2default:defaulth p
x
� 
d
%s
*synth2L
8+-+----------------+------------+----------+----------+
2default:defaulth p
x
� 
.
%s
*synth2


2default:defaulth p
x
� 
Z
%s
*synth2B
.   Full Design Size (number of cells) : 16042
2default:defaulth p
x
� 
]
%s
*synth2E
1   Resynthesis Design Size (number of cells) : 1
2default:defaulth p
x
� 
W
%s
*synth2?
+   Resynth % : 0.0062,  Reuse % : 99.9938

2default:defaulth p
x
� 
Q
%s
*synth29
%3. Reference Checkpoint Information

2default:defaulth p
x
� 
�
%s
*synth2�
v+-------------------------------------------------------------------------------------------------------------------+
2default:defaulth p
x
� 
�
%s
*synth2�
v| DCP Location:  | /home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/utils_1/imports/synth_1/top.dcp |
2default:defaulth p
x
� 
�
%s
*synth2�
x+-------------------------------------------------------------------------------------------------------------------+


2default:defaulth p
x
� 
n
%s
*synth2V
B+--------------------------------+------------------------------+
2default:defaulth p
x
� 
n
%s
*synth2V
B|         DCP Information        |             Value            |
2default:defaulth p
x
� 
n
%s
*synth2V
B+--------------------------------+------------------------------+
2default:defaulth p
x
� 
l
%s
*synth2T
@| Vivado Version                 |                    v2022.1 |
2default:defaulth p
x
� 
n
%s
*synth2V
B| DCP State                      |                              |
2default:defaulth p
x
� 
n
%s
*synth2V
B+--------------------------------+------------------------------+
2default:defaulth p
x
� 
.
%s
*synth2


2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
r
%s
*synth2Z
F+------+------------------------------------+------------+----------+
2default:defaulth p
x
� 
r
%s
*synth2Z
F|      |RTL Partition                       |Replication |Instances |
2default:defaulth p
x
� 
r
%s
*synth2Z
F+------+------------------------------------+------------+----------+
2default:defaulth p
x
� 
r
%s
*synth2Z
F|1     |clocking_module__GC0_#REUSE#        |           1|         0|
2default:defaulth p
x
� 
r
%s
*synth2Z
F|2     |reg_clka_to_clkb__xdcDup__1_#REUSE# |           1|         0|
2default:defaulth p
x
� 
r
%s
*synth2Z
F|3     |reg_clka_to_clkb_#REUSE#            |           1|         0|
2default:defaulth p
x
� 
r
%s
*synth2Z
F|4     |top__GC0_#REUSE#                    |           1|         0|
2default:defaulth p
x
� 
r
%s
*synth2Z
F+------+------------------------------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2o
[Part Resources:
DSPs: 2280 (col length:120)
BRAMs: 1440 (col length: RAMB18 120 RAMB36 60)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
lIncrSyn: subsequent runs will still be incremental as the reference run was parallel and that data is reused4826*oasysZ8-7077h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
data_in_300[5]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
data_in_300[4]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
data_in_300[3]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
data_in_600[5]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
data_in_600[4]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2"
data_in_600[3]2default:default2
top2default:defaultZ8-7129h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:22 ; elapsed = 00:00:22 . Memory (MB): peak = 3434.621 ; gain = 551.289 ; free physical = 8471 ; free virtual = 13766
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Stitch Unchanged AreaOpt Partitions
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Stitch Unchanged AreaOpt Partitions : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 3434.621 ; gain = 551.289 ; free physical = 8469 ; free virtual = 13764
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:31 ; elapsed = 00:00:34 . Memory (MB): peak = 3592.426 ; gain = 709.094 ; free physical = 8036 ; free virtual = 13341
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:32 ; elapsed = 00:00:34 . Memory (MB): peak = 3592.426 ; gain = 709.094 ; free physical = 8041 ; free virtual = 13346
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
lIncrSyn: subsequent runs will still be incremental as the reference run was parallel and that data is reused4826*oasysZ8-7077h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:32 ; elapsed = 00:00:34 . Memory (MB): peak = 3611.457 ; gain = 728.125 ; free physical = 8041 ; free virtual = 13346
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
N
%s
*synth26
"Start Stitch Unchanged Partitions
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Stitch Unchanged Partitions : Time (s): cpu = 00:00:32 ; elapsed = 00:00:34 . Memory (MB): peak = 3611.457 ; gain = 728.125 ; free physical = 8038 ; free virtual = 13343
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2&
clk_150_i_inferred2default:default2
in02default:defaultZ8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2&
clk_400_i_inferred2default:default2
in02default:defaultZ8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2&
clk_500_i_inferred2default:default2
in02default:defaultZ8-3295h px� 
�
oClock pin %s has keep related attribute (keep/mark_debug/dont_touch) which could create extra logic on its net
3943*oasys2
CLK2default:default2y
c/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/top.vhd2default:default2
342default:default8@Z8-5396h px� 
�
oClock pin %s has keep related attribute (keep/mark_debug/dont_touch) which could create extra logic on its net
3943*oasys2
I12default:default2y
c/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/top.vhd2default:default2
342default:default8@Z8-5396h px� 
�
oClock pin %s has keep related attribute (keep/mark_debug/dont_touch) which could create extra logic on its net
3943*oasys2
I12default:default2y
c/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/top.vhd2default:default2
342default:default8@Z8-5396h px� 
�
oClock pin %s has keep related attribute (keep/mark_debug/dont_touch) which could create extra logic on its net
3943*oasys2
C2default:default2y
c/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/top.vhd2default:default2
1392default:default8@Z8-5396h px� 
�
oClock pin %s has keep related attribute (keep/mark_debug/dont_touch) which could create extra logic on its net
3943*oasys2
C2default:default2y
c/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/top.vhd2default:default2
1392default:default8@Z8-5396h px� 
�
oClock pin %s has keep related attribute (keep/mark_debug/dont_touch) which could create extra logic on its net
3943*oasys2
C2default:default2y
c/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/top.vhd2default:default2
1392default:default8@Z8-5396h px� 
�
oClock pin %s has keep related attribute (keep/mark_debug/dont_touch) which could create extra logic on its net
3943*oasys2
C2default:default2y
c/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/top.vhd2default:default2
1972default:default8@Z8-5396h px� 
�
oClock pin %s has keep related attribute (keep/mark_debug/dont_touch) which could create extra logic on its net
3943*oasys2
C2default:default2�
o/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/clocking_module.vhd2default:default2
1382default:default8@Z8-5396h px� 
�
oClock pin %s has keep related attribute (keep/mark_debug/dont_touch) which could create extra logic on its net
3943*oasys2
C2default:default2�
o/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/clocking_module.vhd2default:default2
1392default:default8@Z8-5396h px� 
�
oClock pin %s has keep related attribute (keep/mark_debug/dont_touch) which could create extra logic on its net
3943*oasys2
CLK2default:default2y
c/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/top.vhd2default:default2
342default:default8@Z8-5396h px� 
�
oClock pin %s has keep related attribute (keep/mark_debug/dont_touch) which could create extra logic on its net
3943*oasys2
C2default:default2y
c/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/top.vhd2default:default2
1282default:default8@Z8-5396h px� 
�
oClock pin %s has keep related attribute (keep/mark_debug/dont_touch) which could create extra logic on its net
3943*oasys2
C2default:default2y
c/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/top.vhd2default:default2
1282default:default8@Z8-5396h px� 
�
oClock pin %s has keep related attribute (keep/mark_debug/dont_touch) which could create extra logic on its net
3943*oasys2
C2default:default2y
c/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/top.vhd2default:default2
1282default:default8@Z8-5396h px� 
�
oClock pin %s has keep related attribute (keep/mark_debug/dont_touch) which could create extra logic on its net
3943*oasys2
C2default:default2y
c/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.srcs/sources_1/imports/original/top.vhd2default:default2
1882default:default8@Z8-5396h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:38 ; elapsed = 00:00:41 . Memory (MB): peak = 3627.348 ; gain = 744.016 ; free physical = 8016 ; free virtual = 13330
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:38 ; elapsed = 00:00:41 . Memory (MB): peak = 3627.348 ; gain = 744.016 ; free physical = 8016 ; free virtual = 13330
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:40 ; elapsed = 00:00:42 . Memory (MB): peak = 3627.348 ; gain = 744.016 ; free physical = 8012 ; free virtual = 13327
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:40 ; elapsed = 00:00:42 . Memory (MB): peak = 3627.348 ; gain = 744.016 ; free physical = 8012 ; free virtual = 13327
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:40 ; elapsed = 00:00:42 . Memory (MB): peak = 3627.348 ; gain = 744.016 ; free physical = 8010 ; free virtual = 13324
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:40 ; elapsed = 00:00:42 . Memory (MB): peak = 3627.348 ; gain = 744.016 ; free physical = 8010 ; free virtual = 13324
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
H
%s*synth20
+------+-----------+------+
2default:defaulth px� 
H
%s*synth20
|      |Cell       |Count |
2default:defaulth px� 
H
%s*synth20
+------+-----------+------+
2default:defaulth px� 
H
%s*synth20
|1     |BUFG       |     2|
2default:defaulth px� 
H
%s*synth20
|2     |LUT1       |     3|
2default:defaulth px� 
H
%s*synth20
|3     |LUT2       |     2|
2default:defaulth px� 
H
%s*synth20
|4     |LUT5       |     2|
2default:defaulth px� 
H
%s*synth20
|5     |LUT6       |   798|
2default:defaulth px� 
H
%s*synth20
|6     |MMCME4_ADV |     1|
2default:defaulth px� 
H
%s*synth20
|7     |SRL16E     |     1|
2default:defaulth px� 
H
%s*synth20
|8     |FDRE       | 10043|
2default:defaulth px� 
H
%s*synth20
|9     |IBUF       |     8|
2default:defaulth px� 
H
%s*synth20
|10    |OBUF       |    13|
2default:defaulth px� 
H
%s*synth20
+------+-----------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:40 ; elapsed = 00:00:42 . Memory (MB): peak = 3627.348 ; gain = 744.016 ; free physical = 8010 ; free virtual = 13324
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
U
%s
*synth2=
)
Report Applied BLOCK_SYNTH Properties: 
2default:defaulth p
x
� 
o
%s
*synth2W
C+--------+-----------------------+-------------------------------+
2default:defaulth p
x
� 
o
%s
*synth2W
C|Inst ID |Instance Name          |Applied BLOCK_SYNTH Properties |
2default:defaulth p
x
� 
o
%s
*synth2W
C+--------+-----------------------+-------------------------------+
2default:defaulth p
x
� 
o
%s
*synth2W
C|1       |clk300_to_clk600_ffs_i |"PRESERVE_BOUNDARY 1"          |
2default:defaulth p
x
� 
o
%s
*synth2W
C|2       |clk600_to_clk300_ffs_i |"PRESERVE_BOUNDARY 1"          |
2default:defaulth p
x
� 
o
%s
*synth2W
C+--------+-----------------------+-------------------------------+
2default:defaulth p
x
� 
e
%s
*synth2M
9
Report BLOCK_SYNTH Property Instance Level Cell Usage: 
2default:defaulth p
x
� 
6
%s
*synth2

+-+-----+
2default:defaulth p
x
� 
6
%s
*synth2

| |Cell |
2default:defaulth p
x
� 
6
%s
*synth2

+-+-----+
2default:defaulth p
x
� 
6
%s
*synth2

+-+-----+
2default:defaulth p
x
� 
�
%s
*synth2�
qNOTE: Inst IDs in this report represent instances and are taken from the Report Applied BLOCK_SYNTH Properties.

2default:defaulth p
x
� 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 27 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:34 ; elapsed = 00:00:36 . Memory (MB): peak = 3627.348 ; gain = 591.336 ; free physical = 8038 ; free virtual = 13353
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:40 ; elapsed = 00:00:43 . Memory (MB): peak = 3627.355 ; gain = 744.016 ; free physical = 8038 ; free virtual = 13353
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.072default:default2
00:00:00.072default:default2
3627.3552default:default2
0.0002default:default2
81292default:default2
134442default:defaultZ17-722h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
112default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
�
Sourcing Tcl File [%s]
1447*designutils2�
x/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.runs/synth_1_copy_1/.Xil/Vivado-54074-xilinx/RQSPreSynth.tcl2default:default8Z20-1688h px� 
�
+Setting property  %s for QOR suggestion %s.545*	vivadotcl2%
FAILED_TO_APPLY=02default:default2"
RQS_TIMING-7_22default:default2�
x/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.runs/synth_1_copy_1/.Xil/Vivado-54074-xilinx/RQSPreSynth.tcl2default:default2
182default:default8@Z4-1398h px� 
�
+Setting property  %s for QOR suggestion %s.545*	vivadotcl2
	APPLIED=12default:default2"
RQS_TIMING-7_22default:default2�
x/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.runs/synth_1_copy_1/.Xil/Vivado-54074-xilinx/RQSPreSynth.tcl2default:default2
182default:default8@Z4-1398h px� 
�
No cells matched '%s'.
180*	planAhead2B
.clk300_to_clk600_ffs_i/bit_reducer_i/tmp_r_reg2default:default2�
x/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.runs/synth_1_copy_1/.Xil/Vivado-54074-xilinx/RQSPreSynth.tcl2default:default2
262default:default8@Z12-180h px� 
�
No cells matched '%s'.
180*	planAhead2B
.clk300_to_clk600_ffs_i/expanded_sig3_reg[1932]2default:default2�
x/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.runs/synth_1_copy_1/.Xil/Vivado-54074-xilinx/RQSPreSynth.tcl2default:default2
342default:default8@Z12-180h px� 
�
No cells matched '%s'.
180*	planAhead24
 clk300_to_clk600_ffs_i/a1_2r_reg2default:default2�
x/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.runs/synth_1_copy_1/.Xil/Vivado-54074-xilinx/RQSPreSynth.tcl2default:default2
422default:default8@Z12-180h px� 
�
No cells matched '%s'.
180*	planAhead24
 clk600_to_clk300_ffs_i/a1_2r_reg2default:default2�
x/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.runs/synth_1_copy_1/.Xil/Vivado-54074-xilinx/RQSPreSynth.tcl2default:default2
422default:default8@Z12-180h px� 
�
No cells matched '%s'.
180*	planAhead2B
.clk300_to_clk600_ffs_i/expanded_sig3_reg[1932]2default:default2�
x/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.runs/synth_1_copy_1/.Xil/Vivado-54074-xilinx/RQSPreSynth.tcl2default:default2
462default:default8@Z12-180h px� 
�
No cells matched '%s'.
180*	planAhead2B
.clk300_to_clk600_ffs_i/bit_reducer_i/tmp_r_reg2default:default2�
x/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.runs/synth_1_copy_1/.Xil/Vivado-54074-xilinx/RQSPreSynth.tcl2default:default2
462default:default8@Z12-180h px� 
�
 Finished Sourcing Tcl File [%s]
1445*designutils2�
x/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.runs/synth_1_copy_1/.Xil/Vivado-54074-xilinx/RQSPreSynth.tcl2default:default8Z20-1686h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
rThe CLKFBOUT to CLKFBIN net for instance %s with COMPENSATION=INTERNAL is optimized away to aid design routability238*opt2J
mmcm_inst/MMCME4_ADV_inst	mmcm_inst/MMCME4_ADV_inst2default:default8Z31-326h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
3671.9412default:default2
0.0002default:default2
80702default:default2
133852default:defaultZ17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2�
x  A total of 10 instances were transformed.
  BUFG => BUFGCE: 2 instances
  IBUF => IBUF (IBUFCTRL, INBUF): 8 instances
2default:defaultZ1-111h px� 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
f2cb90382default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
612default:default2
412default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:00:502default:default2
00:00:492default:default2
3671.9412default:default2
796.6132default:default2
82812default:default2
135962default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2k
W/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.runs/synth_1_copy_1/top.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2p
\Executing : report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Jul  8 07:36:13 20222default:defaultZ17-206h px� 


End Record
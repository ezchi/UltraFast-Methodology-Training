
O
Command: %s
53*	vivadotcl2

opt_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xqvu3p2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xqvu3p2default:defaultZ17-349h px� 
n
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_design2default:defaultZ4-22h px� 
R

Starting %s Task
103*constraints2
DRC2default:defaultZ18-103h px� 
P
Running DRC with %s threads
24*drc2
62default:defaultZ23-27h px� 
U
DRC finished with %s
272*project2
0 Errors2default:defaultZ1-461h px� 
d
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 3023.609 ; gain = 75.773 ; free physical = 8800 ; free virtual = 140622default:defaulth px� 
g

Starting %s Task
103*constraints2,
Cache Timing Information2default:defaultZ18-103h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
8
Deriving generated clocks
2*timingZ38-2h px� 
O
:Ending Cache Timing Information Task | Checksum: f1b0fb9a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 3257.156 ; gain = 233.547 ; free physical = 8645 ; free virtual = 139072default:defaulth px� 
a

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103h px� 
i

Phase %s%s
101*constraints2
1 2default:default2
Retarget2default:defaultZ18-101h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
K
Retargeted %s cell(s).
49*opt2
02default:defaultZ31-49h px� 
<
'Phase 1 Retarget | Checksum: 152a5b6c5
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.31 ; elapsed = 00:00:00.16 . Memory (MB): peak = 3506.234 ; gain = 0.000 ; free physical = 8410 ; free virtual = 136722default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2
Retarget2default:default2
02default:default2
32default:defaultZ31-389h px� 
u

Phase %s%s
101*constraints2
2 2default:default2(
Constant propagation2default:defaultZ18-101h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
H
3Phase 2 Constant propagation | Checksum: 152a5b6c5
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.34 ; elapsed = 00:00:00.2 . Memory (MB): peak = 3506.234 ; gain = 0.000 ; free physical = 8410 ; free virtual = 136722default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2(
Constant propagation2default:default2
02default:default2
02default:defaultZ31-389h px� 
f

Phase %s%s
101*constraints2
3 2default:default2
Sweep2default:defaultZ18-101h px� 
8
#Phase 3 Sweep | Checksum: d9716dbd
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.41 ; elapsed = 00:00:00.26 . Memory (MB): peak = 3506.234 ; gain = 0.000 ; free physical = 8410 ; free virtual = 136722default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2
Sweep2default:default2
02default:default2
02default:defaultZ31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Sweep2default:default2
22default:defaultZ31-1021h px� 
r

Phase %s%s
101*constraints2
4 2default:default2%
BUFG optimization2default:defaultZ18-101h px� 
�
PPhase BUFG optimization inserted %s global clock buffer(s) for CLOCK_LOW_FANOUT.553*opt2
02default:defaultZ31-1077h px� 
D
/Phase 4 BUFG optimization | Checksum: d9716dbd
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.47 ; elapsed = 00:00:00.31 . Memory (MB): peak = 3538.250 ; gain = 32.016 ; free physical = 8409 ; free virtual = 136712default:defaulth px� 
�
EPhase %s created %s cells of which %s are BUFGs and removed %s cells.395*opt2%
BUFG optimization2default:default2
02default:default2
02default:default2
02default:defaultZ31-662h px� 
|

Phase %s%s
101*constraints2
5 2default:default2/
Shift Register Optimization2default:defaultZ18-101h px� 
�
dSRL Remap converted %s SRLs to %s registers and converted %s registers of register chains to %s SRLs546*opt2
02default:default2
02default:default2
02default:default2
02default:defaultZ31-1064h px� 
N
9Phase 5 Shift Register Optimization | Checksum: d9716dbd
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.48 ; elapsed = 00:00:00.32 . Memory (MB): peak = 3538.250 ; gain = 32.016 ; free physical = 8409 ; free virtual = 136712default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2/
Shift Register Optimization2default:default2
02default:default2
02default:defaultZ31-389h px� 
x

Phase %s%s
101*constraints2
6 2default:default2+
Post Processing Netlist2default:defaultZ18-101h px� 
J
5Phase 6 Post Processing Netlist | Checksum: d9716dbd
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.5 ; elapsed = 00:00:00.34 . Memory (MB): peak = 3538.250 ; gain = 32.016 ; free physical = 8409 ; free virtual = 136712default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2+
Post Processing Netlist2default:default2
02default:default2
02default:defaultZ31-389h px� 
/
Opt_design Change Summary
*commonh px� 
/
=========================
*commonh px� 


*commonh px� 


*commonh px� 
�
z-------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Phase                        |  #Cells created  |  #Cells Removed  |  #Constrained objects preventing optimizations  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Retarget                     |               0  |               3  |                                              0  |
|  Constant propagation         |               0  |               0  |                                              0  |
|  Sweep                        |               0  |               0  |                                              2  |
|  BUFG optimization            |               0  |               0  |                                              0  |
|  Shift Register Optimization  |               0  |               0  |                                              0  |
|  Post Processing Netlist      |               0  |               0  |                                              0  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
a

Starting %s Task
103*constraints2&
Connectivity Check2default:defaultZ18-103h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.01 . Memory (MB): peak = 3538.250 ; gain = 0.000 ; free physical = 8409 ; free virtual = 136712default:defaulth px� 
I
4Ending Logic Optimization Task | Checksum: ba73db01
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.5 ; elapsed = 00:00:00.35 . Memory (MB): peak = 3538.250 ; gain = 32.016 ; free physical = 8409 ; free virtual = 136712default:defaulth px� 
a

Starting %s Task
103*constraints2&
Power Optimization2default:defaultZ18-103h px� 
s
7Will skip clock gating for clocks with period < %s ns.
114*pwropt2
2.002default:defaultZ34-132h px� 
I
4Ending Power Optimization Task | Checksum: ba73db01
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.01 . Memory (MB): peak = 3538.250 ; gain = 0.000 ; free physical = 8409 ; free virtual = 136712default:defaulth px� 
\

Starting %s Task
103*constraints2!
Final Cleanup2default:defaultZ18-103h px� 
D
/Ending Final Cleanup Task | Checksum: ba73db01
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 3538.250 ; gain = 0.000 ; free physical = 8409 ; free virtual = 136712default:defaulth px� 
b

Starting %s Task
103*constraints2'
Netlist Obfuscation2default:defaultZ18-103h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
3538.2502default:default2
0.0002default:default2
84092default:default2
136712default:defaultZ17-722h px� 
J
5Ending Netlist Obfuscation Task | Checksum: ba73db01
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 3538.250 ; gain = 0.000 ; free physical = 8409 ; free virtual = 136712default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
362default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px� 
\
%s completed successfully
29*	vivadotcl2

opt_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2 
opt_design: 2default:default2
00:00:062default:default2
00:00:062default:default2
3538.2502default:default2
598.4182default:default2
84092default:default2
136712default:defaultZ17-722h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2

00:00:00.22default:default2
00:00:00.052default:default2
3586.2732default:default2
40.0202default:default2
83922default:default2
136572default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2n
Z/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.runs/impl_1_copy_1/top_opt.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2o
[Executing : report_drc -file top_drc_opted.rpt -pb top_drc_opted.pb -rpx top_drc_opted.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2b
Nreport_drc -file top_drc_opted.rpt -pb top_drc_opted.pb -rpx top_drc_opted.rpx2default:defaultZ4-113h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
~
"Loaded Vivado IP repository '%s'.
1332*coregen25
!/opt/Xilinx/Vivado/2022.1/data/ip2default:defaultZ19-2313h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
P
Running DRC with %s threads
24*drc2
62default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
586*	vivadotcl2�
`/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.runs/impl_1_copy_1/top_drc_opted.rpt`/home/xilinx/training/Report_QoR/lab/xqvu3p/vhdl/report_qor.runs/impl_1_copy_1/top_drc_opted.rpt2default:default8Z2-168h px� 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2 
report_drc: 2default:default2
00:00:282default:default2
00:00:272default:default2
4802.6912default:default2
1216.4182default:default2
75322default:default2
127952default:defaultZ17-722h px� 
�
ReportTimingParams:%s.
78*timing2L
8 -max_paths 100 -nworst 1 -delay_type max -sort_by group2default:defaultZ38-78hpx� 
�
ReportTimingParams:%s.
78*timing2L
8 -max_paths 100 -nworst 1 -delay_type min -sort_by group2default:defaultZ38-78hpx� 
�
UpdateTimingParams:%s.
91*timing2M
9 Speed grade: -2LV, Temperature grade: E, Delay Type: max2default:defaultZ38-91hpx� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
62default:defaultZ38-191hpx� 
�
ReportTimingParams:%s.
78*timing2M
9 -max_paths 1000 -nworst 1 -delay_type max -sort_by slack2default:defaultZ38-78hpx� 
�
ReportTimingParams:%s.
78*timing2�
q -to_pins clk300_to_clk600_ffs_i/expanded_sig2_reg[1068]/D -max_paths 10 -nworst 1 -delay_type max -sort_by slack2default:defaultZ38-78hpx� 
�
ReportTimingParams:%s.
78*timing2�
� -from_pins clk300_to_clk600_ffs_i/expanded_sig3_reg[1111]_fret_fret_fret/Q -max_paths 10 -nworst 1 -delay_type max -sort_by slack2default:defaultZ38-78hpx� 
�
ReportTimingParams:%s.
78*timing2�
q -to_pins clk300_to_clk600_ffs_i/expanded_sig2_reg[1284]/D -max_paths 10 -nworst 1 -delay_type max -sort_by slack2default:defaultZ38-78hpx� 
�
ReportTimingParams:%s.
78*timing2�
� -from_pins clk300_to_clk600_ffs_i/expanded_sig3_reg[1327]_fret_fret_fret/Q -max_paths 10 -nworst 1 -delay_type max -sort_by slack2default:defaultZ38-78hpx� 
�
ReportTimingParams:%s.
78*timing2�
q -to_pins clk300_to_clk600_ffs_i/expanded_sig2_reg[1500]/D -max_paths 10 -nworst 1 -delay_type max -sort_by slack2default:defaultZ38-78hpx� 
�
ReportTimingParams:%s.
78*timing2�
� -from_pins clk300_to_clk600_ffs_i/expanded_sig3_reg[1543]_fret_fret_fret/Q -max_paths 10 -nworst 1 -delay_type max -sort_by slack2default:defaultZ38-78hpx� 
�
ReportTimingParams:%s.
78*timing2�
q -to_pins clk300_to_clk600_ffs_i/expanded_sig2_reg[1716]/D -max_paths 10 -nworst 1 -delay_type max -sort_by slack2default:defaultZ38-78hpx� 
�
ReportTimingParams:%s.
78*timing2�
� -from_pins clk300_to_clk600_ffs_i/expanded_sig3_reg[1759]_fret_fret_fret/Q -max_paths 10 -nworst 1 -delay_type max -sort_by slack2default:defaultZ38-78hpx� 
�
ReportTimingParams:%s.
78*timing2�
q -to_pins clk300_to_clk600_ffs_i/expanded_sig2_reg[1932]/D -max_paths 10 -nworst 1 -delay_type max -sort_by slack2default:defaultZ38-78hpx� 
�
ReportTimingParams:%s.
78*timing2�
� -from_pins clk300_to_clk600_ffs_i/expanded_sig3_reg[1975]_fret_fret_fret/Q -max_paths 10 -nworst 1 -delay_type max -sort_by slack2default:defaultZ38-78hpx� 
�
ReportTimingParams:%s.
78*timing2�
p -to_pins clk300_to_clk600_ffs_i/expanded_sig2_reg[204]/D -max_paths 10 -nworst 1 -delay_type max -sort_by slack2default:defaultZ38-78hpx� 
�
ReportTimingParams:%s.
78*timing2�
� -from_pins clk300_to_clk600_ffs_i/expanded_sig3_reg[247]_fret_fret_fret/Q -max_paths 10 -nworst 1 -delay_type max -sort_by slack2default:defaultZ38-78hpx� 
�
ReportTimingParams:%s.
78*timing2�
p -to_pins clk300_to_clk600_ffs_i/expanded_sig2_reg[420]/D -max_paths 10 -nworst 1 -delay_type max -sort_by slack2default:defaultZ38-78hpx� 
�
ReportTimingParams:%s.
78*timing2�
� -from_pins clk300_to_clk600_ffs_i/expanded_sig3_reg[463]_fret_fret_fret/Q -max_paths 10 -nworst 1 -delay_type max -sort_by slack2default:defaultZ38-78hpx� 
�
ReportTimingParams:%s.
78*timing2�
p -to_pins clk300_to_clk600_ffs_i/expanded_sig2_reg[636]/D -max_paths 10 -nworst 1 -delay_type max -sort_by slack2default:defaultZ38-78hpx� 
�
ReportTimingParams:%s.
78*timing2�
� -from_pins clk300_to_clk600_ffs_i/expanded_sig3_reg[679]_fret_fret_fret/Q -max_paths 10 -nworst 1 -delay_type max -sort_by slack2default:defaultZ38-78hpx� 
�
ReportTimingParams:%s.
78*timing2�
p -to_pins clk300_to_clk600_ffs_i/expanded_sig2_reg[852]/D -max_paths 10 -nworst 1 -delay_type max -sort_by slack2default:defaultZ38-78hpx� 
�
ReportTimingParams:%s.
78*timing2�
� -from_pins clk300_to_clk600_ffs_i/expanded_sig3_reg[895]_fret_fret_fret/Q -max_paths 10 -nworst 1 -delay_type max -sort_by slack2default:defaultZ38-78hpx� 
�
ReportTimingParams:%s.
78*timing2�
q -to_pins clk300_to_clk600_ffs_i/expanded_sig2_reg[1992]/D -max_paths 10 -nworst 1 -delay_type max -sort_by slack2default:defaultZ38-78hpx� 
�
ReportTimingParams:%s.
78*timing2�
� -from_pins clk300_to_clk600_ffs_i/expanded_sig3_reg[1999]_fret_fret_fret/Q -max_paths 10 -nworst 1 -delay_type max -sort_by slack2default:defaultZ38-78hpx� 
�
ReportTimingParams:%s.
78*timing2�
� -to_pins clk300_to_clk600_ffs_i/bit_reducer_i/tmp_r_reg_bret__3_bret__4/D -max_paths 10 -nworst 1 -delay_type max -sort_by slack2default:defaultZ38-78hpx� 
�
ReportTimingParams:%s.
78*timing2�
x -from_pins clk300_to_clk600_ffs_i/bit_reducer_i/data_out_i_reg/Q -max_paths 10 -nworst 1 -delay_type max -sort_by slack2default:defaultZ38-78hpx� 
f
%s1*runtcl 72H
4RQA Score (opt_design): 4  (RQA score tolerance: 1)
2default:defaulth px� 
s
%s1*runtcl 92U
AFlow continues - RQA score threshold met after 'opt_design' step
2default:defaulth px� 


End Record
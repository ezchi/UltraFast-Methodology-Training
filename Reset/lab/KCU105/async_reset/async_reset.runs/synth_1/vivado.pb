
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2$
create_project: 2default:default2
00:00:102default:default2
00:00:102default:default2
1698.0312default:default2
86.9922default:default2
148972default:default2
196522default:defaultZ17-722h px� 
�
Command: %s
53*	vivadotcl2R
>synth_design -top reset_example_top -part xcku040-ffva1156-2-e2default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xcku0402default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xcku0402default:defaultZ17-349h px� 
[
Loading part %s157*device2(
xcku040-ffva1156-2-e2default:defaultZ21-403h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
42default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
a
#Helper process launched with PID %s4824*oasys2
1508622default:defaultZ8-7075h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2Z
D/opt/amd/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 2699.289 ; gain = 375.770 ; free physical = 13822 ; free virtual = 18579
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2041.956; parent = 1854.017; children = 187.939
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3694.355; parent = 2699.293; children = 995.062
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2%
reset_example_top2default:default2
 2default:default2�
x/home/amd/training/Reset/lab/KCU105/async_reset/async_reset.srcs/sources_1/imports/async_reset/reset_example_top_async.v2default:default2
682default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
piso2default:default2
 2default:default2w
a/home/amd/training/Reset/lab/KCU105/async_reset/async_reset.srcs/sources_1/imports/support/piso.v2default:default2
22default:default8@Z8-6157h px� 
[
%s
*synth2C
/	Parameter WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
piso2default:default2
 2default:default2
02default:default2
12default:default2w
a/home/amd/training/Reset/lab/KCU105/async_reset/async_reset.srcs/sources_1/imports/support/piso.v2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
mmcm_clocks2default:default2
 2default:default2�
{/home/amd/training/Reset/lab/KCU105/async_reset/async_reset.runs/synth_1/.Xil/Vivado-150787-amd/realtime/mmcm_clocks_stub.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mmcm_clocks2default:default2
 2default:default2
02default:default2
12default:default2�
{/home/amd/training/Reset/lab/KCU105/async_reset/async_reset.runs/synth_1/.Xil/Vivado-150787-amd/realtime/mmcm_clocks_stub.v2default:default2
52default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
reset_example_top2default:default2
 2default:default2
02default:default2
12default:default2�
x/home/amd/training/Reset/lab/KCU105/async_reset/async_reset.srcs/sources_1/imports/async_reset/reset_example_top_async.v2default:default2
682default:default8@Z8-6155h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 2773.258 ; gain = 449.738 ; free physical = 13899 ; free virtual = 18657
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2041.956; parent = 1854.017; children = 187.939
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3768.324; parent = 2773.262; children = 995.062
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 2791.070 ; gain = 467.551 ; free physical = 13901 ; free virtual = 18657
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2041.956; parent = 1854.017; children = 187.939
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3786.137; parent = 2791.074; children = 995.062
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 2791.070 ; gain = 467.551 ; free physical = 13901 ; free virtual = 18657
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2041.956; parent = 1854.017; children = 187.939
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3786.137; parent = 2791.074; children = 995.062
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
00:00:00.192default:default2

00:00:00.22default:default2
2791.0702default:default2
0.0002default:default2
138992default:default2
186552default:defaultZ17-722h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
/home/amd/training/Reset/lab/KCU105/async_reset/async_reset.gen/sources_1/ip/mmcm_clocks/mmcm_clocks/mmcm_clocks_in_context.xdc2default:default2&
mmcm_clocks_inst	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
/home/amd/training/Reset/lab/KCU105/async_reset/async_reset.gen/sources_1/ip/mmcm_clocks/mmcm_clocks/mmcm_clocks_in_context.xdc2default:default2&
mmcm_clocks_inst	2default:default8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2�
l/home/amd/training/Reset/lab/KCU105/async_reset/async_reset.srcs/sources_1/imports/support/reset_example.xdc2default:default8Z20-179h px� 
�
nA clock with name '%s' already exists, creating a clock with the same name will overwrite the previous clock.
576*constraints2
SysClk2default:default2�
l/home/amd/training/Reset/lab/KCU105/async_reset/async_reset.srcs/sources_1/imports/support/reset_example.xdc2default:default2
12default:default8@Z18-619h px�
�
Finished Parsing XDC File [%s]
178*designutils2�
l/home/amd/training/Reset/lab/KCU105/async_reset/async_reset.srcs/sources_1/imports/support/reset_example.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2�
l/home/amd/training/Reset/lab/KCU105/async_reset/async_reset.srcs/sources_1/imports/support/reset_example.xdc2default:default27
#.Xil/reset_example_top_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2951.7892default:default2
0.0002default:default2
138382default:default2
185942default:defaultZ17-722h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common24
 Constraint Validation Runtime : 2default:default2
00:00:00.052default:default2
00:00:00.042default:default2
2951.7892default:default2
0.0002default:default2
138382default:default2
185942default:defaultZ17-722h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2Z
D/opt/amd/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:20 ; elapsed = 00:00:20 . Memory (MB): peak = 2951.789 ; gain = 628.270 ; free physical = 13882 ; free virtual = 18638
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2041.956; parent = 1854.017; children = 187.939
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3914.840; parent = 2919.777; children = 995.062
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
O
%s
*synth27
#Loading part: xcku040-ffva1156-2-e
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:20 ; elapsed = 00:00:20 . Memory (MB): peak = 2951.789 ; gain = 628.270 ; free physical = 13882 ; free virtual = 18638
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2041.956; parent = 1854.017; children = 187.939
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3914.840; parent = 2919.777; children = 995.062
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:20 ; elapsed = 00:00:20 . Memory (MB): peak = 2951.789 ; gain = 628.270 ; free physical = 13882 ; free virtual = 18638
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2041.956; parent = 1854.017; children = 187.939
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3914.840; parent = 2919.777; children = 995.062
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
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:21 ; elapsed = 00:00:21 . Memory (MB): peak = 2951.789 ; gain = 628.270 ; free physical = 13883 ; free virtual = 18640
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2041.956; parent = 1854.017; children = 187.939
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3914.840; parent = 2919.777; children = 995.062
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
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               64 Bit    Registers := 65    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 65    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   64 Bit        Muxes := 64    
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
DSPs: 1920 (col length:120)
BRAMs: 1200 (col length: RAMB18 120 RAMB36 60)
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
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 2951.789 ; gain = 628.270 ; free physical = 13845 ; free virtual = 18609
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2041.956; parent = 1854.017; children = 187.939
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3914.840; parent = 2919.777; children = 995.062
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
Q
redefining clock '%s'565*oasys2
SysClk2default:defaultZ8-565h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:35 ; elapsed = 00:00:36 . Memory (MB): peak = 2951.789 ; gain = 628.270 ; free physical = 13624 ; free virtual = 18389
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2256.456; parent = 2068.965; children = 187.939
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3925.441; parent = 2930.379; children = 995.062
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
�Finished Timing Optimization : Time (s): cpu = 00:00:39 ; elapsed = 00:00:40 . Memory (MB): peak = 2952.391 ; gain = 628.871 ; free physical = 13606 ; free virtual = 18370
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2282.480; parent = 2094.988; children = 187.939
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3947.457; parent = 2952.395; children = 995.062
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
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:43 ; elapsed = 00:00:45 . Memory (MB): peak = 2969.414 ; gain = 645.895 ; free physical = 13602 ; free virtual = 18367
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2283.773; parent = 2096.281; children = 187.939
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3964.480; parent = 2969.418; children = 995.062
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
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:51 ; elapsed = 00:00:53 . Memory (MB): peak = 2975.352 ; gain = 651.832 ; free physical = 13596 ; free virtual = 18360
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2284.914; parent = 2097.426; children = 187.939
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3970.418; parent = 2975.355; children = 995.062
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:51 ; elapsed = 00:00:53 . Memory (MB): peak = 2975.352 ; gain = 651.832 ; free physical = 13597 ; free virtual = 18361
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2284.914; parent = 2097.426; children = 187.939
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3970.418; parent = 2975.355; children = 995.062
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:52 ; elapsed = 00:00:54 . Memory (MB): peak = 2975.352 ; gain = 651.832 ; free physical = 13572 ; free virtual = 18342
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2286.002; parent = 2098.515; children = 187.939
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3970.418; parent = 2975.355; children = 995.062
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:52 ; elapsed = 00:00:54 . Memory (MB): peak = 2975.352 ; gain = 651.832 ; free physical = 13572 ; free virtual = 18342
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2286.002; parent = 2098.515; children = 187.939
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3970.418; parent = 2975.355; children = 995.062
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:53 ; elapsed = 00:00:54 . Memory (MB): peak = 2975.352 ; gain = 651.832 ; free physical = 13571 ; free virtual = 18342
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2286.838; parent = 2099.351; children = 187.939
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3970.418; parent = 2975.355; children = 995.062
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:53 ; elapsed = 00:00:54 . Memory (MB): peak = 2975.352 ; gain = 651.832 ; free physical = 13571 ; free virtual = 18342
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2286.854; parent = 2099.366; children = 187.939
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3970.418; parent = 2975.355; children = 995.062
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
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|1     |mmcm_clocks   |         1|
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
I
%s*synth21
+------+------------+------+
2default:defaulth px� 
I
%s*synth21
|      |Cell        |Count |
2default:defaulth px� 
I
%s*synth21
+------+------------+------+
2default:defaulth px� 
I
%s*synth21
|1     |mmcm_clocks |     1|
2default:defaulth px� 
I
%s*synth21
|2     |CARRY8      |   512|
2default:defaulth px� 
I
%s*synth21
|3     |LUT1        |   130|
2default:defaulth px� 
I
%s*synth21
|4     |LUT3        |  4032|
2default:defaulth px� 
I
%s*synth21
|5     |FDCE        |  4160|
2default:defaulth px� 
I
%s*synth21
|6     |FDRE        |  4097|
2default:defaulth px� 
I
%s*synth21
|7     |FDSE        |    64|
2default:defaulth px� 
I
%s*synth21
|8     |IBUF        |    66|
2default:defaulth px� 
I
%s*synth21
|9     |OBUF        |    65|
2default:defaulth px� 
I
%s*synth21
+------+------------+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:53 ; elapsed = 00:00:54 . Memory (MB): peak = 2975.352 ; gain = 651.832 ; free physical = 13571 ; free virtual = 18342
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2286.885; parent = 2099.397; children = 187.939
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3970.418; parent = 2975.355; children = 995.062
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 2 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:50 ; elapsed = 00:00:52 . Memory (MB): peak = 2975.352 ; gain = 491.113 ; free physical = 13596 ; free virtual = 18367
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:53 ; elapsed = 00:00:55 . Memory (MB): peak = 2975.359 ; gain = 651.832 ; free physical = 13596 ; free virtual = 18367
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
00:00:00.292default:default2
00:00:00.292default:default2
2984.2582default:default2
0.0002default:default2
136952default:default2
184662default:defaultZ17-722h px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
5782default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:002default:default2
3028.0822default:default2
0.0002default:default2
136562default:default2
184272default:defaultZ17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2o
[  A total of 66 instances were transformed.
  IBUF => IBUF (IBUFCTRL, INBUF): 66 instances
2default:defaultZ1-111h px� 
f
$Synth Design complete, checksum: %s
562*	vivadotcl2
74527922default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
242default:default2
32default:default2
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
00:01:072default:default2
00:01:062default:default2
3028.0822default:default2
1261.3632default:default2
138762default:default2
186472default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2r
^/home/amd/training/Reset/lab/KCU105/async_reset/async_reset.runs/synth_1/reset_example_top.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
xExecuting : report_utilization -file reset_example_top_utilization_synth.rpt -pb reset_example_top_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sun Nov 27 10:37:11 20222default:defaultZ17-206h px� 


End Record
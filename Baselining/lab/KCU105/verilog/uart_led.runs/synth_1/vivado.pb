
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2$
create_project: 2default:default2
00:00:052default:default2
00:00:052default:default2
1697.9412default:default2
13.0232default:default2
114092default:default2
152062default:defaultZ17-722h px� 
z
Command: %s
53*	vivadotcl2I
5synth_design -top uart_led -part xcku040-ffva1156-2-e2default:defaultZ4-113h px� 
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
_
#Helper process launched with PID %s4824*oasys2
24842default:defaultZ8-7075h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2Z
D/opt/amd/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 2689.934 ; gain = 375.770 ; free physical = 10294 ; free virtual = 14152
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2104.651; parent = 1892.120; children = 212.531
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3684.996; parent = 2689.938; children = 995.059
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2
uart_led2default:default2
 2default:default2q
[/home/amd/training/Baselining/lab/KCU105/verilog/uart_led.srcs/sources_1/imports/uart_led.v2default:default2
272default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
IBUFGDS2default:default2
 2default:default2J
4/opt/amd/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
718342default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IBUFGDS2default:default2
 2default:default2
02default:default2
12default:default2J
4/opt/amd/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
718342default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
IBUF2default:default2
 2default:default2J
4/opt/amd/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
713262default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IBUF2default:default2
 2default:default2
02default:default2
12default:default2J
4/opt/amd/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
713262default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
BUFG2default:default2
 2default:default2J
4/opt/amd/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
10822default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BUFG2default:default2
 2default:default2
02default:default2
12default:default2J
4/opt/amd/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
10822default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
meta_harden2default:default2
 2default:default2t
^/home/amd/training/Baselining/lab/KCU105/verilog/uart_led.srcs/sources_1/imports/meta_harden.v2default:default2
272default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
meta_harden2default:default2
 2default:default2
02default:default2
12default:default2t
^/home/amd/training/Baselining/lab/KCU105/verilog/uart_led.srcs/sources_1/imports/meta_harden.v2default:default2
272default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
uart_rx2default:default2
 2default:default2p
Z/home/amd/training/Baselining/lab/KCU105/verilog/uart_led.srcs/sources_1/imports/uart_rx.v2default:default2
372default:default8@Z8-6157h px� 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter CLOCK_RATE bound to: 125000000 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2!
uart_baud_gen2default:default2
 2default:default2v
`/home/amd/training/Baselining/lab/KCU105/verilog/uart_led.srcs/sources_1/imports/uart_baud_gen.v2default:default2
352default:default8@Z8-6157h px� 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter CLOCK_RATE bound to: 125000000 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
uart_baud_gen2default:default2
 2default:default2
02default:default2
12default:default2v
`/home/amd/training/Baselining/lab/KCU105/verilog/uart_led.srcs/sources_1/imports/uart_baud_gen.v2default:default2
352default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
uart_rx_ctl2default:default2
 2default:default2t
^/home/amd/training/Baselining/lab/KCU105/verilog/uart_led.srcs/sources_1/imports/uart_rx_ctl.v2default:default2
522default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_rx_ctl2default:default2
 2default:default2
02default:default2
12default:default2t
^/home/amd/training/Baselining/lab/KCU105/verilog/uart_led.srcs/sources_1/imports/uart_rx_ctl.v2default:default2
522default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_rx2default:default2
 2default:default2
02default:default2
12default:default2p
Z/home/amd/training/Baselining/lab/KCU105/verilog/uart_led.srcs/sources_1/imports/uart_rx.v2default:default2
372default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
led_ctl2default:default2
 2default:default2p
Z/home/amd/training/Baselining/lab/KCU105/verilog/uart_led.srcs/sources_1/imports/led_ctl.v2default:default2
272default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
led_ctl2default:default2
 2default:default2
02default:default2
12default:default2p
Z/home/amd/training/Baselining/lab/KCU105/verilog/uart_led.srcs/sources_1/imports/led_ctl.v2default:default2
272default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
OBUF2default:default2
 2default:default2J
4/opt/amd/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
906622default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
OBUF2default:default2
 2default:default2
02default:default2
12default:default2J
4/opt/amd/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
906622default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_led2default:default2
 2default:default2
02default:default2
12default:default2q
[/home/amd/training/Baselining/lab/KCU105/verilog/uart_led.srcs/sources_1/imports/uart_led.v2default:default2
272default:default8@Z8-6155h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 2756.902 ; gain = 442.738 ; free physical = 10385 ; free virtual = 14245
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2104.651; parent = 1892.120; children = 212.531
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3751.965; parent = 2756.906; children = 995.059
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 2774.715 ; gain = 460.551 ; free physical = 10385 ; free virtual = 14245
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2104.651; parent = 1892.120; children = 212.531
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3769.777; parent = 2774.719; children = 995.059
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 2774.715 ; gain = 460.551 ; free physical = 10385 ; free virtual = 14245
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2104.651; parent = 1892.120; children = 212.531
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3769.777; parent = 2774.719; children = 995.059
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
00:00:002default:default2
00:00:002default:default2
2780.6522default:default2
0.0002default:default2
103662default:default2
142272default:defaultZ17-722h px� 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
52default:defaultZ29-17h px� 
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
h/home/amd/training/Baselining/lab/KCU105/verilog/uart_led.srcs/constrs_1/imports/uart_led_Baselining.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2~
h/home/amd/training/Baselining/lab/KCU105/verilog/uart_led.srcs/constrs_1/imports/uart_led_Baselining.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2|
h/home/amd/training/Baselining/lab/KCU105/verilog/uart_led.srcs/constrs_1/imports/uart_led_Baselining.xdc2default:default2.
.Xil/uart_led_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2904.4182default:default2
0.0002default:default2
103172default:default2
141872default:defaultZ17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 5 instances were transformed.
  BUFG => BUFGCE: 1 instance 
  IBUF => IBUF (IBUFCTRL, INBUF): 3 instances
  IBUFGDS => IBUFDS (DIFFINBUF, IBUFCTRL): 1 instance 
2default:defaultZ1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2
00:00:002default:default2
2904.4182default:default2
0.0002default:default2
103172default:default2
141872default:defaultZ17-722h px� 
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
�Finished Constraint Validation : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 2904.418 ; gain = 590.254 ; free physical = 10347 ; free virtual = 14218
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2104.651; parent = 1892.120; children = 212.531
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3899.480; parent = 2904.422; children = 995.059
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 2904.418 ; gain = 590.254 ; free physical = 10347 ; free virtual = 14218
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2104.651; parent = 1892.120; children = 212.531
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3899.480; parent = 2904.422; children = 995.059
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 2904.418 ; gain = 590.254 ; free physical = 10347 ; free virtual = 14218
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2104.651; parent = 1892.120; children = 212.531
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3899.480; parent = 2904.422; children = 995.059
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
uart_rx_ctl2default:defaultZ8-802h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE1 |                               00 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_                  iSTATE |                               01 |                               01
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE0 |                               10 |                               10
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE2 |                               11 |                               11
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2
uart_rx_ctl2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:12 ; elapsed = 00:00:14 . Memory (MB): peak = 2904.418 ; gain = 590.254 ; free physical = 10341 ; free virtual = 14213
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2104.651; parent = 1892.120; children = 212.531
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3899.480; parent = 2904.422; children = 995.059
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
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    7 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 1     
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
.	                8 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 10    
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
,	   2 Input    8 Bit        Muxes := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 5     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 1     
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
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:15 . Memory (MB): peak = 2904.418 ; gain = 590.254 ; free physical = 10312 ; free virtual = 14189
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2104.651; parent = 1892.120; children = 212.531
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3899.480; parent = 2904.422; children = 995.059
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:19 ; elapsed = 00:00:22 . Memory (MB): peak = 2915.020 ; gain = 600.855 ; free physical = 10063 ; free virtual = 13968
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2307.466; parent = 2096.417; children = 212.531
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3910.082; parent = 2915.023; children = 995.059
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
�Finished Timing Optimization : Time (s): cpu = 00:00:19 ; elapsed = 00:00:22 . Memory (MB): peak = 2915.020 ; gain = 600.855 ; free physical = 10063 ; free virtual = 13968
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2307.597; parent = 2096.560; children = 212.531
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3910.082; parent = 2915.023; children = 995.059
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
�Finished Technology Mapping : Time (s): cpu = 00:00:19 ; elapsed = 00:00:22 . Memory (MB): peak = 2915.020 ; gain = 600.855 ; free physical = 10047 ; free virtual = 13952
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2308.247; parent = 2097.210; children = 212.531
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3910.082; parent = 2915.023; children = 995.059
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
�Finished IO Insertion : Time (s): cpu = 00:00:24 ; elapsed = 00:00:27 . Memory (MB): peak = 2915.020 ; gain = 600.855 ; free physical = 9823 ; free virtual = 13728
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2308.247; parent = 2097.210; children = 212.531
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3910.082; parent = 2915.023; children = 995.059
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:24 ; elapsed = 00:00:27 . Memory (MB): peak = 2915.020 ; gain = 600.855 ; free physical = 9823 ; free virtual = 13728
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2308.247; parent = 2097.210; children = 212.531
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3910.082; parent = 2915.023; children = 995.059
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:24 ; elapsed = 00:00:27 . Memory (MB): peak = 2915.020 ; gain = 600.855 ; free physical = 9853 ; free virtual = 13758
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2308.247; parent = 2097.210; children = 212.531
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3910.082; parent = 2915.023; children = 995.059
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:24 ; elapsed = 00:00:27 . Memory (MB): peak = 2915.020 ; gain = 600.855 ; free physical = 9828 ; free virtual = 13732
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2308.247; parent = 2097.210; children = 212.531
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3910.082; parent = 2915.023; children = 995.059
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:24 ; elapsed = 00:00:27 . Memory (MB): peak = 2915.020 ; gain = 600.855 ; free physical = 9826 ; free virtual = 13731
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2308.247; parent = 2097.210; children = 212.531
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3910.082; parent = 2915.023; children = 995.059
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:24 ; elapsed = 00:00:27 . Memory (MB): peak = 2915.020 ; gain = 600.855 ; free physical = 9825 ; free virtual = 13730
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2308.247; parent = 2097.210; children = 212.531
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3910.082; parent = 2915.023; children = 995.059
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
E
%s*synth2-
+------+--------+------+
2default:defaulth px� 
E
%s*synth2-
|      |Cell    |Count |
2default:defaulth px� 
E
%s*synth2-
+------+--------+------+
2default:defaulth px� 
E
%s*synth2-
|1     |BUFG    |     1|
2default:defaulth px� 
E
%s*synth2-
|2     |LUT1    |     2|
2default:defaulth px� 
E
%s*synth2-
|3     |LUT2    |     5|
2default:defaulth px� 
E
%s*synth2-
|4     |LUT3    |    14|
2default:defaulth px� 
E
%s*synth2-
|5     |LUT4    |     8|
2default:defaulth px� 
E
%s*synth2-
|6     |LUT5    |     4|
2default:defaulth px� 
E
%s*synth2-
|7     |LUT6    |    18|
2default:defaulth px� 
E
%s*synth2-
|8     |FDRE    |    48|
2default:defaulth px� 
E
%s*synth2-
|9     |FDSE    |     3|
2default:defaulth px� 
E
%s*synth2-
|10    |IBUF    |     3|
2default:defaulth px� 
E
%s*synth2-
|11    |IBUFGDS |     1|
2default:defaulth px� 
E
%s*synth2-
|12    |OBUF    |     8|
2default:defaulth px� 
E
%s*synth2-
+------+--------+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:24 ; elapsed = 00:00:27 . Memory (MB): peak = 2915.020 ; gain = 600.855 ; free physical = 9824 ; free virtual = 13729
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2308.247; parent = 2097.210; children = 212.531
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3910.082; parent = 2915.023; children = 995.059
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
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:23 ; elapsed = 00:00:26 . Memory (MB): peak = 2915.020 ; gain = 471.152 ; free physical = 9847 ; free virtual = 13752
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:24 ; elapsed = 00:00:27 . Memory (MB): peak = 2915.027 ; gain = 600.855 ; free physical = 9847 ; free virtual = 13752
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
00:00:002default:default2
00:00:002default:default2
2915.0272default:default2
0.0002default:default2
98452default:default2
137502default:defaultZ17-722h px� 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
52default:defaultZ29-17h px� 
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
00:00:002default:default2
00:00:002default:default2
2949.7072default:default2
0.0002default:default2
97892default:default2
136962default:defaultZ17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 5 instances were transformed.
  BUFG => BUFGCE: 1 instance 
  IBUF => IBUF (IBUFCTRL, INBUF): 3 instances
  IBUFGDS => IBUFDS (DIFFINBUF, IBUFCTRL): 1 instance 
2default:defaultZ1-111h px� 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
18591f202default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
422default:default2
12default:default2
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
00:00:322default:default2
00:00:332default:default2
2949.7072default:default2
1251.7662default:default2
100532default:default2
139612default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2g
S/home/amd/training/Baselining/lab/KCU105/verilog/uart_led.runs/synth_1/uart_led.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2z
fExecuting : report_utilization -file uart_led_utilization_synth.rpt -pb uart_led_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Nov 25 23:00:41 20222default:defaultZ17-206h px� 


End Record
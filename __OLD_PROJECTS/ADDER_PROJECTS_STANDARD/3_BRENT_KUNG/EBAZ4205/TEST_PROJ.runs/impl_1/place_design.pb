
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0102default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0102default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1328.4342default:default2
0.0002default:defaultZ17-268h px? 
Z
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 835b58fc
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.002 . Memory (MB): peak = 1328.434 ; gain = 0.0002default:defaulth px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1328.4342default:default2
0.0002default:defaultZ17-268h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
?K
?IO placement is infeasible. Number of unplaced terminals (%s) is greater than number of available sites (%s).
The following are banks with available pins: %s
58*place2
1282default:default2
1002default:default2?I
?3
 IO Group: 0 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  In   RangeId: 1  has only 100 sites available on device, but needs 128 sites.
	Term: <MSGMETA::BEGIN::BLOCK>A[0]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[1]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[2]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[3]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[4]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[5]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[6]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[7]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[8]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[9]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[10]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[11]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[12]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[13]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[14]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[15]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[16]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[17]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[18]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[19]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[20]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[21]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[22]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[23]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[24]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[25]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[26]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[27]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[28]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[29]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[30]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[31]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[32]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[33]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[34]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[35]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[36]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[37]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[38]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[39]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[40]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[41]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[42]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[43]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[44]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[45]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[46]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[47]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[48]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[49]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[50]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[51]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[52]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[53]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[54]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[55]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[56]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[57]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[58]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[59]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[60]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[61]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[62]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[63]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[0]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[1]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[2]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[3]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[4]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[5]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[6]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[7]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[8]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[9]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[10]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[11]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[12]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[13]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[14]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[15]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[16]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[17]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[18]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[19]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[20]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[21]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[22]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[23]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[24]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[25]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[26]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[27]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[28]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[29]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[30]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[31]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[32]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[33]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[34]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[35]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[36]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[37]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[38]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[39]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[40]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[41]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[42]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[43]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[44]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[45]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[46]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[47]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[48]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[49]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[50]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[51]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[52]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[53]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[54]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[55]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[56]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[57]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[58]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[59]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[60]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[61]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[62]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[63]<MSGMETA::END>

"?
A[0]2?
 IO Group: 0 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  In   RangeId: 1  has only 100 sites available on device, but needs 128 sites.
	Term: :
	Term: "
A[1]:
	Term: "
A[2]:
	Term: "
A[3]:
	Term: "
A[4]:
	Term: "
A[5]:
	Term: "
A[6]:
	Term: "
A[7]:
	Term: "
A[8]:
	Term: "
A[9]:
	Term: "
A[10]:
	Term: "
A[11]:
	Term: "
A[12]:
	Term: "
A[13]:
	Term: "
A[14]:
	Term: "
A[15]:
	Term: "
A[16]:
	Term: "
A[17]:
	Term: "
A[18]:
	Term: "
A[19]:
	Term: "
A[20]:
	Term: "
A[21]:
	Term: "
A[22]:
	Term: "
A[23]:
	Term: "
A[24]:
	Term: "
A[25]:
	Term: "
A[26]:
	Term: "
A[27]:
	Term: "
A[28]:
	Term: "
A[29]:
	Term: "
A[30]:
	Term: "
A[31]:
	Term: "
A[32]:
	Term: "
A[33]:
	Term: "
A[34]:
	Term: "
A[35]:
	Term: "
A[36]:
	Term: "
A[37]:
	Term: "
A[38]:
	Term: "
A[39]:
	Term: "
A[40]:
	Term: "
A[41]:
	Term: "
A[42]:
	Term: "
A[43]:
	Term: "
A[44]:
	Term: "
A[45]:
	Term: "
A[46]:
	Term: "
A[47]:
	Term: "
A[48]:
	Term: "
A[49]:
	Term: "
A[50]:
	Term: "
A[51]:
	Term: "
A[52]:
	Term: "
A[53]:
	Term: "
A[54]:
	Term: "
A[55]:
	Term: "
A[56]:
	Term: "
A[57]:
	Term: "
A[58]:
	Term: "
A[59]:
	Term: "
A[60]:
	Term: "
A[61]:
	Term: "
A[62]:
	Term: "
A[63]:
	Term: "
B[0]:
	Term: "
B[1]:
	Term: "
B[2]:
	Term: "
B[3]:
	Term: "
B[4]:
	Term: "
B[5]:
	Term: "
B[6]:
	Term: "
B[7]:
	Term: "
B[8]:
	Term: "
B[9]:
	Term: "
B[10]:
	Term: "
B[11]:
	Term: "
B[12]:
	Term: "
B[13]:
	Term: "
B[14]:
	Term: "
B[15]:
	Term: "
B[16]:
	Term: "
B[17]:
	Term: "
B[18]:
	Term: "
B[19]:
	Term: "
B[20]:
	Term: "
B[21]:
	Term: "
B[22]:
	Term: "
B[23]:
	Term: "
B[24]:
	Term: "
B[25]:
	Term: "
B[26]:
	Term: "
B[27]:
	Term: "
B[28]:
	Term: "
B[29]:
	Term: "
B[30]:
	Term: "
B[31]:
	Term: "
B[32]:
	Term: "
B[33]:
	Term: "
B[34]:
	Term: "
B[35]:
	Term: "
B[36]:
	Term: "
B[37]:
	Term: "
B[38]:
	Term: "
B[39]:
	Term: "
B[40]:
	Term: "
B[41]:
	Term: "
B[42]:
	Term: "
B[43]:
	Term: "
B[44]:
	Term: "
B[45]:
	Term: "
B[46]:
	Term: "
B[47]:
	Term: "
B[48]:
	Term: "
B[49]:
	Term: "
B[50]:
	Term: "
B[51]:
	Term: "
B[52]:
	Term: "
B[53]:
	Term: "
B[54]:
	Term: "
B[55]:
	Term: "
B[56]:
	Term: "
B[57]:
	Term: "
B[58]:
	Term: "
B[59]:
	Term: "
B[60]:
	Term: "
B[61]:
	Term: "
B[62]:
	Term: "
B[63]:

2default:default8Z30-58h px? 
?K
?IO placement is infeasible. Number of unplaced terminals (%s) is greater than number of available sites (%s).
The following are banks with available pins: %s
58*place2
1932default:default2
1002default:default2?I
?3
 IO Group: 0 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  In   RangeId: 1  has only 100 sites available on device, but needs 128 sites.
	Term: <MSGMETA::BEGIN::BLOCK>A[0]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[1]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[2]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[3]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[4]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[5]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[6]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[7]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[8]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[9]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[10]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[11]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[12]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[13]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[14]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[15]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[16]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[17]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[18]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[19]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[20]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[21]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[22]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[23]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[24]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[25]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[26]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[27]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[28]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[29]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[30]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[31]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[32]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[33]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[34]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[35]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[36]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[37]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[38]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[39]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[40]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[41]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[42]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[43]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[44]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[45]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[46]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[47]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[48]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[49]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[50]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[51]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[52]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[53]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[54]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[55]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[56]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[57]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[58]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[59]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[60]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[61]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[62]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>A[63]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[0]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[1]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[2]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[3]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[4]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[5]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[6]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[7]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[8]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[9]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[10]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[11]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[12]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[13]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[14]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[15]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[16]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[17]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[18]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[19]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[20]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[21]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[22]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[23]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[24]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[25]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[26]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[27]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[28]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[29]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[30]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[31]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[32]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[33]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[34]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[35]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[36]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[37]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[38]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[39]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[40]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[41]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[42]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[43]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[44]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[45]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[46]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[47]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[48]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[49]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[50]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[51]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[52]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[53]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[54]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[55]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[56]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[57]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[58]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[59]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[60]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[61]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[62]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>B[63]<MSGMETA::END>

"?
A[0]2?
 IO Group: 0 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  In   RangeId: 1  has only 100 sites available on device, but needs 128 sites.
	Term: :
	Term: "
A[1]:
	Term: "
A[2]:
	Term: "
A[3]:
	Term: "
A[4]:
	Term: "
A[5]:
	Term: "
A[6]:
	Term: "
A[7]:
	Term: "
A[8]:
	Term: "
A[9]:
	Term: "
A[10]:
	Term: "
A[11]:
	Term: "
A[12]:
	Term: "
A[13]:
	Term: "
A[14]:
	Term: "
A[15]:
	Term: "
A[16]:
	Term: "
A[17]:
	Term: "
A[18]:
	Term: "
A[19]:
	Term: "
A[20]:
	Term: "
A[21]:
	Term: "
A[22]:
	Term: "
A[23]:
	Term: "
A[24]:
	Term: "
A[25]:
	Term: "
A[26]:
	Term: "
A[27]:
	Term: "
A[28]:
	Term: "
A[29]:
	Term: "
A[30]:
	Term: "
A[31]:
	Term: "
A[32]:
	Term: "
A[33]:
	Term: "
A[34]:
	Term: "
A[35]:
	Term: "
A[36]:
	Term: "
A[37]:
	Term: "
A[38]:
	Term: "
A[39]:
	Term: "
A[40]:
	Term: "
A[41]:
	Term: "
A[42]:
	Term: "
A[43]:
	Term: "
A[44]:
	Term: "
A[45]:
	Term: "
A[46]:
	Term: "
A[47]:
	Term: "
A[48]:
	Term: "
A[49]:
	Term: "
A[50]:
	Term: "
A[51]:
	Term: "
A[52]:
	Term: "
A[53]:
	Term: "
A[54]:
	Term: "
A[55]:
	Term: "
A[56]:
	Term: "
A[57]:
	Term: "
A[58]:
	Term: "
A[59]:
	Term: "
A[60]:
	Term: "
A[61]:
	Term: "
A[62]:
	Term: "
A[63]:
	Term: "
B[0]:
	Term: "
B[1]:
	Term: "
B[2]:
	Term: "
B[3]:
	Term: "
B[4]:
	Term: "
B[5]:
	Term: "
B[6]:
	Term: "
B[7]:
	Term: "
B[8]:
	Term: "
B[9]:
	Term: "
B[10]:
	Term: "
B[11]:
	Term: "
B[12]:
	Term: "
B[13]:
	Term: "
B[14]:
	Term: "
B[15]:
	Term: "
B[16]:
	Term: "
B[17]:
	Term: "
B[18]:
	Term: "
B[19]:
	Term: "
B[20]:
	Term: "
B[21]:
	Term: "
B[22]:
	Term: "
B[23]:
	Term: "
B[24]:
	Term: "
B[25]:
	Term: "
B[26]:
	Term: "
B[27]:
	Term: "
B[28]:
	Term: "
B[29]:
	Term: "
B[30]:
	Term: "
B[31]:
	Term: "
B[32]:
	Term: "
B[33]:
	Term: "
B[34]:
	Term: "
B[35]:
	Term: "
B[36]:
	Term: "
B[37]:
	Term: "
B[38]:
	Term: "
B[39]:
	Term: "
B[40]:
	Term: "
B[41]:
	Term: "
B[42]:
	Term: "
B[43]:
	Term: "
B[44]:
	Term: "
B[45]:
	Term: "
B[46]:
	Term: "
B[47]:
	Term: "
B[48]:
	Term: "
B[49]:
	Term: "
B[50]:
	Term: "
B[51]:
	Term: "
B[52]:
	Term: "
B[53]:
	Term: "
B[54]:
	Term: "
B[55]:
	Term: "
B[56]:
	Term: "
B[57]:
	Term: "
B[58]:
	Term: "
B[59]:
	Term: "
B[60]:
	Term: "
B[61]:
	Term: "
B[62]:
	Term: "
B[63]:

2default:default8Z30-58h px? 
?
'IO placer failed to find a solution
%s
374*place2?
?Below is the partial placement that can be analyzed to see if any constraint modifications will make the IO placement problem easier to solve.

+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                     IO Placement : Bank Stats                                                                           |
+----+-------+-------+------------------------------------------------------------------------+------------------------------------------+--------+--------+--------+-----+
| Id | Pins  | Terms |                               Standards                                |                IDelayCtrls               |  VREF  |  VCCO  |   VR   | DCI |
+----+-------+-------+------------------------------------------------------------------------+------------------------------------------+--------+--------+--------+-----+
|  0 |     0 |     0 |                                                                        |                                          |        |        |        |     |
| 13 |     0 |     0 |                                                                        |                                          |        |        |        |     |
| 34 |    50 |     0 |                                                                        |                                          |        |        |        |     |
| 35 |    50 |     0 |                                                                        |                                          |        |        |        |     |
+----+-------+-------+------------------------------------------------------------------------+------------------------------------------+--------+--------+--------+-----+
|    |   100 |     0 |                                                                        |                                          |        |        |        |     |
+----+-------+-------+------------------------------------------------------------------------+------------------------------------------+--------+--------+--------+-----+

IO Placement:
+--------+----------------------+-----------------+----------------------+----------------------+----------------------+
| BankId |             Terminal | Standard        | Site                 | Pin                  | Attributes           |
+--------+----------------------+-----------------+----------------------+----------------------+----------------------+
2default:defaultZ30-374h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
g
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 835b58fc
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.297 . Memory (MB): peak = 1328.434 ; gain = 0.0002default:defaulth px? 
H
3Phase 1 Placer Initialization | Checksum: 835b58fc
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.297 . Memory (MB): peak = 1328.434 ; gain = 0.0002default:defaulth px? 
?
?Placer failed with error: '%s'
Please review all ERROR and WARNING messages during placement to understand the cause for failure.
1*	placeflow2*
IO Clock Placer failed2default:defaultZ30-99h px? 
=
(Ending Placer Task | Checksum: 835b58fc
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.298 . Memory (MB): peak = 1328.434 ; gain = 0.0002default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
392default:default2
22default:default2
02default:default2
52default:defaultZ4-41h px? 
N

%s failed
30*	vivadotcl2 
place_design2default:defaultZ4-43h px? 
m
Command failed: %s
69*common28
$Placer could not place all instances2default:defaultZ17-69h px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon May  3 00:10:18 20212default:defaultZ17-206h px? 


End Record
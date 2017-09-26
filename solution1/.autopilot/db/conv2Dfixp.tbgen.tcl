set C_TypeInfoList {{ 
"conv2Dfixp" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"in": [[], {"array": ["0", [784]]}] }, {"out": [[], {"array": ["0", [784]]}] }, {"kernel": [[], {"array": ["0", [9]]}] }],[],""], 
"0": [ "data_t", {"typedef": [[[],"1"],""]}], 
"1": [ "ap_fixed<16, 4, 5, 3, 0>", {"hls_type": {"ap_fixed": [[[[], {"scalar": { "int": 16}}],[[], {"scalar": { "int": 4}}],[[], {"scalar": { "2": 5}}],[[], {"scalar": { "3": 3}}],[[], {"scalar": { "int": 0}}]],""]}}], 
"2": [ "sc_q_mode", {"enum": [[],[],[{"SC_RND":  {"scalar": "__integer__"}},{"SC_RND_ZERO":  {"scalar": "__integer__"}},{"SC_RND_MIN_INF":  {"scalar": "__integer__"}},{"SC_RND_INF":  {"scalar": "__integer__"}},{"SC_RND_CONV":  {"scalar": "__integer__"}},{"SC_TRN":  {"scalar": "__integer__"}},{"SC_TRN_ZERO":  {"scalar": "__integer__"}}],""]}], 
"3": [ "sc_o_mode", {"enum": [[],[],[{"SC_SAT":  {"scalar": "__integer__"}},{"SC_SAT_ZERO":  {"scalar": "__integer__"}},{"SC_SAT_SYM":  {"scalar": "__integer__"}},{"SC_WRAP":  {"scalar": "__integer__"}},{"SC_WRAP_SM":  {"scalar": "__integer__"}}],""]}]
}}
set moduleName conv2Dfixp
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {conv2Dfixp}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_V int 16 regular {array 784 { 1 3 } 1 1 }  }
	{ out_V int 16 regular {array 784 { 2 3 } 1 1 }  }
	{ kernel_V int 16 regular {array 9 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "in.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 783,"step" : 1}]}]}]} , 
 	{ "Name" : "out_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "out.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 783,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "kernel.V","cData": "int16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 8,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_V_address0 sc_out sc_lv 10 signal 0 } 
	{ in_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ in_V_q0 sc_in sc_lv 16 signal 0 } 
	{ out_V_address0 sc_out sc_lv 10 signal 1 } 
	{ out_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ out_V_we0 sc_out sc_logic 1 signal 1 } 
	{ out_V_d0 sc_out sc_lv 16 signal 1 } 
	{ out_V_q0 sc_in sc_lv 16 signal 1 } 
	{ kernel_V_address0 sc_out sc_lv 4 signal 2 } 
	{ kernel_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ kernel_V_q0 sc_in sc_lv 16 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "in_V", "role": "address0" }} , 
 	{ "name": "in_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V", "role": "ce0" }} , 
 	{ "name": "in_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_V", "role": "q0" }} , 
 	{ "name": "out_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "out_V", "role": "address0" }} , 
 	{ "name": "out_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "ce0" }} , 
 	{ "name": "out_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "we0" }} , 
 	{ "name": "out_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_V", "role": "d0" }} , 
 	{ "name": "out_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_V", "role": "q0" }} , 
 	{ "name": "kernel_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel_V", "role": "address0" }} , 
 	{ "name": "kernel_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel_V", "role": "ce0" }} , 
 	{ "name": "kernel_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "kernel_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv2Dfixp",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "in_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "kernel_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2Dfixp_mac_mubkb_U1", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv2Dfixp {
		in_V {Type I LastRead 6 FirstWrite -1}
		out_V {Type IO LastRead 6 FirstWrite 8}
		kernel_V {Type I LastRead 6 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "29849", "Max" : "36905"}
	, {"Name" : "Interval", "Min" : "29850", "Max" : "36906"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_V { ap_memory {  { in_V_address0 mem_address 1 10 }  { in_V_ce0 mem_ce 1 1 }  { in_V_q0 mem_dout 0 16 } } }
	out_V { ap_memory {  { out_V_address0 mem_address 1 10 }  { out_V_ce0 mem_ce 1 1 }  { out_V_we0 mem_we 1 1 }  { out_V_d0 mem_din 1 16 }  { out_V_q0 mem_dout 0 16 } } }
	kernel_V { ap_memory {  { kernel_V_address0 mem_address 1 4 }  { kernel_V_ce0 mem_ce 1 1 }  { kernel_V_q0 mem_dout 0 16 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}

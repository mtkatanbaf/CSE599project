set C_TypeInfoList {{ 
"vta" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"insn_count": [[],"0"] }, {"insns": [[],{ "pointer": "1"}] }, {"uops": [[],{ "pointer": "2"}] }, {"inputs": [[],{ "pointer": "3"}] }, {"weights": [[],{ "pointer": "4"}] }, {"biases": [[],{ "pointer": "5"}] }, {"outputs": [[],{ "pointer": "5"}] }],[],""], 
"0": [ "uint32_t", {"typedef": [[[], {"scalar": "unsigned int"}],""]}], 
"1": [ "insn_T", {"typedef": [[[],"6"],""]}], 
"6": [ "VTAGenericInsn", {"typedef": [[[],"7"],""]}], 
"7": [ "uint64_t", {"typedef": [[[], {"scalar": "long unsigned int"}],""]}], 
"2": [ "uop_T", {"typedef": [[[],"8"],""]}], 
"8": [ "VTAGenericUop", {"typedef": [[[],"0"],""]}], 
"3": [ "inp_vec_T", {"typedef": [[[],"9"],""]}], 
"9": [ "ap_uint<128>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 128}}]],""]}}], 
"4": [ "wgt_vec_T", {"typedef": [[[],"9"],""]}], 
"5": [ "acc_vec_T", {"typedef": [[[],"10"],""]}], 
"10": [ "ap_uint<512>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 512}}]],""]}}]
}}
set moduleName vta
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {vta}
set C_modelType { void 0 }
set C_modelArgList {
	{ ins_port int 64 regular {axi_master 0}  }
	{ uop_port int 32 regular {axi_master 0}  }
	{ narrow_port int 128 regular {axi_master 0}  }
	{ wide_port int 512 regular {axi_master 2}  }
	{ insn_count int 32 regular {axi_slave 0}  }
	{ insns int 32 regular {axi_slave 0}  }
	{ uops int 32 regular {axi_slave 0}  }
	{ inputs_V int 32 regular {axi_slave 0}  }
	{ weights_V int 32 regular {axi_slave 0}  }
	{ biases_V int 32 regular {axi_slave 0}  }
	{ outputs_V int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ins_port", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "insns","cData": "long unsigned int","bit_use": { "low": 0,"up": 63},"offset": { "type": "dynamic","port_name": "insns","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "uop_port", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "uops","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "uops","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "narrow_port", "interface" : "axi_master", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "inputs.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"offset": { "type": "dynamic","port_name": "inputs_V","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 1}]},{"cName": "weights.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"offset": { "type": "dynamic","port_name": "weights_V","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "wide_port", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":511,"cElement": [{"cName": "biases.V","cData": "uint512","bit_use": { "low": 0,"up": 511},"offset": { "type": "dynamic","port_name": "biases_V","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 1}]},{"cName": "outputs.V","cData": "uint512","bit_use": { "low": 0,"up": 511},"offset": { "type": "dynamic","port_name": "outputs_V","bundle": "AXILiteS"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "insn_count", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "insn_count","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "insns", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "uops", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "inputs_V", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "weights_V", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "biases_V", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "outputs_V", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":71}} ]}
# RTL Port declarations: 
set portNum 200
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_ins_port_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_ins_port_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_ins_port_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_ins_port_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_ins_port_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_ins_port_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_ins_port_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_ins_port_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_ins_port_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_ins_port_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_ins_port_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_ins_port_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_ins_port_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_ins_port_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_ins_port_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_ins_port_WDATA sc_out sc_lv 64 signal 0 } 
	{ m_axi_ins_port_WSTRB sc_out sc_lv 8 signal 0 } 
	{ m_axi_ins_port_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_ins_port_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_ins_port_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_ins_port_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_ins_port_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_ins_port_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_ins_port_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_ins_port_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_ins_port_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_ins_port_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_ins_port_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_ins_port_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_ins_port_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_ins_port_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_ins_port_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_ins_port_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_ins_port_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_ins_port_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_ins_port_RDATA sc_in sc_lv 64 signal 0 } 
	{ m_axi_ins_port_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_ins_port_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_ins_port_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_ins_port_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_ins_port_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_ins_port_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_ins_port_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_ins_port_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_ins_port_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_uop_port_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_uop_port_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_uop_port_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_uop_port_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_uop_port_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_uop_port_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_uop_port_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_uop_port_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_uop_port_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_uop_port_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_uop_port_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_uop_port_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_uop_port_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_uop_port_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_uop_port_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_uop_port_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_uop_port_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_uop_port_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_uop_port_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_uop_port_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_uop_port_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_uop_port_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_uop_port_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_uop_port_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_uop_port_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_uop_port_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_uop_port_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_uop_port_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_uop_port_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_uop_port_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_uop_port_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_uop_port_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_uop_port_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_uop_port_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_uop_port_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_uop_port_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_uop_port_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_uop_port_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_uop_port_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_uop_port_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_uop_port_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_uop_port_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_uop_port_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_uop_port_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_uop_port_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_narrow_port_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_narrow_port_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_narrow_port_AWADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_narrow_port_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_narrow_port_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_narrow_port_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_narrow_port_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_narrow_port_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_narrow_port_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_narrow_port_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_narrow_port_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_narrow_port_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_narrow_port_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_narrow_port_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_narrow_port_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_narrow_port_WDATA sc_out sc_lv 128 signal 2 } 
	{ m_axi_narrow_port_WSTRB sc_out sc_lv 16 signal 2 } 
	{ m_axi_narrow_port_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_narrow_port_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_narrow_port_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_narrow_port_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_narrow_port_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_narrow_port_ARADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_narrow_port_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_narrow_port_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_narrow_port_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_narrow_port_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_narrow_port_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_narrow_port_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_narrow_port_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_narrow_port_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_narrow_port_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_narrow_port_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_narrow_port_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_narrow_port_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_narrow_port_RDATA sc_in sc_lv 128 signal 2 } 
	{ m_axi_narrow_port_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_narrow_port_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_narrow_port_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_narrow_port_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_narrow_port_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_narrow_port_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_narrow_port_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_narrow_port_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_narrow_port_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_wide_port_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_wide_port_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_wide_port_AWADDR sc_out sc_lv 32 signal 3 } 
	{ m_axi_wide_port_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_wide_port_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_wide_port_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_wide_port_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_wide_port_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_wide_port_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_wide_port_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_wide_port_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_wide_port_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_wide_port_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_wide_port_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_wide_port_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_wide_port_WDATA sc_out sc_lv 512 signal 3 } 
	{ m_axi_wide_port_WSTRB sc_out sc_lv 64 signal 3 } 
	{ m_axi_wide_port_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_wide_port_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_wide_port_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_wide_port_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_wide_port_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_wide_port_ARADDR sc_out sc_lv 32 signal 3 } 
	{ m_axi_wide_port_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_wide_port_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_wide_port_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_wide_port_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_wide_port_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_wide_port_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_wide_port_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_wide_port_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_wide_port_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_wide_port_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_wide_port_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_wide_port_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_wide_port_RDATA sc_in sc_lv 512 signal 3 } 
	{ m_axi_wide_port_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_wide_port_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_wide_port_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_wide_port_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_wide_port_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_wide_port_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_wide_port_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_wide_port_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_wide_port_BUSER sc_in sc_lv 1 signal 3 } 
	{ s_axi_CONTROL_BUS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_CONTROL_BUS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CONTROL_BUS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CONTROL_BUS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_CONTROL_BUS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CONTROL_BUS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CONTROL_BUS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CONTROL_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWADDR" },"address":[{"name":"vta","role":"start","value":"0","valid_bit":"0"},{"name":"vta","role":"continue","value":"0","valid_bit":"4"},{"name":"vta","role":"auto_start","value":"0","valid_bit":"7"},{"name":"insn_count","role":"data","value":"16"},{"name":"insns","role":"data","value":"24"},{"name":"uops","role":"data","value":"32"},{"name":"inputs_V","role":"data","value":"40"},{"name":"weights_V","role":"data","value":"48"},{"name":"biases_V","role":"data","value":"56"},{"name":"outputs_V","role":"data","value":"64"}] },
	{ "name": "s_axi_CONTROL_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_CONTROL_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_CONTROL_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WVALID" } },
	{ "name": "s_axi_CONTROL_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WREADY" } },
	{ "name": "s_axi_CONTROL_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WDATA" } },
	{ "name": "s_axi_CONTROL_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_CONTROL_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARADDR" },"address":[{"name":"vta","role":"start","value":"0","valid_bit":"0"},{"name":"vta","role":"done","value":"0","valid_bit":"1"},{"name":"vta","role":"idle","value":"0","valid_bit":"2"},{"name":"vta","role":"ready","value":"0","valid_bit":"3"},{"name":"vta","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CONTROL_BUS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARVALID" } },
	{ "name": "s_axi_CONTROL_BUS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARREADY" } },
	{ "name": "s_axi_CONTROL_BUS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RVALID" } },
	{ "name": "s_axi_CONTROL_BUS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RREADY" } },
	{ "name": "s_axi_CONTROL_BUS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RDATA" } },
	{ "name": "s_axi_CONTROL_BUS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RRESP" } },
	{ "name": "s_axi_CONTROL_BUS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "BVALID" } },
	{ "name": "s_axi_CONTROL_BUS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "BREADY" } },
	{ "name": "s_axi_CONTROL_BUS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_ins_port_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ins_port", "role": "AWVALID" }} , 
 	{ "name": "m_axi_ins_port_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ins_port", "role": "AWREADY" }} , 
 	{ "name": "m_axi_ins_port_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ins_port", "role": "AWADDR" }} , 
 	{ "name": "m_axi_ins_port_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ins_port", "role": "AWID" }} , 
 	{ "name": "m_axi_ins_port_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ins_port", "role": "AWLEN" }} , 
 	{ "name": "m_axi_ins_port_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ins_port", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_ins_port_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ins_port", "role": "AWBURST" }} , 
 	{ "name": "m_axi_ins_port_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ins_port", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_ins_port_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ins_port", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_ins_port_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ins_port", "role": "AWPROT" }} , 
 	{ "name": "m_axi_ins_port_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ins_port", "role": "AWQOS" }} , 
 	{ "name": "m_axi_ins_port_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ins_port", "role": "AWREGION" }} , 
 	{ "name": "m_axi_ins_port_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ins_port", "role": "AWUSER" }} , 
 	{ "name": "m_axi_ins_port_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ins_port", "role": "WVALID" }} , 
 	{ "name": "m_axi_ins_port_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ins_port", "role": "WREADY" }} , 
 	{ "name": "m_axi_ins_port_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ins_port", "role": "WDATA" }} , 
 	{ "name": "m_axi_ins_port_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ins_port", "role": "WSTRB" }} , 
 	{ "name": "m_axi_ins_port_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ins_port", "role": "WLAST" }} , 
 	{ "name": "m_axi_ins_port_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ins_port", "role": "WID" }} , 
 	{ "name": "m_axi_ins_port_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ins_port", "role": "WUSER" }} , 
 	{ "name": "m_axi_ins_port_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ins_port", "role": "ARVALID" }} , 
 	{ "name": "m_axi_ins_port_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ins_port", "role": "ARREADY" }} , 
 	{ "name": "m_axi_ins_port_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ins_port", "role": "ARADDR" }} , 
 	{ "name": "m_axi_ins_port_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ins_port", "role": "ARID" }} , 
 	{ "name": "m_axi_ins_port_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ins_port", "role": "ARLEN" }} , 
 	{ "name": "m_axi_ins_port_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ins_port", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_ins_port_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ins_port", "role": "ARBURST" }} , 
 	{ "name": "m_axi_ins_port_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ins_port", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_ins_port_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ins_port", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_ins_port_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ins_port", "role": "ARPROT" }} , 
 	{ "name": "m_axi_ins_port_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ins_port", "role": "ARQOS" }} , 
 	{ "name": "m_axi_ins_port_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ins_port", "role": "ARREGION" }} , 
 	{ "name": "m_axi_ins_port_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ins_port", "role": "ARUSER" }} , 
 	{ "name": "m_axi_ins_port_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ins_port", "role": "RVALID" }} , 
 	{ "name": "m_axi_ins_port_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ins_port", "role": "RREADY" }} , 
 	{ "name": "m_axi_ins_port_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ins_port", "role": "RDATA" }} , 
 	{ "name": "m_axi_ins_port_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ins_port", "role": "RLAST" }} , 
 	{ "name": "m_axi_ins_port_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ins_port", "role": "RID" }} , 
 	{ "name": "m_axi_ins_port_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ins_port", "role": "RUSER" }} , 
 	{ "name": "m_axi_ins_port_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ins_port", "role": "RRESP" }} , 
 	{ "name": "m_axi_ins_port_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ins_port", "role": "BVALID" }} , 
 	{ "name": "m_axi_ins_port_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ins_port", "role": "BREADY" }} , 
 	{ "name": "m_axi_ins_port_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ins_port", "role": "BRESP" }} , 
 	{ "name": "m_axi_ins_port_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ins_port", "role": "BID" }} , 
 	{ "name": "m_axi_ins_port_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ins_port", "role": "BUSER" }} , 
 	{ "name": "m_axi_uop_port_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "uop_port", "role": "AWVALID" }} , 
 	{ "name": "m_axi_uop_port_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "uop_port", "role": "AWREADY" }} , 
 	{ "name": "m_axi_uop_port_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "uop_port", "role": "AWADDR" }} , 
 	{ "name": "m_axi_uop_port_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "uop_port", "role": "AWID" }} , 
 	{ "name": "m_axi_uop_port_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "uop_port", "role": "AWLEN" }} , 
 	{ "name": "m_axi_uop_port_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "uop_port", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_uop_port_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "uop_port", "role": "AWBURST" }} , 
 	{ "name": "m_axi_uop_port_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "uop_port", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_uop_port_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "uop_port", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_uop_port_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "uop_port", "role": "AWPROT" }} , 
 	{ "name": "m_axi_uop_port_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "uop_port", "role": "AWQOS" }} , 
 	{ "name": "m_axi_uop_port_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "uop_port", "role": "AWREGION" }} , 
 	{ "name": "m_axi_uop_port_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "uop_port", "role": "AWUSER" }} , 
 	{ "name": "m_axi_uop_port_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "uop_port", "role": "WVALID" }} , 
 	{ "name": "m_axi_uop_port_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "uop_port", "role": "WREADY" }} , 
 	{ "name": "m_axi_uop_port_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "uop_port", "role": "WDATA" }} , 
 	{ "name": "m_axi_uop_port_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "uop_port", "role": "WSTRB" }} , 
 	{ "name": "m_axi_uop_port_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "uop_port", "role": "WLAST" }} , 
 	{ "name": "m_axi_uop_port_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "uop_port", "role": "WID" }} , 
 	{ "name": "m_axi_uop_port_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "uop_port", "role": "WUSER" }} , 
 	{ "name": "m_axi_uop_port_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "uop_port", "role": "ARVALID" }} , 
 	{ "name": "m_axi_uop_port_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "uop_port", "role": "ARREADY" }} , 
 	{ "name": "m_axi_uop_port_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "uop_port", "role": "ARADDR" }} , 
 	{ "name": "m_axi_uop_port_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "uop_port", "role": "ARID" }} , 
 	{ "name": "m_axi_uop_port_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "uop_port", "role": "ARLEN" }} , 
 	{ "name": "m_axi_uop_port_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "uop_port", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_uop_port_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "uop_port", "role": "ARBURST" }} , 
 	{ "name": "m_axi_uop_port_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "uop_port", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_uop_port_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "uop_port", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_uop_port_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "uop_port", "role": "ARPROT" }} , 
 	{ "name": "m_axi_uop_port_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "uop_port", "role": "ARQOS" }} , 
 	{ "name": "m_axi_uop_port_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "uop_port", "role": "ARREGION" }} , 
 	{ "name": "m_axi_uop_port_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "uop_port", "role": "ARUSER" }} , 
 	{ "name": "m_axi_uop_port_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "uop_port", "role": "RVALID" }} , 
 	{ "name": "m_axi_uop_port_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "uop_port", "role": "RREADY" }} , 
 	{ "name": "m_axi_uop_port_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "uop_port", "role": "RDATA" }} , 
 	{ "name": "m_axi_uop_port_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "uop_port", "role": "RLAST" }} , 
 	{ "name": "m_axi_uop_port_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "uop_port", "role": "RID" }} , 
 	{ "name": "m_axi_uop_port_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "uop_port", "role": "RUSER" }} , 
 	{ "name": "m_axi_uop_port_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "uop_port", "role": "RRESP" }} , 
 	{ "name": "m_axi_uop_port_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "uop_port", "role": "BVALID" }} , 
 	{ "name": "m_axi_uop_port_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "uop_port", "role": "BREADY" }} , 
 	{ "name": "m_axi_uop_port_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "uop_port", "role": "BRESP" }} , 
 	{ "name": "m_axi_uop_port_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "uop_port", "role": "BID" }} , 
 	{ "name": "m_axi_uop_port_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "uop_port", "role": "BUSER" }} , 
 	{ "name": "m_axi_narrow_port_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "narrow_port", "role": "AWVALID" }} , 
 	{ "name": "m_axi_narrow_port_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "narrow_port", "role": "AWREADY" }} , 
 	{ "name": "m_axi_narrow_port_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "narrow_port", "role": "AWADDR" }} , 
 	{ "name": "m_axi_narrow_port_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "narrow_port", "role": "AWID" }} , 
 	{ "name": "m_axi_narrow_port_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "narrow_port", "role": "AWLEN" }} , 
 	{ "name": "m_axi_narrow_port_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "narrow_port", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_narrow_port_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "narrow_port", "role": "AWBURST" }} , 
 	{ "name": "m_axi_narrow_port_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "narrow_port", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_narrow_port_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "narrow_port", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_narrow_port_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "narrow_port", "role": "AWPROT" }} , 
 	{ "name": "m_axi_narrow_port_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "narrow_port", "role": "AWQOS" }} , 
 	{ "name": "m_axi_narrow_port_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "narrow_port", "role": "AWREGION" }} , 
 	{ "name": "m_axi_narrow_port_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "narrow_port", "role": "AWUSER" }} , 
 	{ "name": "m_axi_narrow_port_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "narrow_port", "role": "WVALID" }} , 
 	{ "name": "m_axi_narrow_port_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "narrow_port", "role": "WREADY" }} , 
 	{ "name": "m_axi_narrow_port_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "narrow_port", "role": "WDATA" }} , 
 	{ "name": "m_axi_narrow_port_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "narrow_port", "role": "WSTRB" }} , 
 	{ "name": "m_axi_narrow_port_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "narrow_port", "role": "WLAST" }} , 
 	{ "name": "m_axi_narrow_port_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "narrow_port", "role": "WID" }} , 
 	{ "name": "m_axi_narrow_port_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "narrow_port", "role": "WUSER" }} , 
 	{ "name": "m_axi_narrow_port_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "narrow_port", "role": "ARVALID" }} , 
 	{ "name": "m_axi_narrow_port_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "narrow_port", "role": "ARREADY" }} , 
 	{ "name": "m_axi_narrow_port_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "narrow_port", "role": "ARADDR" }} , 
 	{ "name": "m_axi_narrow_port_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "narrow_port", "role": "ARID" }} , 
 	{ "name": "m_axi_narrow_port_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "narrow_port", "role": "ARLEN" }} , 
 	{ "name": "m_axi_narrow_port_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "narrow_port", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_narrow_port_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "narrow_port", "role": "ARBURST" }} , 
 	{ "name": "m_axi_narrow_port_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "narrow_port", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_narrow_port_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "narrow_port", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_narrow_port_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "narrow_port", "role": "ARPROT" }} , 
 	{ "name": "m_axi_narrow_port_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "narrow_port", "role": "ARQOS" }} , 
 	{ "name": "m_axi_narrow_port_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "narrow_port", "role": "ARREGION" }} , 
 	{ "name": "m_axi_narrow_port_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "narrow_port", "role": "ARUSER" }} , 
 	{ "name": "m_axi_narrow_port_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "narrow_port", "role": "RVALID" }} , 
 	{ "name": "m_axi_narrow_port_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "narrow_port", "role": "RREADY" }} , 
 	{ "name": "m_axi_narrow_port_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "narrow_port", "role": "RDATA" }} , 
 	{ "name": "m_axi_narrow_port_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "narrow_port", "role": "RLAST" }} , 
 	{ "name": "m_axi_narrow_port_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "narrow_port", "role": "RID" }} , 
 	{ "name": "m_axi_narrow_port_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "narrow_port", "role": "RUSER" }} , 
 	{ "name": "m_axi_narrow_port_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "narrow_port", "role": "RRESP" }} , 
 	{ "name": "m_axi_narrow_port_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "narrow_port", "role": "BVALID" }} , 
 	{ "name": "m_axi_narrow_port_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "narrow_port", "role": "BREADY" }} , 
 	{ "name": "m_axi_narrow_port_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "narrow_port", "role": "BRESP" }} , 
 	{ "name": "m_axi_narrow_port_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "narrow_port", "role": "BID" }} , 
 	{ "name": "m_axi_narrow_port_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "narrow_port", "role": "BUSER" }} , 
 	{ "name": "m_axi_wide_port_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wide_port", "role": "AWVALID" }} , 
 	{ "name": "m_axi_wide_port_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wide_port", "role": "AWREADY" }} , 
 	{ "name": "m_axi_wide_port_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wide_port", "role": "AWADDR" }} , 
 	{ "name": "m_axi_wide_port_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wide_port", "role": "AWID" }} , 
 	{ "name": "m_axi_wide_port_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "wide_port", "role": "AWLEN" }} , 
 	{ "name": "m_axi_wide_port_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "wide_port", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_wide_port_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "wide_port", "role": "AWBURST" }} , 
 	{ "name": "m_axi_wide_port_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "wide_port", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_wide_port_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wide_port", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_wide_port_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "wide_port", "role": "AWPROT" }} , 
 	{ "name": "m_axi_wide_port_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wide_port", "role": "AWQOS" }} , 
 	{ "name": "m_axi_wide_port_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wide_port", "role": "AWREGION" }} , 
 	{ "name": "m_axi_wide_port_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wide_port", "role": "AWUSER" }} , 
 	{ "name": "m_axi_wide_port_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wide_port", "role": "WVALID" }} , 
 	{ "name": "m_axi_wide_port_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wide_port", "role": "WREADY" }} , 
 	{ "name": "m_axi_wide_port_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "wide_port", "role": "WDATA" }} , 
 	{ "name": "m_axi_wide_port_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "wide_port", "role": "WSTRB" }} , 
 	{ "name": "m_axi_wide_port_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wide_port", "role": "WLAST" }} , 
 	{ "name": "m_axi_wide_port_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wide_port", "role": "WID" }} , 
 	{ "name": "m_axi_wide_port_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wide_port", "role": "WUSER" }} , 
 	{ "name": "m_axi_wide_port_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wide_port", "role": "ARVALID" }} , 
 	{ "name": "m_axi_wide_port_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wide_port", "role": "ARREADY" }} , 
 	{ "name": "m_axi_wide_port_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wide_port", "role": "ARADDR" }} , 
 	{ "name": "m_axi_wide_port_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wide_port", "role": "ARID" }} , 
 	{ "name": "m_axi_wide_port_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "wide_port", "role": "ARLEN" }} , 
 	{ "name": "m_axi_wide_port_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "wide_port", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_wide_port_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "wide_port", "role": "ARBURST" }} , 
 	{ "name": "m_axi_wide_port_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "wide_port", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_wide_port_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wide_port", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_wide_port_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "wide_port", "role": "ARPROT" }} , 
 	{ "name": "m_axi_wide_port_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wide_port", "role": "ARQOS" }} , 
 	{ "name": "m_axi_wide_port_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wide_port", "role": "ARREGION" }} , 
 	{ "name": "m_axi_wide_port_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wide_port", "role": "ARUSER" }} , 
 	{ "name": "m_axi_wide_port_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wide_port", "role": "RVALID" }} , 
 	{ "name": "m_axi_wide_port_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wide_port", "role": "RREADY" }} , 
 	{ "name": "m_axi_wide_port_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "wide_port", "role": "RDATA" }} , 
 	{ "name": "m_axi_wide_port_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wide_port", "role": "RLAST" }} , 
 	{ "name": "m_axi_wide_port_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wide_port", "role": "RID" }} , 
 	{ "name": "m_axi_wide_port_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wide_port", "role": "RUSER" }} , 
 	{ "name": "m_axi_wide_port_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "wide_port", "role": "RRESP" }} , 
 	{ "name": "m_axi_wide_port_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wide_port", "role": "BVALID" }} , 
 	{ "name": "m_axi_wide_port_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wide_port", "role": "BREADY" }} , 
 	{ "name": "m_axi_wide_port_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "wide_port", "role": "BRESP" }} , 
 	{ "name": "m_axi_wide_port_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wide_port", "role": "BID" }} , 
 	{ "name": "m_axi_wide_port_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wide_port", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "278", "279", "280"],
		"CDFG" : "vta",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state65_pp5_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp5_iter2", "FromInitialOperation" : "ap_enable_operation_411", "FromInitialSV" : "12", "FromFinalState" : "ap_enable_state66_pp5_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp5_iter3", "FromFinalOperation" : "ap_enable_operation_448", "FromFinalSV" : "13", "FromAddress" : "acc_mem_0_V_address0", "ToInitialState" : "ap_enable_state65_pp5_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp5_iter2", "ToInitialOperation" : "ap_enable_operation_445", "ToInitialSV" : "12", "ToFinalState" : "ap_enable_state65_pp5_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp5_iter2", "ToFinalOperation" : "ap_enable_operation_445", "ToFinalSV" : "12", "ToAddress" : "acc_mem_0_V_address0", "PipelineBlock" : "ap_block_pp5", "AddressWidth" : "11", "II" : "1", "Pragma" : "(../../src/vta.cc:85:1)"},
			{"FromInitialState" : "ap_enable_state74_pp5_iter11_stage0", "FromInitialIteration" : "ap_enable_reg_pp5_iter11", "FromInitialOperation" : "ap_enable_operation_2194", "FromInitialSV" : "21", "FromFinalState" : "ap_enable_state74_pp5_iter11_stage0", "FromFinalIteration" : "ap_enable_reg_pp5_iter11", "FromFinalOperation" : "ap_enable_operation_2194", "FromFinalSV" : "21", "FromAddress" : "acc_mem_0_V_address1", "ToInitialState" : "ap_enable_state65_pp5_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp5_iter2", "ToInitialOperation" : "ap_enable_operation_445", "ToInitialSV" : "12", "ToFinalState" : "ap_enable_state65_pp5_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp5_iter2", "ToFinalOperation" : "ap_enable_operation_445", "ToFinalSV" : "12", "ToAddress" : "acc_mem_0_V_address0", "PipelineBlock" : "ap_block_pp5", "AddressWidth" : "11", "II" : "1", "Pragma" : "(../../src/vta.cc:85:1)"}],
		"Port" : [
			{"Name" : "ins_port", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "ins_port_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "ins_port_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "uop_port", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "uop_port_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "uop_port_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "narrow_port", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "narrow_port_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "narrow_port_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "wide_port", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "wide_port_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "wide_port_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "wide_port_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "wide_port_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "wide_port_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "insn_count", "Type" : "None", "Direction" : "I"},
			{"Name" : "insns", "Type" : "None", "Direction" : "I"},
			{"Name" : "uops", "Type" : "None", "Direction" : "I"},
			{"Name" : "inputs_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "outputs_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_CONTROL_BUS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_ins_port_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_uop_port_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_narrow_port_m_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_wide_port_m_axi_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.uop_mem_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inp_mem_0_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_mem_0_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_mem_1_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_mem_2_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_mem_3_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_mem_4_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_mem_5_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_mem_6_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_mem_7_V_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_mem_8_V_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_mem_9_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_mem_10_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_mem_11_V_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_mem_12_V_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_mem_13_V_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_mem_14_V_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_mem_15_V_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.acc_mem_0_V_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U1", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U2", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U3", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U4", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U5", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U6", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U7", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U8", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U9", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U10", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U11", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U12", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U13", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U14", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U15", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U16", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U17", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U18", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U19", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U20", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U21", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U22", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U23", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U24", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U25", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U26", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U27", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U28", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U29", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U30", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U31", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U32", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U33", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U34", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U35", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U36", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U37", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U38", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U39", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U40", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U41", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U42", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U43", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U44", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U45", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U46", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U47", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U48", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U49", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U50", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U51", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U52", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U53", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U54", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U55", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U56", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U57", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U58", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U59", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U60", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U61", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U62", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U63", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U64", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U65", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U66", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U67", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U68", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U69", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U70", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U71", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U72", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U73", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U74", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U75", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U76", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U77", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U78", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U79", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U80", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U81", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U82", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U83", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U84", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U85", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U86", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U87", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U88", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U89", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U90", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U91", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U92", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U93", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U94", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U95", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U96", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U97", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U98", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U99", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U100", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U101", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U102", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U103", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U104", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U105", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U106", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U107", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U108", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U109", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U110", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U111", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mul_8s_8s_16_3_U112", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8sbkb_U113", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8sbkb_U114", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8sbkb_U115", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8sbkb_U116", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8sbkb_U117", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8sbkb_U118", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8sbkb_U119", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8sbkb_U120", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8sbkb_U121", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8sbkb_U122", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8sbkb_U123", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8sbkb_U124", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8sbkb_U125", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8sbkb_U126", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8sbkb_U127", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8sbkb_U128", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U129", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U130", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U131", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U132", "Parent" : "0"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U133", "Parent" : "0"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U134", "Parent" : "0"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U135", "Parent" : "0"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U136", "Parent" : "0"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U137", "Parent" : "0"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U138", "Parent" : "0"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U139", "Parent" : "0"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U140", "Parent" : "0"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U141", "Parent" : "0"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U142", "Parent" : "0"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U143", "Parent" : "0"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U144", "Parent" : "0"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U145", "Parent" : "0"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U146", "Parent" : "0"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U147", "Parent" : "0"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U148", "Parent" : "0"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U149", "Parent" : "0"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U150", "Parent" : "0"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U151", "Parent" : "0"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U152", "Parent" : "0"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U153", "Parent" : "0"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U154", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U155", "Parent" : "0"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U156", "Parent" : "0"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U157", "Parent" : "0"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U158", "Parent" : "0"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U159", "Parent" : "0"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U160", "Parent" : "0"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U161", "Parent" : "0"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U162", "Parent" : "0"},
	{"ID" : "187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U163", "Parent" : "0"},
	{"ID" : "188", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U164", "Parent" : "0"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U165", "Parent" : "0"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U166", "Parent" : "0"},
	{"ID" : "191", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U167", "Parent" : "0"},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U168", "Parent" : "0"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U169", "Parent" : "0"},
	{"ID" : "194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U170", "Parent" : "0"},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U171", "Parent" : "0"},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U172", "Parent" : "0"},
	{"ID" : "197", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U173", "Parent" : "0"},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U174", "Parent" : "0"},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U175", "Parent" : "0"},
	{"ID" : "200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U176", "Parent" : "0"},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U177", "Parent" : "0"},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U178", "Parent" : "0"},
	{"ID" : "203", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U179", "Parent" : "0"},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U180", "Parent" : "0"},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U181", "Parent" : "0"},
	{"ID" : "206", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U182", "Parent" : "0"},
	{"ID" : "207", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U183", "Parent" : "0"},
	{"ID" : "208", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U184", "Parent" : "0"},
	{"ID" : "209", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U185", "Parent" : "0"},
	{"ID" : "210", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U186", "Parent" : "0"},
	{"ID" : "211", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U187", "Parent" : "0"},
	{"ID" : "212", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U188", "Parent" : "0"},
	{"ID" : "213", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U189", "Parent" : "0"},
	{"ID" : "214", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U190", "Parent" : "0"},
	{"ID" : "215", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U191", "Parent" : "0"},
	{"ID" : "216", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U192", "Parent" : "0"},
	{"ID" : "217", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U193", "Parent" : "0"},
	{"ID" : "218", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U194", "Parent" : "0"},
	{"ID" : "219", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U195", "Parent" : "0"},
	{"ID" : "220", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U196", "Parent" : "0"},
	{"ID" : "221", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U197", "Parent" : "0"},
	{"ID" : "222", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U198", "Parent" : "0"},
	{"ID" : "223", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U199", "Parent" : "0"},
	{"ID" : "224", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U200", "Parent" : "0"},
	{"ID" : "225", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U201", "Parent" : "0"},
	{"ID" : "226", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U202", "Parent" : "0"},
	{"ID" : "227", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U203", "Parent" : "0"},
	{"ID" : "228", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U204", "Parent" : "0"},
	{"ID" : "229", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U205", "Parent" : "0"},
	{"ID" : "230", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U206", "Parent" : "0"},
	{"ID" : "231", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U207", "Parent" : "0"},
	{"ID" : "232", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U208", "Parent" : "0"},
	{"ID" : "233", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U209", "Parent" : "0"},
	{"ID" : "234", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U210", "Parent" : "0"},
	{"ID" : "235", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U211", "Parent" : "0"},
	{"ID" : "236", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U212", "Parent" : "0"},
	{"ID" : "237", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U213", "Parent" : "0"},
	{"ID" : "238", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U214", "Parent" : "0"},
	{"ID" : "239", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U215", "Parent" : "0"},
	{"ID" : "240", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U216", "Parent" : "0"},
	{"ID" : "241", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U217", "Parent" : "0"},
	{"ID" : "242", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U218", "Parent" : "0"},
	{"ID" : "243", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U219", "Parent" : "0"},
	{"ID" : "244", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U220", "Parent" : "0"},
	{"ID" : "245", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U221", "Parent" : "0"},
	{"ID" : "246", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U222", "Parent" : "0"},
	{"ID" : "247", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U223", "Parent" : "0"},
	{"ID" : "248", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U224", "Parent" : "0"},
	{"ID" : "249", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U225", "Parent" : "0"},
	{"ID" : "250", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8sdEe_U226", "Parent" : "0"},
	{"ID" : "251", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U227", "Parent" : "0"},
	{"ID" : "252", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8sdEe_U228", "Parent" : "0"},
	{"ID" : "253", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U229", "Parent" : "0"},
	{"ID" : "254", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8sdEe_U230", "Parent" : "0"},
	{"ID" : "255", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U231", "Parent" : "0"},
	{"ID" : "256", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8sdEe_U232", "Parent" : "0"},
	{"ID" : "257", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U233", "Parent" : "0"},
	{"ID" : "258", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8sdEe_U234", "Parent" : "0"},
	{"ID" : "259", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U235", "Parent" : "0"},
	{"ID" : "260", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8sdEe_U236", "Parent" : "0"},
	{"ID" : "261", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U237", "Parent" : "0"},
	{"ID" : "262", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8sdEe_U238", "Parent" : "0"},
	{"ID" : "263", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U239", "Parent" : "0"},
	{"ID" : "264", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8sdEe_U240", "Parent" : "0"},
	{"ID" : "265", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U241", "Parent" : "0"},
	{"ID" : "266", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8sdEe_U242", "Parent" : "0"},
	{"ID" : "267", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U243", "Parent" : "0"},
	{"ID" : "268", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8sdEe_U244", "Parent" : "0"},
	{"ID" : "269", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U245", "Parent" : "0"},
	{"ID" : "270", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8sdEe_U246", "Parent" : "0"},
	{"ID" : "271", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U247", "Parent" : "0"},
	{"ID" : "272", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8sdEe_U248", "Parent" : "0"},
	{"ID" : "273", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U249", "Parent" : "0"},
	{"ID" : "274", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8sdEe_U250", "Parent" : "0"},
	{"ID" : "275", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U251", "Parent" : "0"},
	{"ID" : "276", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8sdEe_U252", "Parent" : "0"},
	{"ID" : "277", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U253", "Parent" : "0"},
	{"ID" : "278", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8sdEe_U254", "Parent" : "0"},
	{"ID" : "279", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8scud_U255", "Parent" : "0"},
	{"ID" : "280", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vta_mac_muladd_8sdEe_U256", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	vta {
		ins_port {Type I LastRead 8 FirstWrite -1}
		uop_port {Type I LastRead 18 FirstWrite -1}
		narrow_port {Type I LastRead 18 FirstWrite -1}
		wide_port {Type IO LastRead 18 FirstWrite 14}
		insn_count {Type I LastRead 0 FirstWrite -1}
		insns {Type I LastRead 0 FirstWrite -1}
		uops {Type I LastRead 0 FirstWrite -1}
		inputs_V {Type I LastRead 0 FirstWrite -1}
		weights_V {Type I LastRead 0 FirstWrite -1}
		biases_V {Type I LastRead 0 FirstWrite -1}
		outputs_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
	{"Pipeline" : "4", "EnableSignal" : "ap_enable_pp4"}
	{"Pipeline" : "5", "EnableSignal" : "ap_enable_pp5"}
]}

set Spec2ImplPortList { 
	ins_port { m_axi {  { m_axi_ins_port_AWVALID VALID 1 1 }  { m_axi_ins_port_AWREADY READY 0 1 }  { m_axi_ins_port_AWADDR ADDR 1 32 }  { m_axi_ins_port_AWID ID 1 1 }  { m_axi_ins_port_AWLEN LEN 1 8 }  { m_axi_ins_port_AWSIZE SIZE 1 3 }  { m_axi_ins_port_AWBURST BURST 1 2 }  { m_axi_ins_port_AWLOCK LOCK 1 2 }  { m_axi_ins_port_AWCACHE CACHE 1 4 }  { m_axi_ins_port_AWPROT PROT 1 3 }  { m_axi_ins_port_AWQOS QOS 1 4 }  { m_axi_ins_port_AWREGION REGION 1 4 }  { m_axi_ins_port_AWUSER USER 1 1 }  { m_axi_ins_port_WVALID VALID 1 1 }  { m_axi_ins_port_WREADY READY 0 1 }  { m_axi_ins_port_WDATA DATA 1 64 }  { m_axi_ins_port_WSTRB STRB 1 8 }  { m_axi_ins_port_WLAST LAST 1 1 }  { m_axi_ins_port_WID ID 1 1 }  { m_axi_ins_port_WUSER USER 1 1 }  { m_axi_ins_port_ARVALID VALID 1 1 }  { m_axi_ins_port_ARREADY READY 0 1 }  { m_axi_ins_port_ARADDR ADDR 1 32 }  { m_axi_ins_port_ARID ID 1 1 }  { m_axi_ins_port_ARLEN LEN 1 8 }  { m_axi_ins_port_ARSIZE SIZE 1 3 }  { m_axi_ins_port_ARBURST BURST 1 2 }  { m_axi_ins_port_ARLOCK LOCK 1 2 }  { m_axi_ins_port_ARCACHE CACHE 1 4 }  { m_axi_ins_port_ARPROT PROT 1 3 }  { m_axi_ins_port_ARQOS QOS 1 4 }  { m_axi_ins_port_ARREGION REGION 1 4 }  { m_axi_ins_port_ARUSER USER 1 1 }  { m_axi_ins_port_RVALID VALID 0 1 }  { m_axi_ins_port_RREADY READY 1 1 }  { m_axi_ins_port_RDATA DATA 0 64 }  { m_axi_ins_port_RLAST LAST 0 1 }  { m_axi_ins_port_RID ID 0 1 }  { m_axi_ins_port_RUSER USER 0 1 }  { m_axi_ins_port_RRESP RESP 0 2 }  { m_axi_ins_port_BVALID VALID 0 1 }  { m_axi_ins_port_BREADY READY 1 1 }  { m_axi_ins_port_BRESP RESP 0 2 }  { m_axi_ins_port_BID ID 0 1 }  { m_axi_ins_port_BUSER USER 0 1 } } }
	uop_port { m_axi {  { m_axi_uop_port_AWVALID VALID 1 1 }  { m_axi_uop_port_AWREADY READY 0 1 }  { m_axi_uop_port_AWADDR ADDR 1 32 }  { m_axi_uop_port_AWID ID 1 1 }  { m_axi_uop_port_AWLEN LEN 1 8 }  { m_axi_uop_port_AWSIZE SIZE 1 3 }  { m_axi_uop_port_AWBURST BURST 1 2 }  { m_axi_uop_port_AWLOCK LOCK 1 2 }  { m_axi_uop_port_AWCACHE CACHE 1 4 }  { m_axi_uop_port_AWPROT PROT 1 3 }  { m_axi_uop_port_AWQOS QOS 1 4 }  { m_axi_uop_port_AWREGION REGION 1 4 }  { m_axi_uop_port_AWUSER USER 1 1 }  { m_axi_uop_port_WVALID VALID 1 1 }  { m_axi_uop_port_WREADY READY 0 1 }  { m_axi_uop_port_WDATA DATA 1 32 }  { m_axi_uop_port_WSTRB STRB 1 4 }  { m_axi_uop_port_WLAST LAST 1 1 }  { m_axi_uop_port_WID ID 1 1 }  { m_axi_uop_port_WUSER USER 1 1 }  { m_axi_uop_port_ARVALID VALID 1 1 }  { m_axi_uop_port_ARREADY READY 0 1 }  { m_axi_uop_port_ARADDR ADDR 1 32 }  { m_axi_uop_port_ARID ID 1 1 }  { m_axi_uop_port_ARLEN LEN 1 8 }  { m_axi_uop_port_ARSIZE SIZE 1 3 }  { m_axi_uop_port_ARBURST BURST 1 2 }  { m_axi_uop_port_ARLOCK LOCK 1 2 }  { m_axi_uop_port_ARCACHE CACHE 1 4 }  { m_axi_uop_port_ARPROT PROT 1 3 }  { m_axi_uop_port_ARQOS QOS 1 4 }  { m_axi_uop_port_ARREGION REGION 1 4 }  { m_axi_uop_port_ARUSER USER 1 1 }  { m_axi_uop_port_RVALID VALID 0 1 }  { m_axi_uop_port_RREADY READY 1 1 }  { m_axi_uop_port_RDATA DATA 0 32 }  { m_axi_uop_port_RLAST LAST 0 1 }  { m_axi_uop_port_RID ID 0 1 }  { m_axi_uop_port_RUSER USER 0 1 }  { m_axi_uop_port_RRESP RESP 0 2 }  { m_axi_uop_port_BVALID VALID 0 1 }  { m_axi_uop_port_BREADY READY 1 1 }  { m_axi_uop_port_BRESP RESP 0 2 }  { m_axi_uop_port_BID ID 0 1 }  { m_axi_uop_port_BUSER USER 0 1 } } }
	narrow_port { m_axi {  { m_axi_narrow_port_AWVALID VALID 1 1 }  { m_axi_narrow_port_AWREADY READY 0 1 }  { m_axi_narrow_port_AWADDR ADDR 1 32 }  { m_axi_narrow_port_AWID ID 1 1 }  { m_axi_narrow_port_AWLEN LEN 1 8 }  { m_axi_narrow_port_AWSIZE SIZE 1 3 }  { m_axi_narrow_port_AWBURST BURST 1 2 }  { m_axi_narrow_port_AWLOCK LOCK 1 2 }  { m_axi_narrow_port_AWCACHE CACHE 1 4 }  { m_axi_narrow_port_AWPROT PROT 1 3 }  { m_axi_narrow_port_AWQOS QOS 1 4 }  { m_axi_narrow_port_AWREGION REGION 1 4 }  { m_axi_narrow_port_AWUSER USER 1 1 }  { m_axi_narrow_port_WVALID VALID 1 1 }  { m_axi_narrow_port_WREADY READY 0 1 }  { m_axi_narrow_port_WDATA DATA 1 128 }  { m_axi_narrow_port_WSTRB STRB 1 16 }  { m_axi_narrow_port_WLAST LAST 1 1 }  { m_axi_narrow_port_WID ID 1 1 }  { m_axi_narrow_port_WUSER USER 1 1 }  { m_axi_narrow_port_ARVALID VALID 1 1 }  { m_axi_narrow_port_ARREADY READY 0 1 }  { m_axi_narrow_port_ARADDR ADDR 1 32 }  { m_axi_narrow_port_ARID ID 1 1 }  { m_axi_narrow_port_ARLEN LEN 1 8 }  { m_axi_narrow_port_ARSIZE SIZE 1 3 }  { m_axi_narrow_port_ARBURST BURST 1 2 }  { m_axi_narrow_port_ARLOCK LOCK 1 2 }  { m_axi_narrow_port_ARCACHE CACHE 1 4 }  { m_axi_narrow_port_ARPROT PROT 1 3 }  { m_axi_narrow_port_ARQOS QOS 1 4 }  { m_axi_narrow_port_ARREGION REGION 1 4 }  { m_axi_narrow_port_ARUSER USER 1 1 }  { m_axi_narrow_port_RVALID VALID 0 1 }  { m_axi_narrow_port_RREADY READY 1 1 }  { m_axi_narrow_port_RDATA DATA 0 128 }  { m_axi_narrow_port_RLAST LAST 0 1 }  { m_axi_narrow_port_RID ID 0 1 }  { m_axi_narrow_port_RUSER USER 0 1 }  { m_axi_narrow_port_RRESP RESP 0 2 }  { m_axi_narrow_port_BVALID VALID 0 1 }  { m_axi_narrow_port_BREADY READY 1 1 }  { m_axi_narrow_port_BRESP RESP 0 2 }  { m_axi_narrow_port_BID ID 0 1 }  { m_axi_narrow_port_BUSER USER 0 1 } } }
	wide_port { m_axi {  { m_axi_wide_port_AWVALID VALID 1 1 }  { m_axi_wide_port_AWREADY READY 0 1 }  { m_axi_wide_port_AWADDR ADDR 1 32 }  { m_axi_wide_port_AWID ID 1 1 }  { m_axi_wide_port_AWLEN LEN 1 8 }  { m_axi_wide_port_AWSIZE SIZE 1 3 }  { m_axi_wide_port_AWBURST BURST 1 2 }  { m_axi_wide_port_AWLOCK LOCK 1 2 }  { m_axi_wide_port_AWCACHE CACHE 1 4 }  { m_axi_wide_port_AWPROT PROT 1 3 }  { m_axi_wide_port_AWQOS QOS 1 4 }  { m_axi_wide_port_AWREGION REGION 1 4 }  { m_axi_wide_port_AWUSER USER 1 1 }  { m_axi_wide_port_WVALID VALID 1 1 }  { m_axi_wide_port_WREADY READY 0 1 }  { m_axi_wide_port_WDATA DATA 1 512 }  { m_axi_wide_port_WSTRB STRB 1 64 }  { m_axi_wide_port_WLAST LAST 1 1 }  { m_axi_wide_port_WID ID 1 1 }  { m_axi_wide_port_WUSER USER 1 1 }  { m_axi_wide_port_ARVALID VALID 1 1 }  { m_axi_wide_port_ARREADY READY 0 1 }  { m_axi_wide_port_ARADDR ADDR 1 32 }  { m_axi_wide_port_ARID ID 1 1 }  { m_axi_wide_port_ARLEN LEN 1 8 }  { m_axi_wide_port_ARSIZE SIZE 1 3 }  { m_axi_wide_port_ARBURST BURST 1 2 }  { m_axi_wide_port_ARLOCK LOCK 1 2 }  { m_axi_wide_port_ARCACHE CACHE 1 4 }  { m_axi_wide_port_ARPROT PROT 1 3 }  { m_axi_wide_port_ARQOS QOS 1 4 }  { m_axi_wide_port_ARREGION REGION 1 4 }  { m_axi_wide_port_ARUSER USER 1 1 }  { m_axi_wide_port_RVALID VALID 0 1 }  { m_axi_wide_port_RREADY READY 1 1 }  { m_axi_wide_port_RDATA DATA 0 512 }  { m_axi_wide_port_RLAST LAST 0 1 }  { m_axi_wide_port_RID ID 0 1 }  { m_axi_wide_port_RUSER USER 0 1 }  { m_axi_wide_port_RRESP RESP 0 2 }  { m_axi_wide_port_BVALID VALID 0 1 }  { m_axi_wide_port_BREADY READY 1 1 }  { m_axi_wide_port_BRESP RESP 0 2 }  { m_axi_wide_port_BID ID 0 1 }  { m_axi_wide_port_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ ins_port { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ uop_port { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ narrow_port { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ wide_port { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ ins_port 1 }
	{ uop_port 1 }
	{ narrow_port 1 }
	{ wide_port 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ ins_port 1 }
	{ uop_port 1 }
	{ narrow_port 1 }
	{ wide_port 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}

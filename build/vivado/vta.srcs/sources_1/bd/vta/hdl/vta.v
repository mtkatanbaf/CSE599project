//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
//Date        : Mon Apr 23 11:56:56 2018
//Host        : mohamad-N43SL running 64-bit Ubuntu 16.04.4 LTS
//Command     : generate_target vta.bd
//Design      : vta
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module m00_couplers_imp_FJG0QJ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_1RPBDQ6
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [0:0]m01_couplers_to_m01_couplers_ARREADY;
  wire [0:0]m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [0:0]m01_couplers_to_m01_couplers_AWREADY;
  wire [0:0]m01_couplers_to_m01_couplers_AWVALID;
  wire [0:0]m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire [0:0]m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire [0:0]m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire [0:0]m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire [0:0]m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire [0:0]m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready[0] = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready[0] = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid[0] = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid[0] = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready[0] = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid[0];
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid[0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready[0];
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready[0];
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_1490801
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [11:0]s00_couplers_to_auto_pc_WID;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  vta_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wid(s00_couplers_to_auto_pc_WID),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

(* CORE_GENERATION_INFO = "vta,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=vta,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=12,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=4,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "vta.hwdef" *) 
module vta
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;

  wire [31:0]axi_interconnect_1_M01_AXI_ARADDR;
  wire axi_interconnect_1_M01_AXI_ARREADY;
  wire [0:0]axi_interconnect_1_M01_AXI_ARVALID;
  wire [31:0]axi_interconnect_1_M01_AXI_AWADDR;
  wire axi_interconnect_1_M01_AXI_AWREADY;
  wire [0:0]axi_interconnect_1_M01_AXI_AWVALID;
  wire [0:0]axi_interconnect_1_M01_AXI_BREADY;
  wire [1:0]axi_interconnect_1_M01_AXI_BRESP;
  wire axi_interconnect_1_M01_AXI_BVALID;
  wire [31:0]axi_interconnect_1_M01_AXI_RDATA;
  wire [0:0]axi_interconnect_1_M01_AXI_RREADY;
  wire [1:0]axi_interconnect_1_M01_AXI_RRESP;
  wire axi_interconnect_1_M01_AXI_RVALID;
  wire [31:0]axi_interconnect_1_M01_AXI_WDATA;
  wire axi_interconnect_1_M01_AXI_WREADY;
  wire [3:0]axi_interconnect_1_M01_AXI_WSTRB;
  wire [0:0]axi_interconnect_1_M01_AXI_WVALID;
  wire [31:0]axi_smc_M00_AXI_ARADDR;
  wire [1:0]axi_smc_M00_AXI_ARBURST;
  wire [3:0]axi_smc_M00_AXI_ARCACHE;
  wire [3:0]axi_smc_M00_AXI_ARLEN;
  wire [1:0]axi_smc_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_M00_AXI_ARPROT;
  wire [3:0]axi_smc_M00_AXI_ARQOS;
  wire axi_smc_M00_AXI_ARREADY;
  wire [2:0]axi_smc_M00_AXI_ARSIZE;
  wire axi_smc_M00_AXI_ARVALID;
  wire [31:0]axi_smc_M00_AXI_AWADDR;
  wire [1:0]axi_smc_M00_AXI_AWBURST;
  wire [3:0]axi_smc_M00_AXI_AWCACHE;
  wire [3:0]axi_smc_M00_AXI_AWLEN;
  wire [1:0]axi_smc_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_M00_AXI_AWPROT;
  wire [3:0]axi_smc_M00_AXI_AWQOS;
  wire axi_smc_M00_AXI_AWREADY;
  wire [2:0]axi_smc_M00_AXI_AWSIZE;
  wire axi_smc_M00_AXI_AWVALID;
  wire axi_smc_M00_AXI_BREADY;
  wire [1:0]axi_smc_M00_AXI_BRESP;
  wire axi_smc_M00_AXI_BVALID;
  wire [63:0]axi_smc_M00_AXI_RDATA;
  wire axi_smc_M00_AXI_RLAST;
  wire axi_smc_M00_AXI_RREADY;
  wire [1:0]axi_smc_M00_AXI_RRESP;
  wire axi_smc_M00_AXI_RVALID;
  wire [63:0]axi_smc_M00_AXI_WDATA;
  wire axi_smc_M00_AXI_WLAST;
  wire axi_smc_M00_AXI_WREADY;
  wire [7:0]axi_smc_M00_AXI_WSTRB;
  wire axi_smc_M00_AXI_WVALID;
  wire axi_timer_1_interrupt;
  wire [0:0]proc_sys_reset_interconnect_aresetn;
  wire [0:0]proc_sys_reset_peripheral_aresetn;
  wire processing_system7_1_FCLK_CLK;
  wire [31:0]processing_system7_1_axi_periph_m00_axi_ARADDR;
  wire processing_system7_1_axi_periph_m00_axi_ARREADY;
  wire processing_system7_1_axi_periph_m00_axi_ARVALID;
  wire [31:0]processing_system7_1_axi_periph_m00_axi_AWADDR;
  wire processing_system7_1_axi_periph_m00_axi_AWREADY;
  wire processing_system7_1_axi_periph_m00_axi_AWVALID;
  wire processing_system7_1_axi_periph_m00_axi_BREADY;
  wire [1:0]processing_system7_1_axi_periph_m00_axi_BRESP;
  wire processing_system7_1_axi_periph_m00_axi_BVALID;
  wire [31:0]processing_system7_1_axi_periph_m00_axi_RDATA;
  wire processing_system7_1_axi_periph_m00_axi_RREADY;
  wire [1:0]processing_system7_1_axi_periph_m00_axi_RRESP;
  wire processing_system7_1_axi_periph_m00_axi_RVALID;
  wire [31:0]processing_system7_1_axi_periph_m00_axi_WDATA;
  wire processing_system7_1_axi_periph_m00_axi_WREADY;
  wire [3:0]processing_system7_1_axi_periph_m00_axi_WSTRB;
  wire processing_system7_1_axi_periph_m00_axi_WVALID;
  wire [14:0]processing_system7_1_ddr_ADDR;
  wire [2:0]processing_system7_1_ddr_BA;
  wire processing_system7_1_ddr_CAS_N;
  wire processing_system7_1_ddr_CKE;
  wire processing_system7_1_ddr_CK_N;
  wire processing_system7_1_ddr_CK_P;
  wire processing_system7_1_ddr_CS_N;
  wire [3:0]processing_system7_1_ddr_DM;
  wire [31:0]processing_system7_1_ddr_DQ;
  wire [3:0]processing_system7_1_ddr_DQS_N;
  wire [3:0]processing_system7_1_ddr_DQS_P;
  wire processing_system7_1_ddr_ODT;
  wire processing_system7_1_ddr_RAS_N;
  wire processing_system7_1_ddr_RESET_N;
  wire processing_system7_1_ddr_WE_N;
  wire processing_system7_1_fclk_reset0_n;
  wire processing_system7_1_fixed_io_DDR_VRN;
  wire processing_system7_1_fixed_io_DDR_VRP;
  wire [53:0]processing_system7_1_fixed_io_MIO;
  wire processing_system7_1_fixed_io_PS_CLK;
  wire processing_system7_1_fixed_io_PS_PORB;
  wire processing_system7_1_fixed_io_PS_SRSTB;
  wire [31:0]processing_system7_1_m_axi_gp0_ARADDR;
  wire [1:0]processing_system7_1_m_axi_gp0_ARBURST;
  wire [3:0]processing_system7_1_m_axi_gp0_ARCACHE;
  wire [11:0]processing_system7_1_m_axi_gp0_ARID;
  wire [3:0]processing_system7_1_m_axi_gp0_ARLEN;
  wire [1:0]processing_system7_1_m_axi_gp0_ARLOCK;
  wire [2:0]processing_system7_1_m_axi_gp0_ARPROT;
  wire [3:0]processing_system7_1_m_axi_gp0_ARQOS;
  wire processing_system7_1_m_axi_gp0_ARREADY;
  wire [2:0]processing_system7_1_m_axi_gp0_ARSIZE;
  wire processing_system7_1_m_axi_gp0_ARVALID;
  wire [31:0]processing_system7_1_m_axi_gp0_AWADDR;
  wire [1:0]processing_system7_1_m_axi_gp0_AWBURST;
  wire [3:0]processing_system7_1_m_axi_gp0_AWCACHE;
  wire [11:0]processing_system7_1_m_axi_gp0_AWID;
  wire [3:0]processing_system7_1_m_axi_gp0_AWLEN;
  wire [1:0]processing_system7_1_m_axi_gp0_AWLOCK;
  wire [2:0]processing_system7_1_m_axi_gp0_AWPROT;
  wire [3:0]processing_system7_1_m_axi_gp0_AWQOS;
  wire processing_system7_1_m_axi_gp0_AWREADY;
  wire [2:0]processing_system7_1_m_axi_gp0_AWSIZE;
  wire processing_system7_1_m_axi_gp0_AWVALID;
  wire [11:0]processing_system7_1_m_axi_gp0_BID;
  wire processing_system7_1_m_axi_gp0_BREADY;
  wire [1:0]processing_system7_1_m_axi_gp0_BRESP;
  wire processing_system7_1_m_axi_gp0_BVALID;
  wire [31:0]processing_system7_1_m_axi_gp0_RDATA;
  wire [11:0]processing_system7_1_m_axi_gp0_RID;
  wire processing_system7_1_m_axi_gp0_RLAST;
  wire processing_system7_1_m_axi_gp0_RREADY;
  wire [1:0]processing_system7_1_m_axi_gp0_RRESP;
  wire processing_system7_1_m_axi_gp0_RVALID;
  wire [31:0]processing_system7_1_m_axi_gp0_WDATA;
  wire [11:0]processing_system7_1_m_axi_gp0_WID;
  wire processing_system7_1_m_axi_gp0_WLAST;
  wire processing_system7_1_m_axi_gp0_WREADY;
  wire [3:0]processing_system7_1_m_axi_gp0_WSTRB;
  wire processing_system7_1_m_axi_gp0_WVALID;
  wire vta_0_interrupt;
  wire [31:0]vta_0_m_axi_ins_port_ARADDR;
  wire [1:0]vta_0_m_axi_ins_port_ARBURST;
  wire [3:0]vta_0_m_axi_ins_port_ARCACHE;
  wire [7:0]vta_0_m_axi_ins_port_ARLEN;
  wire [1:0]vta_0_m_axi_ins_port_ARLOCK;
  wire [2:0]vta_0_m_axi_ins_port_ARPROT;
  wire [3:0]vta_0_m_axi_ins_port_ARQOS;
  wire vta_0_m_axi_ins_port_ARREADY;
  wire [2:0]vta_0_m_axi_ins_port_ARSIZE;
  wire vta_0_m_axi_ins_port_ARVALID;
  wire [31:0]vta_0_m_axi_ins_port_AWADDR;
  wire [1:0]vta_0_m_axi_ins_port_AWBURST;
  wire [3:0]vta_0_m_axi_ins_port_AWCACHE;
  wire [7:0]vta_0_m_axi_ins_port_AWLEN;
  wire [1:0]vta_0_m_axi_ins_port_AWLOCK;
  wire [2:0]vta_0_m_axi_ins_port_AWPROT;
  wire [3:0]vta_0_m_axi_ins_port_AWQOS;
  wire vta_0_m_axi_ins_port_AWREADY;
  wire [2:0]vta_0_m_axi_ins_port_AWSIZE;
  wire vta_0_m_axi_ins_port_AWVALID;
  wire vta_0_m_axi_ins_port_BREADY;
  wire [1:0]vta_0_m_axi_ins_port_BRESP;
  wire vta_0_m_axi_ins_port_BVALID;
  wire [63:0]vta_0_m_axi_ins_port_RDATA;
  wire vta_0_m_axi_ins_port_RLAST;
  wire vta_0_m_axi_ins_port_RREADY;
  wire [1:0]vta_0_m_axi_ins_port_RRESP;
  wire vta_0_m_axi_ins_port_RVALID;
  wire [63:0]vta_0_m_axi_ins_port_WDATA;
  wire vta_0_m_axi_ins_port_WLAST;
  wire vta_0_m_axi_ins_port_WREADY;
  wire [7:0]vta_0_m_axi_ins_port_WSTRB;
  wire vta_0_m_axi_ins_port_WVALID;
  wire [31:0]vta_0_m_axi_narrow_port_ARADDR;
  wire [1:0]vta_0_m_axi_narrow_port_ARBURST;
  wire [3:0]vta_0_m_axi_narrow_port_ARCACHE;
  wire [7:0]vta_0_m_axi_narrow_port_ARLEN;
  wire [1:0]vta_0_m_axi_narrow_port_ARLOCK;
  wire [2:0]vta_0_m_axi_narrow_port_ARPROT;
  wire [3:0]vta_0_m_axi_narrow_port_ARQOS;
  wire vta_0_m_axi_narrow_port_ARREADY;
  wire [2:0]vta_0_m_axi_narrow_port_ARSIZE;
  wire vta_0_m_axi_narrow_port_ARVALID;
  wire [31:0]vta_0_m_axi_narrow_port_AWADDR;
  wire [1:0]vta_0_m_axi_narrow_port_AWBURST;
  wire [3:0]vta_0_m_axi_narrow_port_AWCACHE;
  wire [7:0]vta_0_m_axi_narrow_port_AWLEN;
  wire [1:0]vta_0_m_axi_narrow_port_AWLOCK;
  wire [2:0]vta_0_m_axi_narrow_port_AWPROT;
  wire [3:0]vta_0_m_axi_narrow_port_AWQOS;
  wire vta_0_m_axi_narrow_port_AWREADY;
  wire [2:0]vta_0_m_axi_narrow_port_AWSIZE;
  wire vta_0_m_axi_narrow_port_AWVALID;
  wire vta_0_m_axi_narrow_port_BREADY;
  wire [1:0]vta_0_m_axi_narrow_port_BRESP;
  wire vta_0_m_axi_narrow_port_BVALID;
  wire [127:0]vta_0_m_axi_narrow_port_RDATA;
  wire vta_0_m_axi_narrow_port_RLAST;
  wire vta_0_m_axi_narrow_port_RREADY;
  wire [1:0]vta_0_m_axi_narrow_port_RRESP;
  wire vta_0_m_axi_narrow_port_RVALID;
  wire [127:0]vta_0_m_axi_narrow_port_WDATA;
  wire vta_0_m_axi_narrow_port_WLAST;
  wire vta_0_m_axi_narrow_port_WREADY;
  wire [15:0]vta_0_m_axi_narrow_port_WSTRB;
  wire vta_0_m_axi_narrow_port_WVALID;
  wire [31:0]vta_0_m_axi_uop_port_ARADDR;
  wire [1:0]vta_0_m_axi_uop_port_ARBURST;
  wire [3:0]vta_0_m_axi_uop_port_ARCACHE;
  wire [7:0]vta_0_m_axi_uop_port_ARLEN;
  wire [1:0]vta_0_m_axi_uop_port_ARLOCK;
  wire [2:0]vta_0_m_axi_uop_port_ARPROT;
  wire [3:0]vta_0_m_axi_uop_port_ARQOS;
  wire vta_0_m_axi_uop_port_ARREADY;
  wire [2:0]vta_0_m_axi_uop_port_ARSIZE;
  wire vta_0_m_axi_uop_port_ARVALID;
  wire [31:0]vta_0_m_axi_uop_port_AWADDR;
  wire [1:0]vta_0_m_axi_uop_port_AWBURST;
  wire [3:0]vta_0_m_axi_uop_port_AWCACHE;
  wire [7:0]vta_0_m_axi_uop_port_AWLEN;
  wire [1:0]vta_0_m_axi_uop_port_AWLOCK;
  wire [2:0]vta_0_m_axi_uop_port_AWPROT;
  wire [3:0]vta_0_m_axi_uop_port_AWQOS;
  wire vta_0_m_axi_uop_port_AWREADY;
  wire [2:0]vta_0_m_axi_uop_port_AWSIZE;
  wire vta_0_m_axi_uop_port_AWVALID;
  wire vta_0_m_axi_uop_port_BREADY;
  wire [1:0]vta_0_m_axi_uop_port_BRESP;
  wire vta_0_m_axi_uop_port_BVALID;
  wire [31:0]vta_0_m_axi_uop_port_RDATA;
  wire vta_0_m_axi_uop_port_RLAST;
  wire vta_0_m_axi_uop_port_RREADY;
  wire [1:0]vta_0_m_axi_uop_port_RRESP;
  wire vta_0_m_axi_uop_port_RVALID;
  wire [31:0]vta_0_m_axi_uop_port_WDATA;
  wire vta_0_m_axi_uop_port_WLAST;
  wire vta_0_m_axi_uop_port_WREADY;
  wire [3:0]vta_0_m_axi_uop_port_WSTRB;
  wire vta_0_m_axi_uop_port_WVALID;
  wire [31:0]vta_0_m_axi_wide_port_ARADDR;
  wire [1:0]vta_0_m_axi_wide_port_ARBURST;
  wire [3:0]vta_0_m_axi_wide_port_ARCACHE;
  wire [7:0]vta_0_m_axi_wide_port_ARLEN;
  wire [1:0]vta_0_m_axi_wide_port_ARLOCK;
  wire [2:0]vta_0_m_axi_wide_port_ARPROT;
  wire [3:0]vta_0_m_axi_wide_port_ARQOS;
  wire vta_0_m_axi_wide_port_ARREADY;
  wire [2:0]vta_0_m_axi_wide_port_ARSIZE;
  wire vta_0_m_axi_wide_port_ARVALID;
  wire [31:0]vta_0_m_axi_wide_port_AWADDR;
  wire [1:0]vta_0_m_axi_wide_port_AWBURST;
  wire [3:0]vta_0_m_axi_wide_port_AWCACHE;
  wire [7:0]vta_0_m_axi_wide_port_AWLEN;
  wire [1:0]vta_0_m_axi_wide_port_AWLOCK;
  wire [2:0]vta_0_m_axi_wide_port_AWPROT;
  wire [3:0]vta_0_m_axi_wide_port_AWQOS;
  wire vta_0_m_axi_wide_port_AWREADY;
  wire [2:0]vta_0_m_axi_wide_port_AWSIZE;
  wire vta_0_m_axi_wide_port_AWVALID;
  wire vta_0_m_axi_wide_port_BREADY;
  wire [1:0]vta_0_m_axi_wide_port_BRESP;
  wire vta_0_m_axi_wide_port_BVALID;
  wire [511:0]vta_0_m_axi_wide_port_RDATA;
  wire vta_0_m_axi_wide_port_RLAST;
  wire vta_0_m_axi_wide_port_RREADY;
  wire [1:0]vta_0_m_axi_wide_port_RRESP;
  wire vta_0_m_axi_wide_port_RVALID;
  wire [511:0]vta_0_m_axi_wide_port_WDATA;
  wire vta_0_m_axi_wide_port_WLAST;
  wire vta_0_m_axi_wide_port_WREADY;
  wire [63:0]vta_0_m_axi_wide_port_WSTRB;
  wire vta_0_m_axi_wide_port_WVALID;
  wire [1:0]xlconcat_1_dout;

  vta_axi_interconnect_1_0 axi_interconnect_1
       (.ACLK(processing_system7_1_FCLK_CLK),
        .ARESETN(proc_sys_reset_interconnect_aresetn),
        .M00_ACLK(processing_system7_1_FCLK_CLK),
        .M00_ARESETN(proc_sys_reset_peripheral_aresetn),
        .M00_AXI_araddr(processing_system7_1_axi_periph_m00_axi_ARADDR),
        .M00_AXI_arready(processing_system7_1_axi_periph_m00_axi_ARREADY),
        .M00_AXI_arvalid(processing_system7_1_axi_periph_m00_axi_ARVALID),
        .M00_AXI_awaddr(processing_system7_1_axi_periph_m00_axi_AWADDR),
        .M00_AXI_awready(processing_system7_1_axi_periph_m00_axi_AWREADY),
        .M00_AXI_awvalid(processing_system7_1_axi_periph_m00_axi_AWVALID),
        .M00_AXI_bready(processing_system7_1_axi_periph_m00_axi_BREADY),
        .M00_AXI_bresp(processing_system7_1_axi_periph_m00_axi_BRESP),
        .M00_AXI_bvalid(processing_system7_1_axi_periph_m00_axi_BVALID),
        .M00_AXI_rdata(processing_system7_1_axi_periph_m00_axi_RDATA),
        .M00_AXI_rready(processing_system7_1_axi_periph_m00_axi_RREADY),
        .M00_AXI_rresp(processing_system7_1_axi_periph_m00_axi_RRESP),
        .M00_AXI_rvalid(processing_system7_1_axi_periph_m00_axi_RVALID),
        .M00_AXI_wdata(processing_system7_1_axi_periph_m00_axi_WDATA),
        .M00_AXI_wready(processing_system7_1_axi_periph_m00_axi_WREADY),
        .M00_AXI_wstrb(processing_system7_1_axi_periph_m00_axi_WSTRB),
        .M00_AXI_wvalid(processing_system7_1_axi_periph_m00_axi_WVALID),
        .M01_ACLK(processing_system7_1_FCLK_CLK),
        .M01_ARESETN(proc_sys_reset_peripheral_aresetn),
        .M01_AXI_araddr(axi_interconnect_1_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_interconnect_1_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_interconnect_1_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_1_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_interconnect_1_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_interconnect_1_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_interconnect_1_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_interconnect_1_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_interconnect_1_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_interconnect_1_M01_AXI_RDATA),
        .M01_AXI_rready(axi_interconnect_1_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_interconnect_1_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_interconnect_1_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_interconnect_1_M01_AXI_WDATA),
        .M01_AXI_wready(axi_interconnect_1_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_interconnect_1_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_interconnect_1_M01_AXI_WVALID),
        .S00_ACLK(processing_system7_1_FCLK_CLK),
        .S00_ARESETN(proc_sys_reset_peripheral_aresetn),
        .S00_AXI_araddr(processing_system7_1_m_axi_gp0_ARADDR),
        .S00_AXI_arburst(processing_system7_1_m_axi_gp0_ARBURST),
        .S00_AXI_arcache(processing_system7_1_m_axi_gp0_ARCACHE),
        .S00_AXI_arid(processing_system7_1_m_axi_gp0_ARID),
        .S00_AXI_arlen(processing_system7_1_m_axi_gp0_ARLEN),
        .S00_AXI_arlock(processing_system7_1_m_axi_gp0_ARLOCK),
        .S00_AXI_arprot(processing_system7_1_m_axi_gp0_ARPROT),
        .S00_AXI_arqos(processing_system7_1_m_axi_gp0_ARQOS),
        .S00_AXI_arready(processing_system7_1_m_axi_gp0_ARREADY),
        .S00_AXI_arsize(processing_system7_1_m_axi_gp0_ARSIZE),
        .S00_AXI_arvalid(processing_system7_1_m_axi_gp0_ARVALID),
        .S00_AXI_awaddr(processing_system7_1_m_axi_gp0_AWADDR),
        .S00_AXI_awburst(processing_system7_1_m_axi_gp0_AWBURST),
        .S00_AXI_awcache(processing_system7_1_m_axi_gp0_AWCACHE),
        .S00_AXI_awid(processing_system7_1_m_axi_gp0_AWID),
        .S00_AXI_awlen(processing_system7_1_m_axi_gp0_AWLEN),
        .S00_AXI_awlock(processing_system7_1_m_axi_gp0_AWLOCK),
        .S00_AXI_awprot(processing_system7_1_m_axi_gp0_AWPROT),
        .S00_AXI_awqos(processing_system7_1_m_axi_gp0_AWQOS),
        .S00_AXI_awready(processing_system7_1_m_axi_gp0_AWREADY),
        .S00_AXI_awsize(processing_system7_1_m_axi_gp0_AWSIZE),
        .S00_AXI_awvalid(processing_system7_1_m_axi_gp0_AWVALID),
        .S00_AXI_bid(processing_system7_1_m_axi_gp0_BID),
        .S00_AXI_bready(processing_system7_1_m_axi_gp0_BREADY),
        .S00_AXI_bresp(processing_system7_1_m_axi_gp0_BRESP),
        .S00_AXI_bvalid(processing_system7_1_m_axi_gp0_BVALID),
        .S00_AXI_rdata(processing_system7_1_m_axi_gp0_RDATA),
        .S00_AXI_rid(processing_system7_1_m_axi_gp0_RID),
        .S00_AXI_rlast(processing_system7_1_m_axi_gp0_RLAST),
        .S00_AXI_rready(processing_system7_1_m_axi_gp0_RREADY),
        .S00_AXI_rresp(processing_system7_1_m_axi_gp0_RRESP),
        .S00_AXI_rvalid(processing_system7_1_m_axi_gp0_RVALID),
        .S00_AXI_wdata(processing_system7_1_m_axi_gp0_WDATA),
        .S00_AXI_wid(processing_system7_1_m_axi_gp0_WID),
        .S00_AXI_wlast(processing_system7_1_m_axi_gp0_WLAST),
        .S00_AXI_wready(processing_system7_1_m_axi_gp0_WREADY),
        .S00_AXI_wstrb(processing_system7_1_m_axi_gp0_WSTRB),
        .S00_AXI_wvalid(processing_system7_1_m_axi_gp0_WVALID));
  vta_axi_smc_0 axi_smc
       (.M00_AXI_araddr(axi_smc_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_smc_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_smc_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_smc_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_smc_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_smc_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_M00_AXI_WVALID),
        .S00_AXI_araddr(vta_0_m_axi_ins_port_ARADDR),
        .S00_AXI_arburst(vta_0_m_axi_ins_port_ARBURST),
        .S00_AXI_arcache(vta_0_m_axi_ins_port_ARCACHE),
        .S00_AXI_arlen(vta_0_m_axi_ins_port_ARLEN),
        .S00_AXI_arlock(vta_0_m_axi_ins_port_ARLOCK[0]),
        .S00_AXI_arprot(vta_0_m_axi_ins_port_ARPROT),
        .S00_AXI_arqos(vta_0_m_axi_ins_port_ARQOS),
        .S00_AXI_arready(vta_0_m_axi_ins_port_ARREADY),
        .S00_AXI_arsize(vta_0_m_axi_ins_port_ARSIZE),
        .S00_AXI_arvalid(vta_0_m_axi_ins_port_ARVALID),
        .S00_AXI_awaddr(vta_0_m_axi_ins_port_AWADDR),
        .S00_AXI_awburst(vta_0_m_axi_ins_port_AWBURST),
        .S00_AXI_awcache(vta_0_m_axi_ins_port_AWCACHE),
        .S00_AXI_awlen(vta_0_m_axi_ins_port_AWLEN),
        .S00_AXI_awlock(vta_0_m_axi_ins_port_AWLOCK[0]),
        .S00_AXI_awprot(vta_0_m_axi_ins_port_AWPROT),
        .S00_AXI_awqos(vta_0_m_axi_ins_port_AWQOS),
        .S00_AXI_awready(vta_0_m_axi_ins_port_AWREADY),
        .S00_AXI_awsize(vta_0_m_axi_ins_port_AWSIZE),
        .S00_AXI_awvalid(vta_0_m_axi_ins_port_AWVALID),
        .S00_AXI_bready(vta_0_m_axi_ins_port_BREADY),
        .S00_AXI_bresp(vta_0_m_axi_ins_port_BRESP),
        .S00_AXI_bvalid(vta_0_m_axi_ins_port_BVALID),
        .S00_AXI_rdata(vta_0_m_axi_ins_port_RDATA),
        .S00_AXI_rlast(vta_0_m_axi_ins_port_RLAST),
        .S00_AXI_rready(vta_0_m_axi_ins_port_RREADY),
        .S00_AXI_rresp(vta_0_m_axi_ins_port_RRESP),
        .S00_AXI_rvalid(vta_0_m_axi_ins_port_RVALID),
        .S00_AXI_wdata(vta_0_m_axi_ins_port_WDATA),
        .S00_AXI_wlast(vta_0_m_axi_ins_port_WLAST),
        .S00_AXI_wready(vta_0_m_axi_ins_port_WREADY),
        .S00_AXI_wstrb(vta_0_m_axi_ins_port_WSTRB),
        .S00_AXI_wvalid(vta_0_m_axi_ins_port_WVALID),
        .S01_AXI_araddr(vta_0_m_axi_uop_port_ARADDR),
        .S01_AXI_arburst(vta_0_m_axi_uop_port_ARBURST),
        .S01_AXI_arcache(vta_0_m_axi_uop_port_ARCACHE),
        .S01_AXI_arlen(vta_0_m_axi_uop_port_ARLEN),
        .S01_AXI_arlock(vta_0_m_axi_uop_port_ARLOCK[0]),
        .S01_AXI_arprot(vta_0_m_axi_uop_port_ARPROT),
        .S01_AXI_arqos(vta_0_m_axi_uop_port_ARQOS),
        .S01_AXI_arready(vta_0_m_axi_uop_port_ARREADY),
        .S01_AXI_arsize(vta_0_m_axi_uop_port_ARSIZE),
        .S01_AXI_arvalid(vta_0_m_axi_uop_port_ARVALID),
        .S01_AXI_awaddr(vta_0_m_axi_uop_port_AWADDR),
        .S01_AXI_awburst(vta_0_m_axi_uop_port_AWBURST),
        .S01_AXI_awcache(vta_0_m_axi_uop_port_AWCACHE),
        .S01_AXI_awlen(vta_0_m_axi_uop_port_AWLEN),
        .S01_AXI_awlock(vta_0_m_axi_uop_port_AWLOCK[0]),
        .S01_AXI_awprot(vta_0_m_axi_uop_port_AWPROT),
        .S01_AXI_awqos(vta_0_m_axi_uop_port_AWQOS),
        .S01_AXI_awready(vta_0_m_axi_uop_port_AWREADY),
        .S01_AXI_awsize(vta_0_m_axi_uop_port_AWSIZE),
        .S01_AXI_awvalid(vta_0_m_axi_uop_port_AWVALID),
        .S01_AXI_bready(vta_0_m_axi_uop_port_BREADY),
        .S01_AXI_bresp(vta_0_m_axi_uop_port_BRESP),
        .S01_AXI_bvalid(vta_0_m_axi_uop_port_BVALID),
        .S01_AXI_rdata(vta_0_m_axi_uop_port_RDATA),
        .S01_AXI_rlast(vta_0_m_axi_uop_port_RLAST),
        .S01_AXI_rready(vta_0_m_axi_uop_port_RREADY),
        .S01_AXI_rresp(vta_0_m_axi_uop_port_RRESP),
        .S01_AXI_rvalid(vta_0_m_axi_uop_port_RVALID),
        .S01_AXI_wdata(vta_0_m_axi_uop_port_WDATA),
        .S01_AXI_wlast(vta_0_m_axi_uop_port_WLAST),
        .S01_AXI_wready(vta_0_m_axi_uop_port_WREADY),
        .S01_AXI_wstrb(vta_0_m_axi_uop_port_WSTRB),
        .S01_AXI_wvalid(vta_0_m_axi_uop_port_WVALID),
        .S02_AXI_araddr(vta_0_m_axi_narrow_port_ARADDR),
        .S02_AXI_arburst(vta_0_m_axi_narrow_port_ARBURST),
        .S02_AXI_arcache(vta_0_m_axi_narrow_port_ARCACHE),
        .S02_AXI_arlen(vta_0_m_axi_narrow_port_ARLEN),
        .S02_AXI_arlock(vta_0_m_axi_narrow_port_ARLOCK[0]),
        .S02_AXI_arprot(vta_0_m_axi_narrow_port_ARPROT),
        .S02_AXI_arqos(vta_0_m_axi_narrow_port_ARQOS),
        .S02_AXI_arready(vta_0_m_axi_narrow_port_ARREADY),
        .S02_AXI_arsize(vta_0_m_axi_narrow_port_ARSIZE),
        .S02_AXI_arvalid(vta_0_m_axi_narrow_port_ARVALID),
        .S02_AXI_awaddr(vta_0_m_axi_narrow_port_AWADDR),
        .S02_AXI_awburst(vta_0_m_axi_narrow_port_AWBURST),
        .S02_AXI_awcache(vta_0_m_axi_narrow_port_AWCACHE),
        .S02_AXI_awlen(vta_0_m_axi_narrow_port_AWLEN),
        .S02_AXI_awlock(vta_0_m_axi_narrow_port_AWLOCK[0]),
        .S02_AXI_awprot(vta_0_m_axi_narrow_port_AWPROT),
        .S02_AXI_awqos(vta_0_m_axi_narrow_port_AWQOS),
        .S02_AXI_awready(vta_0_m_axi_narrow_port_AWREADY),
        .S02_AXI_awsize(vta_0_m_axi_narrow_port_AWSIZE),
        .S02_AXI_awvalid(vta_0_m_axi_narrow_port_AWVALID),
        .S02_AXI_bready(vta_0_m_axi_narrow_port_BREADY),
        .S02_AXI_bresp(vta_0_m_axi_narrow_port_BRESP),
        .S02_AXI_bvalid(vta_0_m_axi_narrow_port_BVALID),
        .S02_AXI_rdata(vta_0_m_axi_narrow_port_RDATA),
        .S02_AXI_rlast(vta_0_m_axi_narrow_port_RLAST),
        .S02_AXI_rready(vta_0_m_axi_narrow_port_RREADY),
        .S02_AXI_rresp(vta_0_m_axi_narrow_port_RRESP),
        .S02_AXI_rvalid(vta_0_m_axi_narrow_port_RVALID),
        .S02_AXI_wdata(vta_0_m_axi_narrow_port_WDATA),
        .S02_AXI_wlast(vta_0_m_axi_narrow_port_WLAST),
        .S02_AXI_wready(vta_0_m_axi_narrow_port_WREADY),
        .S02_AXI_wstrb(vta_0_m_axi_narrow_port_WSTRB),
        .S02_AXI_wvalid(vta_0_m_axi_narrow_port_WVALID),
        .S03_AXI_araddr(vta_0_m_axi_wide_port_ARADDR),
        .S03_AXI_arburst(vta_0_m_axi_wide_port_ARBURST),
        .S03_AXI_arcache(vta_0_m_axi_wide_port_ARCACHE),
        .S03_AXI_arlen(vta_0_m_axi_wide_port_ARLEN),
        .S03_AXI_arlock(vta_0_m_axi_wide_port_ARLOCK[0]),
        .S03_AXI_arprot(vta_0_m_axi_wide_port_ARPROT),
        .S03_AXI_arqos(vta_0_m_axi_wide_port_ARQOS),
        .S03_AXI_arready(vta_0_m_axi_wide_port_ARREADY),
        .S03_AXI_arsize(vta_0_m_axi_wide_port_ARSIZE),
        .S03_AXI_arvalid(vta_0_m_axi_wide_port_ARVALID),
        .S03_AXI_awaddr(vta_0_m_axi_wide_port_AWADDR),
        .S03_AXI_awburst(vta_0_m_axi_wide_port_AWBURST),
        .S03_AXI_awcache(vta_0_m_axi_wide_port_AWCACHE),
        .S03_AXI_awlen(vta_0_m_axi_wide_port_AWLEN),
        .S03_AXI_awlock(vta_0_m_axi_wide_port_AWLOCK[0]),
        .S03_AXI_awprot(vta_0_m_axi_wide_port_AWPROT),
        .S03_AXI_awqos(vta_0_m_axi_wide_port_AWQOS),
        .S03_AXI_awready(vta_0_m_axi_wide_port_AWREADY),
        .S03_AXI_awsize(vta_0_m_axi_wide_port_AWSIZE),
        .S03_AXI_awvalid(vta_0_m_axi_wide_port_AWVALID),
        .S03_AXI_bready(vta_0_m_axi_wide_port_BREADY),
        .S03_AXI_bresp(vta_0_m_axi_wide_port_BRESP),
        .S03_AXI_bvalid(vta_0_m_axi_wide_port_BVALID),
        .S03_AXI_rdata(vta_0_m_axi_wide_port_RDATA),
        .S03_AXI_rlast(vta_0_m_axi_wide_port_RLAST),
        .S03_AXI_rready(vta_0_m_axi_wide_port_RREADY),
        .S03_AXI_rresp(vta_0_m_axi_wide_port_RRESP),
        .S03_AXI_rvalid(vta_0_m_axi_wide_port_RVALID),
        .S03_AXI_wdata(vta_0_m_axi_wide_port_WDATA),
        .S03_AXI_wlast(vta_0_m_axi_wide_port_WLAST),
        .S03_AXI_wready(vta_0_m_axi_wide_port_WREADY),
        .S03_AXI_wstrb(vta_0_m_axi_wide_port_WSTRB),
        .S03_AXI_wvalid(vta_0_m_axi_wide_port_WVALID),
        .aclk(processing_system7_1_FCLK_CLK),
        .aresetn(proc_sys_reset_peripheral_aresetn));
  vta_axi_timer_1_0 axi_timer_1
       (.capturetrig0(1'b0),
        .capturetrig1(1'b0),
        .freeze(1'b0),
        .interrupt(axi_timer_1_interrupt),
        .s_axi_aclk(processing_system7_1_FCLK_CLK),
        .s_axi_araddr(processing_system7_1_axi_periph_m00_axi_ARADDR[4:0]),
        .s_axi_aresetn(proc_sys_reset_peripheral_aresetn),
        .s_axi_arready(processing_system7_1_axi_periph_m00_axi_ARREADY),
        .s_axi_arvalid(processing_system7_1_axi_periph_m00_axi_ARVALID),
        .s_axi_awaddr(processing_system7_1_axi_periph_m00_axi_AWADDR[4:0]),
        .s_axi_awready(processing_system7_1_axi_periph_m00_axi_AWREADY),
        .s_axi_awvalid(processing_system7_1_axi_periph_m00_axi_AWVALID),
        .s_axi_bready(processing_system7_1_axi_periph_m00_axi_BREADY),
        .s_axi_bresp(processing_system7_1_axi_periph_m00_axi_BRESP),
        .s_axi_bvalid(processing_system7_1_axi_periph_m00_axi_BVALID),
        .s_axi_rdata(processing_system7_1_axi_periph_m00_axi_RDATA),
        .s_axi_rready(processing_system7_1_axi_periph_m00_axi_RREADY),
        .s_axi_rresp(processing_system7_1_axi_periph_m00_axi_RRESP),
        .s_axi_rvalid(processing_system7_1_axi_periph_m00_axi_RVALID),
        .s_axi_wdata(processing_system7_1_axi_periph_m00_axi_WDATA),
        .s_axi_wready(processing_system7_1_axi_periph_m00_axi_WREADY),
        .s_axi_wstrb(processing_system7_1_axi_periph_m00_axi_WSTRB),
        .s_axi_wvalid(processing_system7_1_axi_periph_m00_axi_WVALID));
  vta_proc_sys_reset_0 proc_sys_reset
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_1_fclk_reset0_n),
        .interconnect_aresetn(proc_sys_reset_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_peripheral_aresetn),
        .slowest_sync_clk(processing_system7_1_FCLK_CLK));
  vta_processing_system7_1_0 processing_system7_1
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(processing_system7_1_FCLK_CLK),
        .FCLK_RESET0_N(processing_system7_1_fclk_reset0_n),
        .IRQ_F2P(xlconcat_1_dout),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(processing_system7_1_FCLK_CLK),
        .M_AXI_GP0_ARADDR(processing_system7_1_m_axi_gp0_ARADDR),
        .M_AXI_GP0_ARBURST(processing_system7_1_m_axi_gp0_ARBURST),
        .M_AXI_GP0_ARCACHE(processing_system7_1_m_axi_gp0_ARCACHE),
        .M_AXI_GP0_ARID(processing_system7_1_m_axi_gp0_ARID),
        .M_AXI_GP0_ARLEN(processing_system7_1_m_axi_gp0_ARLEN),
        .M_AXI_GP0_ARLOCK(processing_system7_1_m_axi_gp0_ARLOCK),
        .M_AXI_GP0_ARPROT(processing_system7_1_m_axi_gp0_ARPROT),
        .M_AXI_GP0_ARQOS(processing_system7_1_m_axi_gp0_ARQOS),
        .M_AXI_GP0_ARREADY(processing_system7_1_m_axi_gp0_ARREADY),
        .M_AXI_GP0_ARSIZE(processing_system7_1_m_axi_gp0_ARSIZE),
        .M_AXI_GP0_ARVALID(processing_system7_1_m_axi_gp0_ARVALID),
        .M_AXI_GP0_AWADDR(processing_system7_1_m_axi_gp0_AWADDR),
        .M_AXI_GP0_AWBURST(processing_system7_1_m_axi_gp0_AWBURST),
        .M_AXI_GP0_AWCACHE(processing_system7_1_m_axi_gp0_AWCACHE),
        .M_AXI_GP0_AWID(processing_system7_1_m_axi_gp0_AWID),
        .M_AXI_GP0_AWLEN(processing_system7_1_m_axi_gp0_AWLEN),
        .M_AXI_GP0_AWLOCK(processing_system7_1_m_axi_gp0_AWLOCK),
        .M_AXI_GP0_AWPROT(processing_system7_1_m_axi_gp0_AWPROT),
        .M_AXI_GP0_AWQOS(processing_system7_1_m_axi_gp0_AWQOS),
        .M_AXI_GP0_AWREADY(processing_system7_1_m_axi_gp0_AWREADY),
        .M_AXI_GP0_AWSIZE(processing_system7_1_m_axi_gp0_AWSIZE),
        .M_AXI_GP0_AWVALID(processing_system7_1_m_axi_gp0_AWVALID),
        .M_AXI_GP0_BID(processing_system7_1_m_axi_gp0_BID),
        .M_AXI_GP0_BREADY(processing_system7_1_m_axi_gp0_BREADY),
        .M_AXI_GP0_BRESP(processing_system7_1_m_axi_gp0_BRESP),
        .M_AXI_GP0_BVALID(processing_system7_1_m_axi_gp0_BVALID),
        .M_AXI_GP0_RDATA(processing_system7_1_m_axi_gp0_RDATA),
        .M_AXI_GP0_RID(processing_system7_1_m_axi_gp0_RID),
        .M_AXI_GP0_RLAST(processing_system7_1_m_axi_gp0_RLAST),
        .M_AXI_GP0_RREADY(processing_system7_1_m_axi_gp0_RREADY),
        .M_AXI_GP0_RRESP(processing_system7_1_m_axi_gp0_RRESP),
        .M_AXI_GP0_RVALID(processing_system7_1_m_axi_gp0_RVALID),
        .M_AXI_GP0_WDATA(processing_system7_1_m_axi_gp0_WDATA),
        .M_AXI_GP0_WID(processing_system7_1_m_axi_gp0_WID),
        .M_AXI_GP0_WLAST(processing_system7_1_m_axi_gp0_WLAST),
        .M_AXI_GP0_WREADY(processing_system7_1_m_axi_gp0_WREADY),
        .M_AXI_GP0_WSTRB(processing_system7_1_m_axi_gp0_WSTRB),
        .M_AXI_GP0_WVALID(processing_system7_1_m_axi_gp0_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .S_AXI_ACP_ACLK(processing_system7_1_FCLK_CLK),
        .S_AXI_ACP_ARADDR(axi_smc_M00_AXI_ARADDR),
        .S_AXI_ACP_ARBURST(axi_smc_M00_AXI_ARBURST),
        .S_AXI_ACP_ARCACHE(axi_smc_M00_AXI_ARCACHE),
        .S_AXI_ACP_ARID({1'b0,1'b0,1'b0}),
        .S_AXI_ACP_ARLEN(axi_smc_M00_AXI_ARLEN),
        .S_AXI_ACP_ARLOCK(axi_smc_M00_AXI_ARLOCK),
        .S_AXI_ACP_ARPROT(axi_smc_M00_AXI_ARPROT),
        .S_AXI_ACP_ARQOS(axi_smc_M00_AXI_ARQOS),
        .S_AXI_ACP_ARREADY(axi_smc_M00_AXI_ARREADY),
        .S_AXI_ACP_ARSIZE(axi_smc_M00_AXI_ARSIZE),
        .S_AXI_ACP_ARUSER({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_ACP_ARVALID(axi_smc_M00_AXI_ARVALID),
        .S_AXI_ACP_AWADDR(axi_smc_M00_AXI_AWADDR),
        .S_AXI_ACP_AWBURST(axi_smc_M00_AXI_AWBURST),
        .S_AXI_ACP_AWCACHE(axi_smc_M00_AXI_AWCACHE),
        .S_AXI_ACP_AWID({1'b0,1'b0,1'b0}),
        .S_AXI_ACP_AWLEN(axi_smc_M00_AXI_AWLEN),
        .S_AXI_ACP_AWLOCK(axi_smc_M00_AXI_AWLOCK),
        .S_AXI_ACP_AWPROT(axi_smc_M00_AXI_AWPROT),
        .S_AXI_ACP_AWQOS(axi_smc_M00_AXI_AWQOS),
        .S_AXI_ACP_AWREADY(axi_smc_M00_AXI_AWREADY),
        .S_AXI_ACP_AWSIZE(axi_smc_M00_AXI_AWSIZE),
        .S_AXI_ACP_AWUSER({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_ACP_AWVALID(axi_smc_M00_AXI_AWVALID),
        .S_AXI_ACP_BREADY(axi_smc_M00_AXI_BREADY),
        .S_AXI_ACP_BRESP(axi_smc_M00_AXI_BRESP),
        .S_AXI_ACP_BVALID(axi_smc_M00_AXI_BVALID),
        .S_AXI_ACP_RDATA(axi_smc_M00_AXI_RDATA),
        .S_AXI_ACP_RLAST(axi_smc_M00_AXI_RLAST),
        .S_AXI_ACP_RREADY(axi_smc_M00_AXI_RREADY),
        .S_AXI_ACP_RRESP(axi_smc_M00_AXI_RRESP),
        .S_AXI_ACP_RVALID(axi_smc_M00_AXI_RVALID),
        .S_AXI_ACP_WDATA(axi_smc_M00_AXI_WDATA),
        .S_AXI_ACP_WID({1'b0,1'b0,1'b0}),
        .S_AXI_ACP_WLAST(axi_smc_M00_AXI_WLAST),
        .S_AXI_ACP_WREADY(axi_smc_M00_AXI_WREADY),
        .S_AXI_ACP_WSTRB(axi_smc_M00_AXI_WSTRB),
        .S_AXI_ACP_WVALID(axi_smc_M00_AXI_WVALID));
  vta_vta_0_0 vta_0
       (.ap_clk(processing_system7_1_FCLK_CLK),
        .ap_rst_n(proc_sys_reset_peripheral_aresetn),
        .interrupt(vta_0_interrupt),
        .m_axi_ins_port_ARADDR(vta_0_m_axi_ins_port_ARADDR),
        .m_axi_ins_port_ARBURST(vta_0_m_axi_ins_port_ARBURST),
        .m_axi_ins_port_ARCACHE(vta_0_m_axi_ins_port_ARCACHE),
        .m_axi_ins_port_ARLEN(vta_0_m_axi_ins_port_ARLEN),
        .m_axi_ins_port_ARLOCK(vta_0_m_axi_ins_port_ARLOCK),
        .m_axi_ins_port_ARPROT(vta_0_m_axi_ins_port_ARPROT),
        .m_axi_ins_port_ARQOS(vta_0_m_axi_ins_port_ARQOS),
        .m_axi_ins_port_ARREADY(vta_0_m_axi_ins_port_ARREADY),
        .m_axi_ins_port_ARSIZE(vta_0_m_axi_ins_port_ARSIZE),
        .m_axi_ins_port_ARVALID(vta_0_m_axi_ins_port_ARVALID),
        .m_axi_ins_port_AWADDR(vta_0_m_axi_ins_port_AWADDR),
        .m_axi_ins_port_AWBURST(vta_0_m_axi_ins_port_AWBURST),
        .m_axi_ins_port_AWCACHE(vta_0_m_axi_ins_port_AWCACHE),
        .m_axi_ins_port_AWLEN(vta_0_m_axi_ins_port_AWLEN),
        .m_axi_ins_port_AWLOCK(vta_0_m_axi_ins_port_AWLOCK),
        .m_axi_ins_port_AWPROT(vta_0_m_axi_ins_port_AWPROT),
        .m_axi_ins_port_AWQOS(vta_0_m_axi_ins_port_AWQOS),
        .m_axi_ins_port_AWREADY(vta_0_m_axi_ins_port_AWREADY),
        .m_axi_ins_port_AWSIZE(vta_0_m_axi_ins_port_AWSIZE),
        .m_axi_ins_port_AWVALID(vta_0_m_axi_ins_port_AWVALID),
        .m_axi_ins_port_BREADY(vta_0_m_axi_ins_port_BREADY),
        .m_axi_ins_port_BRESP(vta_0_m_axi_ins_port_BRESP),
        .m_axi_ins_port_BVALID(vta_0_m_axi_ins_port_BVALID),
        .m_axi_ins_port_RDATA(vta_0_m_axi_ins_port_RDATA),
        .m_axi_ins_port_RLAST(vta_0_m_axi_ins_port_RLAST),
        .m_axi_ins_port_RREADY(vta_0_m_axi_ins_port_RREADY),
        .m_axi_ins_port_RRESP(vta_0_m_axi_ins_port_RRESP),
        .m_axi_ins_port_RVALID(vta_0_m_axi_ins_port_RVALID),
        .m_axi_ins_port_WDATA(vta_0_m_axi_ins_port_WDATA),
        .m_axi_ins_port_WLAST(vta_0_m_axi_ins_port_WLAST),
        .m_axi_ins_port_WREADY(vta_0_m_axi_ins_port_WREADY),
        .m_axi_ins_port_WSTRB(vta_0_m_axi_ins_port_WSTRB),
        .m_axi_ins_port_WVALID(vta_0_m_axi_ins_port_WVALID),
        .m_axi_narrow_port_ARADDR(vta_0_m_axi_narrow_port_ARADDR),
        .m_axi_narrow_port_ARBURST(vta_0_m_axi_narrow_port_ARBURST),
        .m_axi_narrow_port_ARCACHE(vta_0_m_axi_narrow_port_ARCACHE),
        .m_axi_narrow_port_ARLEN(vta_0_m_axi_narrow_port_ARLEN),
        .m_axi_narrow_port_ARLOCK(vta_0_m_axi_narrow_port_ARLOCK),
        .m_axi_narrow_port_ARPROT(vta_0_m_axi_narrow_port_ARPROT),
        .m_axi_narrow_port_ARQOS(vta_0_m_axi_narrow_port_ARQOS),
        .m_axi_narrow_port_ARREADY(vta_0_m_axi_narrow_port_ARREADY),
        .m_axi_narrow_port_ARSIZE(vta_0_m_axi_narrow_port_ARSIZE),
        .m_axi_narrow_port_ARVALID(vta_0_m_axi_narrow_port_ARVALID),
        .m_axi_narrow_port_AWADDR(vta_0_m_axi_narrow_port_AWADDR),
        .m_axi_narrow_port_AWBURST(vta_0_m_axi_narrow_port_AWBURST),
        .m_axi_narrow_port_AWCACHE(vta_0_m_axi_narrow_port_AWCACHE),
        .m_axi_narrow_port_AWLEN(vta_0_m_axi_narrow_port_AWLEN),
        .m_axi_narrow_port_AWLOCK(vta_0_m_axi_narrow_port_AWLOCK),
        .m_axi_narrow_port_AWPROT(vta_0_m_axi_narrow_port_AWPROT),
        .m_axi_narrow_port_AWQOS(vta_0_m_axi_narrow_port_AWQOS),
        .m_axi_narrow_port_AWREADY(vta_0_m_axi_narrow_port_AWREADY),
        .m_axi_narrow_port_AWSIZE(vta_0_m_axi_narrow_port_AWSIZE),
        .m_axi_narrow_port_AWVALID(vta_0_m_axi_narrow_port_AWVALID),
        .m_axi_narrow_port_BREADY(vta_0_m_axi_narrow_port_BREADY),
        .m_axi_narrow_port_BRESP(vta_0_m_axi_narrow_port_BRESP),
        .m_axi_narrow_port_BVALID(vta_0_m_axi_narrow_port_BVALID),
        .m_axi_narrow_port_RDATA(vta_0_m_axi_narrow_port_RDATA),
        .m_axi_narrow_port_RLAST(vta_0_m_axi_narrow_port_RLAST),
        .m_axi_narrow_port_RREADY(vta_0_m_axi_narrow_port_RREADY),
        .m_axi_narrow_port_RRESP(vta_0_m_axi_narrow_port_RRESP),
        .m_axi_narrow_port_RVALID(vta_0_m_axi_narrow_port_RVALID),
        .m_axi_narrow_port_WDATA(vta_0_m_axi_narrow_port_WDATA),
        .m_axi_narrow_port_WLAST(vta_0_m_axi_narrow_port_WLAST),
        .m_axi_narrow_port_WREADY(vta_0_m_axi_narrow_port_WREADY),
        .m_axi_narrow_port_WSTRB(vta_0_m_axi_narrow_port_WSTRB),
        .m_axi_narrow_port_WVALID(vta_0_m_axi_narrow_port_WVALID),
        .m_axi_uop_port_ARADDR(vta_0_m_axi_uop_port_ARADDR),
        .m_axi_uop_port_ARBURST(vta_0_m_axi_uop_port_ARBURST),
        .m_axi_uop_port_ARCACHE(vta_0_m_axi_uop_port_ARCACHE),
        .m_axi_uop_port_ARLEN(vta_0_m_axi_uop_port_ARLEN),
        .m_axi_uop_port_ARLOCK(vta_0_m_axi_uop_port_ARLOCK),
        .m_axi_uop_port_ARPROT(vta_0_m_axi_uop_port_ARPROT),
        .m_axi_uop_port_ARQOS(vta_0_m_axi_uop_port_ARQOS),
        .m_axi_uop_port_ARREADY(vta_0_m_axi_uop_port_ARREADY),
        .m_axi_uop_port_ARSIZE(vta_0_m_axi_uop_port_ARSIZE),
        .m_axi_uop_port_ARVALID(vta_0_m_axi_uop_port_ARVALID),
        .m_axi_uop_port_AWADDR(vta_0_m_axi_uop_port_AWADDR),
        .m_axi_uop_port_AWBURST(vta_0_m_axi_uop_port_AWBURST),
        .m_axi_uop_port_AWCACHE(vta_0_m_axi_uop_port_AWCACHE),
        .m_axi_uop_port_AWLEN(vta_0_m_axi_uop_port_AWLEN),
        .m_axi_uop_port_AWLOCK(vta_0_m_axi_uop_port_AWLOCK),
        .m_axi_uop_port_AWPROT(vta_0_m_axi_uop_port_AWPROT),
        .m_axi_uop_port_AWQOS(vta_0_m_axi_uop_port_AWQOS),
        .m_axi_uop_port_AWREADY(vta_0_m_axi_uop_port_AWREADY),
        .m_axi_uop_port_AWSIZE(vta_0_m_axi_uop_port_AWSIZE),
        .m_axi_uop_port_AWVALID(vta_0_m_axi_uop_port_AWVALID),
        .m_axi_uop_port_BREADY(vta_0_m_axi_uop_port_BREADY),
        .m_axi_uop_port_BRESP(vta_0_m_axi_uop_port_BRESP),
        .m_axi_uop_port_BVALID(vta_0_m_axi_uop_port_BVALID),
        .m_axi_uop_port_RDATA(vta_0_m_axi_uop_port_RDATA),
        .m_axi_uop_port_RLAST(vta_0_m_axi_uop_port_RLAST),
        .m_axi_uop_port_RREADY(vta_0_m_axi_uop_port_RREADY),
        .m_axi_uop_port_RRESP(vta_0_m_axi_uop_port_RRESP),
        .m_axi_uop_port_RVALID(vta_0_m_axi_uop_port_RVALID),
        .m_axi_uop_port_WDATA(vta_0_m_axi_uop_port_WDATA),
        .m_axi_uop_port_WLAST(vta_0_m_axi_uop_port_WLAST),
        .m_axi_uop_port_WREADY(vta_0_m_axi_uop_port_WREADY),
        .m_axi_uop_port_WSTRB(vta_0_m_axi_uop_port_WSTRB),
        .m_axi_uop_port_WVALID(vta_0_m_axi_uop_port_WVALID),
        .m_axi_wide_port_ARADDR(vta_0_m_axi_wide_port_ARADDR),
        .m_axi_wide_port_ARBURST(vta_0_m_axi_wide_port_ARBURST),
        .m_axi_wide_port_ARCACHE(vta_0_m_axi_wide_port_ARCACHE),
        .m_axi_wide_port_ARLEN(vta_0_m_axi_wide_port_ARLEN),
        .m_axi_wide_port_ARLOCK(vta_0_m_axi_wide_port_ARLOCK),
        .m_axi_wide_port_ARPROT(vta_0_m_axi_wide_port_ARPROT),
        .m_axi_wide_port_ARQOS(vta_0_m_axi_wide_port_ARQOS),
        .m_axi_wide_port_ARREADY(vta_0_m_axi_wide_port_ARREADY),
        .m_axi_wide_port_ARSIZE(vta_0_m_axi_wide_port_ARSIZE),
        .m_axi_wide_port_ARVALID(vta_0_m_axi_wide_port_ARVALID),
        .m_axi_wide_port_AWADDR(vta_0_m_axi_wide_port_AWADDR),
        .m_axi_wide_port_AWBURST(vta_0_m_axi_wide_port_AWBURST),
        .m_axi_wide_port_AWCACHE(vta_0_m_axi_wide_port_AWCACHE),
        .m_axi_wide_port_AWLEN(vta_0_m_axi_wide_port_AWLEN),
        .m_axi_wide_port_AWLOCK(vta_0_m_axi_wide_port_AWLOCK),
        .m_axi_wide_port_AWPROT(vta_0_m_axi_wide_port_AWPROT),
        .m_axi_wide_port_AWQOS(vta_0_m_axi_wide_port_AWQOS),
        .m_axi_wide_port_AWREADY(vta_0_m_axi_wide_port_AWREADY),
        .m_axi_wide_port_AWSIZE(vta_0_m_axi_wide_port_AWSIZE),
        .m_axi_wide_port_AWVALID(vta_0_m_axi_wide_port_AWVALID),
        .m_axi_wide_port_BREADY(vta_0_m_axi_wide_port_BREADY),
        .m_axi_wide_port_BRESP(vta_0_m_axi_wide_port_BRESP),
        .m_axi_wide_port_BVALID(vta_0_m_axi_wide_port_BVALID),
        .m_axi_wide_port_RDATA(vta_0_m_axi_wide_port_RDATA),
        .m_axi_wide_port_RLAST(vta_0_m_axi_wide_port_RLAST),
        .m_axi_wide_port_RREADY(vta_0_m_axi_wide_port_RREADY),
        .m_axi_wide_port_RRESP(vta_0_m_axi_wide_port_RRESP),
        .m_axi_wide_port_RVALID(vta_0_m_axi_wide_port_RVALID),
        .m_axi_wide_port_WDATA(vta_0_m_axi_wide_port_WDATA),
        .m_axi_wide_port_WLAST(vta_0_m_axi_wide_port_WLAST),
        .m_axi_wide_port_WREADY(vta_0_m_axi_wide_port_WREADY),
        .m_axi_wide_port_WSTRB(vta_0_m_axi_wide_port_WSTRB),
        .m_axi_wide_port_WVALID(vta_0_m_axi_wide_port_WVALID),
        .s_axi_CONTROL_BUS_ARADDR(axi_interconnect_1_M01_AXI_ARADDR[6:0]),
        .s_axi_CONTROL_BUS_ARREADY(axi_interconnect_1_M01_AXI_ARREADY),
        .s_axi_CONTROL_BUS_ARVALID(axi_interconnect_1_M01_AXI_ARVALID),
        .s_axi_CONTROL_BUS_AWADDR(axi_interconnect_1_M01_AXI_AWADDR[6:0]),
        .s_axi_CONTROL_BUS_AWREADY(axi_interconnect_1_M01_AXI_AWREADY),
        .s_axi_CONTROL_BUS_AWVALID(axi_interconnect_1_M01_AXI_AWVALID),
        .s_axi_CONTROL_BUS_BREADY(axi_interconnect_1_M01_AXI_BREADY),
        .s_axi_CONTROL_BUS_BRESP(axi_interconnect_1_M01_AXI_BRESP),
        .s_axi_CONTROL_BUS_BVALID(axi_interconnect_1_M01_AXI_BVALID),
        .s_axi_CONTROL_BUS_RDATA(axi_interconnect_1_M01_AXI_RDATA),
        .s_axi_CONTROL_BUS_RREADY(axi_interconnect_1_M01_AXI_RREADY),
        .s_axi_CONTROL_BUS_RRESP(axi_interconnect_1_M01_AXI_RRESP),
        .s_axi_CONTROL_BUS_RVALID(axi_interconnect_1_M01_AXI_RVALID),
        .s_axi_CONTROL_BUS_WDATA(axi_interconnect_1_M01_AXI_WDATA),
        .s_axi_CONTROL_BUS_WREADY(axi_interconnect_1_M01_AXI_WREADY),
        .s_axi_CONTROL_BUS_WSTRB(axi_interconnect_1_M01_AXI_WSTRB),
        .s_axi_CONTROL_BUS_WVALID(axi_interconnect_1_M01_AXI_WVALID));
  vta_xlconcat_1_0 xlconcat_1
       (.In0(axi_timer_1_interrupt),
        .In1(vta_0_interrupt),
        .dout(xlconcat_1_dout));
endmodule

module vta_axi_interconnect_1_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  input [0:0]M01_AXI_arready;
  output [0:0]M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input [0:0]M01_AXI_awready;
  output [0:0]M01_AXI_awvalid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input [0:0]M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output [0:0]M01_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_interconnect_1_ACLK_net;
  wire axi_interconnect_1_ARESETN_net;
  wire [31:0]axi_interconnect_1_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_1_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_1_to_s00_couplers_ARCACHE;
  wire [11:0]axi_interconnect_1_to_s00_couplers_ARID;
  wire [3:0]axi_interconnect_1_to_s00_couplers_ARLEN;
  wire [1:0]axi_interconnect_1_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_1_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_1_to_s00_couplers_ARQOS;
  wire axi_interconnect_1_to_s00_couplers_ARREADY;
  wire [2:0]axi_interconnect_1_to_s00_couplers_ARSIZE;
  wire axi_interconnect_1_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_1_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_1_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_1_to_s00_couplers_AWCACHE;
  wire [11:0]axi_interconnect_1_to_s00_couplers_AWID;
  wire [3:0]axi_interconnect_1_to_s00_couplers_AWLEN;
  wire [1:0]axi_interconnect_1_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_1_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_1_to_s00_couplers_AWQOS;
  wire axi_interconnect_1_to_s00_couplers_AWREADY;
  wire [2:0]axi_interconnect_1_to_s00_couplers_AWSIZE;
  wire axi_interconnect_1_to_s00_couplers_AWVALID;
  wire [11:0]axi_interconnect_1_to_s00_couplers_BID;
  wire axi_interconnect_1_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_1_to_s00_couplers_BRESP;
  wire axi_interconnect_1_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_1_to_s00_couplers_RDATA;
  wire [11:0]axi_interconnect_1_to_s00_couplers_RID;
  wire axi_interconnect_1_to_s00_couplers_RLAST;
  wire axi_interconnect_1_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_1_to_s00_couplers_RRESP;
  wire axi_interconnect_1_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_1_to_s00_couplers_WDATA;
  wire [11:0]axi_interconnect_1_to_s00_couplers_WID;
  wire axi_interconnect_1_to_s00_couplers_WLAST;
  wire axi_interconnect_1_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_1_to_s00_couplers_WSTRB;
  wire axi_interconnect_1_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_1_ARADDR;
  wire m00_couplers_to_axi_interconnect_1_ARREADY;
  wire m00_couplers_to_axi_interconnect_1_ARVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_1_AWADDR;
  wire m00_couplers_to_axi_interconnect_1_AWREADY;
  wire m00_couplers_to_axi_interconnect_1_AWVALID;
  wire m00_couplers_to_axi_interconnect_1_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_1_BRESP;
  wire m00_couplers_to_axi_interconnect_1_BVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_1_RDATA;
  wire m00_couplers_to_axi_interconnect_1_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_1_RRESP;
  wire m00_couplers_to_axi_interconnect_1_RVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_1_WDATA;
  wire m00_couplers_to_axi_interconnect_1_WREADY;
  wire [3:0]m00_couplers_to_axi_interconnect_1_WSTRB;
  wire m00_couplers_to_axi_interconnect_1_WVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_1_ARADDR;
  wire [0:0]m01_couplers_to_axi_interconnect_1_ARREADY;
  wire [0:0]m01_couplers_to_axi_interconnect_1_ARVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_1_AWADDR;
  wire [0:0]m01_couplers_to_axi_interconnect_1_AWREADY;
  wire [0:0]m01_couplers_to_axi_interconnect_1_AWVALID;
  wire [0:0]m01_couplers_to_axi_interconnect_1_BREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_1_BRESP;
  wire [0:0]m01_couplers_to_axi_interconnect_1_BVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_1_RDATA;
  wire [0:0]m01_couplers_to_axi_interconnect_1_RREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_1_RRESP;
  wire [0:0]m01_couplers_to_axi_interconnect_1_RVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_1_WDATA;
  wire [0:0]m01_couplers_to_axi_interconnect_1_WREADY;
  wire [3:0]m01_couplers_to_axi_interconnect_1_WSTRB;
  wire [0:0]m01_couplers_to_axi_interconnect_1_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [0:0]xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [0:0]xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire [0:0]xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [0:0]xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [0:0]xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_interconnect_1_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_axi_interconnect_1_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_interconnect_1_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_axi_interconnect_1_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_interconnect_1_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_interconnect_1_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_interconnect_1_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_interconnect_1_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_interconnect_1_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_axi_interconnect_1_ARADDR;
  assign M01_AXI_arvalid[0] = m01_couplers_to_axi_interconnect_1_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_axi_interconnect_1_AWADDR;
  assign M01_AXI_awvalid[0] = m01_couplers_to_axi_interconnect_1_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_axi_interconnect_1_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_axi_interconnect_1_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_interconnect_1_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_interconnect_1_WSTRB;
  assign M01_AXI_wvalid[0] = m01_couplers_to_axi_interconnect_1_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_interconnect_1_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_1_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = axi_interconnect_1_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_1_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_1_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_1_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = axi_interconnect_1_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_interconnect_1_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_1_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_1_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_1_to_s00_couplers_WREADY;
  assign axi_interconnect_1_ACLK_net = ACLK;
  assign axi_interconnect_1_ARESETN_net = ARESETN;
  assign axi_interconnect_1_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_1_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_1_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_1_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign axi_interconnect_1_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign axi_interconnect_1_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign axi_interconnect_1_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_1_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_1_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_1_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_1_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_1_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_1_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_1_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign axi_interconnect_1_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign axi_interconnect_1_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign axi_interconnect_1_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_1_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_1_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_1_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_1_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_1_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_1_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_1_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign axi_interconnect_1_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_1_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_1_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_axi_interconnect_1_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_interconnect_1_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_interconnect_1_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_1_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_interconnect_1_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_interconnect_1_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_1_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_interconnect_1_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_interconnect_1_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_axi_interconnect_1_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_axi_interconnect_1_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_interconnect_1_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_axi_interconnect_1_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_interconnect_1_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_interconnect_1_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_axi_interconnect_1_WREADY = M01_AXI_wready[0];
  m00_couplers_imp_FJG0QJ m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_1_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_1_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_1_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_1_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_1_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_1_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_1_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_1_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_1_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_1_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_1_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_1_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_1_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_1_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_1_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_1_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_1_WVALID),
        .S_ACLK(axi_interconnect_1_ACLK_net),
        .S_ARESETN(axi_interconnect_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1RPBDQ6 m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_axi_interconnect_1_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_interconnect_1_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_interconnect_1_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_interconnect_1_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_interconnect_1_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_interconnect_1_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_interconnect_1_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_interconnect_1_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_interconnect_1_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_interconnect_1_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_interconnect_1_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_interconnect_1_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_interconnect_1_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_interconnect_1_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_interconnect_1_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_interconnect_1_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_interconnect_1_WVALID),
        .S_ACLK(axi_interconnect_1_ACLK_net),
        .S_ARESETN(axi_interconnect_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  s00_couplers_imp_1490801 s00_couplers
       (.M_ACLK(axi_interconnect_1_ACLK_net),
        .M_ARESETN(axi_interconnect_1_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_1_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_1_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_1_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_1_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_1_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_1_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_1_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_1_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_1_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_1_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_1_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_1_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_1_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_1_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_1_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_1_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_1_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_1_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_1_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_1_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_1_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_1_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_1_to_s00_couplers_BID),
        .S_AXI_bready(axi_interconnect_1_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_1_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_1_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_1_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_1_to_s00_couplers_RID),
        .S_AXI_rlast(axi_interconnect_1_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_1_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_1_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_1_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_1_to_s00_couplers_WDATA),
        .S_AXI_wid(axi_interconnect_1_to_s00_couplers_WID),
        .S_AXI_wlast(axi_interconnect_1_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_1_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_1_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_1_to_s00_couplers_WVALID));
  vta_xbar_0 xbar
       (.aclk(axi_interconnect_1_ACLK_net),
        .aresetn(axi_interconnect_1_ARESETN_net),
        .m_axi_araddr({xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arready({xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awready({xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

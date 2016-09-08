//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.2 (lin64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
//Date        : Tue Dec 22 20:48:18 2015
//Host        : dfn-x3100.auger.mtu.edu running 64-bit Scientific Linux release 6.7 (Carbon)
//Command     : generate_target shower_memory.bd
//Design      : shower_memory
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "shower_memory,IP_Integrator,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=shower_memory,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,synth_mode=Global}" *) (* HW_HANDOFF = "shower_memory.hwdef" *) 
module shower_memory
   (ADDRB,
    RST,
    SHWR_DATA0,
    SHWR_DATA1,
    SHWR_DATA2,
    SHWR_DATA3,
    S_AXI0_araddr,
    S_AXI0_arburst,
    S_AXI0_arcache,
    S_AXI0_arlen,
    S_AXI0_arlock,
    S_AXI0_arprot,
    S_AXI0_arready,
    S_AXI0_arsize,
    S_AXI0_arvalid,
    S_AXI0_awaddr,
    S_AXI0_awburst,
    S_AXI0_awcache,
    S_AXI0_awlen,
    S_AXI0_awlock,
    S_AXI0_awprot,
    S_AXI0_awready,
    S_AXI0_awsize,
    S_AXI0_awvalid,
    S_AXI0_bready,
    S_AXI0_bresp,
    S_AXI0_bvalid,
    S_AXI0_rdata,
    S_AXI0_rlast,
    S_AXI0_rready,
    S_AXI0_rresp,
    S_AXI0_rvalid,
    S_AXI0_wdata,
    S_AXI0_wlast,
    S_AXI0_wready,
    S_AXI0_wstrb,
    S_AXI0_wvalid,
    S_AXI1_araddr,
    S_AXI1_arburst,
    S_AXI1_arcache,
    S_AXI1_arlen,
    S_AXI1_arlock,
    S_AXI1_arprot,
    S_AXI1_arready,
    S_AXI1_arsize,
    S_AXI1_arvalid,
    S_AXI1_awaddr,
    S_AXI1_awburst,
    S_AXI1_awcache,
    S_AXI1_awlen,
    S_AXI1_awlock,
    S_AXI1_awprot,
    S_AXI1_awready,
    S_AXI1_awsize,
    S_AXI1_awvalid,
    S_AXI1_bready,
    S_AXI1_bresp,
    S_AXI1_bvalid,
    S_AXI1_rdata,
    S_AXI1_rlast,
    S_AXI1_rready,
    S_AXI1_rresp,
    S_AXI1_rvalid,
    S_AXI1_wdata,
    S_AXI1_wlast,
    S_AXI1_wready,
    S_AXI1_wstrb,
    S_AXI1_wvalid,
    S_AXI2_araddr,
    S_AXI2_arburst,
    S_AXI2_arcache,
    S_AXI2_arlen,
    S_AXI2_arlock,
    S_AXI2_arprot,
    S_AXI2_arready,
    S_AXI2_arsize,
    S_AXI2_arvalid,
    S_AXI2_awaddr,
    S_AXI2_awburst,
    S_AXI2_awcache,
    S_AXI2_awlen,
    S_AXI2_awlock,
    S_AXI2_awprot,
    S_AXI2_awready,
    S_AXI2_awsize,
    S_AXI2_awvalid,
    S_AXI2_bready,
    S_AXI2_bresp,
    S_AXI2_bvalid,
    S_AXI2_rdata,
    S_AXI2_rlast,
    S_AXI2_rready,
    S_AXI2_rresp,
    S_AXI2_rvalid,
    S_AXI2_wdata,
    S_AXI2_wlast,
    S_AXI2_wready,
    S_AXI2_wstrb,
    S_AXI2_wvalid,
    S_AXI3_araddr,
    S_AXI3_arburst,
    S_AXI3_arcache,
    S_AXI3_arlen,
    S_AXI3_arlock,
    S_AXI3_arprot,
    S_AXI3_arready,
    S_AXI3_arsize,
    S_AXI3_arvalid,
    S_AXI3_awaddr,
    S_AXI3_awburst,
    S_AXI3_awcache,
    S_AXI3_awlen,
    S_AXI3_awlock,
    S_AXI3_awprot,
    S_AXI3_awready,
    S_AXI3_awsize,
    S_AXI3_awvalid,
    S_AXI3_bready,
    S_AXI3_bresp,
    S_AXI3_bvalid,
    S_AXI3_rdata,
    S_AXI3_rlast,
    S_AXI3_rready,
    S_AXI3_rresp,
    S_AXI3_rvalid,
    S_AXI3_wdata,
    S_AXI3_wlast,
    S_AXI3_wready,
    S_AXI3_wstrb,
    S_AXI3_wvalid,
    S_AXI_ARESETN,
    S_AXI_CLK,
    TRIGGER_CLK,
    WEB);
  input [31:0]ADDRB;
  input RST;
  input [31:0]SHWR_DATA0;
  input [31:0]SHWR_DATA1;
  input [31:0]SHWR_DATA2;
  input [31:0]SHWR_DATA3;
  input [12:0]S_AXI0_araddr;
  input [1:0]S_AXI0_arburst;
  input [3:0]S_AXI0_arcache;
  input [7:0]S_AXI0_arlen;
  input S_AXI0_arlock;
  input [2:0]S_AXI0_arprot;
  output S_AXI0_arready;
  input [2:0]S_AXI0_arsize;
  input S_AXI0_arvalid;
  input [12:0]S_AXI0_awaddr;
  input [1:0]S_AXI0_awburst;
  input [3:0]S_AXI0_awcache;
  input [7:0]S_AXI0_awlen;
  input S_AXI0_awlock;
  input [2:0]S_AXI0_awprot;
  output S_AXI0_awready;
  input [2:0]S_AXI0_awsize;
  input S_AXI0_awvalid;
  input S_AXI0_bready;
  output [1:0]S_AXI0_bresp;
  output S_AXI0_bvalid;
  output [31:0]S_AXI0_rdata;
  output S_AXI0_rlast;
  input S_AXI0_rready;
  output [1:0]S_AXI0_rresp;
  output S_AXI0_rvalid;
  input [31:0]S_AXI0_wdata;
  input S_AXI0_wlast;
  output S_AXI0_wready;
  input [3:0]S_AXI0_wstrb;
  input S_AXI0_wvalid;
  input [12:0]S_AXI1_araddr;
  input [1:0]S_AXI1_arburst;
  input [3:0]S_AXI1_arcache;
  input [7:0]S_AXI1_arlen;
  input S_AXI1_arlock;
  input [2:0]S_AXI1_arprot;
  output S_AXI1_arready;
  input [2:0]S_AXI1_arsize;
  input S_AXI1_arvalid;
  input [12:0]S_AXI1_awaddr;
  input [1:0]S_AXI1_awburst;
  input [3:0]S_AXI1_awcache;
  input [7:0]S_AXI1_awlen;
  input S_AXI1_awlock;
  input [2:0]S_AXI1_awprot;
  output S_AXI1_awready;
  input [2:0]S_AXI1_awsize;
  input S_AXI1_awvalid;
  input S_AXI1_bready;
  output [1:0]S_AXI1_bresp;
  output S_AXI1_bvalid;
  output [31:0]S_AXI1_rdata;
  output S_AXI1_rlast;
  input S_AXI1_rready;
  output [1:0]S_AXI1_rresp;
  output S_AXI1_rvalid;
  input [31:0]S_AXI1_wdata;
  input S_AXI1_wlast;
  output S_AXI1_wready;
  input [3:0]S_AXI1_wstrb;
  input S_AXI1_wvalid;
  input [12:0]S_AXI2_araddr;
  input [1:0]S_AXI2_arburst;
  input [3:0]S_AXI2_arcache;
  input [7:0]S_AXI2_arlen;
  input S_AXI2_arlock;
  input [2:0]S_AXI2_arprot;
  output S_AXI2_arready;
  input [2:0]S_AXI2_arsize;
  input S_AXI2_arvalid;
  input [12:0]S_AXI2_awaddr;
  input [1:0]S_AXI2_awburst;
  input [3:0]S_AXI2_awcache;
  input [7:0]S_AXI2_awlen;
  input S_AXI2_awlock;
  input [2:0]S_AXI2_awprot;
  output S_AXI2_awready;
  input [2:0]S_AXI2_awsize;
  input S_AXI2_awvalid;
  input S_AXI2_bready;
  output [1:0]S_AXI2_bresp;
  output S_AXI2_bvalid;
  output [31:0]S_AXI2_rdata;
  output S_AXI2_rlast;
  input S_AXI2_rready;
  output [1:0]S_AXI2_rresp;
  output S_AXI2_rvalid;
  input [31:0]S_AXI2_wdata;
  input S_AXI2_wlast;
  output S_AXI2_wready;
  input [3:0]S_AXI2_wstrb;
  input S_AXI2_wvalid;
  input [12:0]S_AXI3_araddr;
  input [1:0]S_AXI3_arburst;
  input [3:0]S_AXI3_arcache;
  input [7:0]S_AXI3_arlen;
  input S_AXI3_arlock;
  input [2:0]S_AXI3_arprot;
  output S_AXI3_arready;
  input [2:0]S_AXI3_arsize;
  input S_AXI3_arvalid;
  input [12:0]S_AXI3_awaddr;
  input [1:0]S_AXI3_awburst;
  input [3:0]S_AXI3_awcache;
  input [7:0]S_AXI3_awlen;
  input S_AXI3_awlock;
  input [2:0]S_AXI3_awprot;
  output S_AXI3_awready;
  input [2:0]S_AXI3_awsize;
  input S_AXI3_awvalid;
  input S_AXI3_bready;
  output [1:0]S_AXI3_bresp;
  output S_AXI3_bvalid;
  output [31:0]S_AXI3_rdata;
  output S_AXI3_rlast;
  input S_AXI3_rready;
  output [1:0]S_AXI3_rresp;
  output S_AXI3_rvalid;
  input [31:0]S_AXI3_wdata;
  input S_AXI3_wlast;
  output S_AXI3_wready;
  input [3:0]S_AXI3_wstrb;
  input S_AXI3_wvalid;
  input S_AXI_ARESETN;
  input S_AXI_CLK;
  input TRIGGER_CLK;
  input [3:0]WEB;

  wire [31:0]ADDRB_1;
  wire GND_1;
  wire RST_1;
  wire [31:0]SHWR_DATA0_1;
  wire [31:0]SHWR_DATA1_1;
  wire [31:0]SHWR_DATA2_1;
  wire [31:0]SHWR_DATA3_1;
  wire [12:0]S_AXI0_1_ARADDR;
  wire [1:0]S_AXI0_1_ARBURST;
  wire [3:0]S_AXI0_1_ARCACHE;
  wire [7:0]S_AXI0_1_ARLEN;
  wire S_AXI0_1_ARLOCK;
  wire [2:0]S_AXI0_1_ARPROT;
  wire S_AXI0_1_ARREADY;
  wire [2:0]S_AXI0_1_ARSIZE;
  wire S_AXI0_1_ARVALID;
  wire [12:0]S_AXI0_1_AWADDR;
  wire [1:0]S_AXI0_1_AWBURST;
  wire [3:0]S_AXI0_1_AWCACHE;
  wire [7:0]S_AXI0_1_AWLEN;
  wire S_AXI0_1_AWLOCK;
  wire [2:0]S_AXI0_1_AWPROT;
  wire S_AXI0_1_AWREADY;
  wire [2:0]S_AXI0_1_AWSIZE;
  wire S_AXI0_1_AWVALID;
  wire S_AXI0_1_BREADY;
  wire [1:0]S_AXI0_1_BRESP;
  wire S_AXI0_1_BVALID;
  wire [31:0]S_AXI0_1_RDATA;
  wire S_AXI0_1_RLAST;
  wire S_AXI0_1_RREADY;
  wire [1:0]S_AXI0_1_RRESP;
  wire S_AXI0_1_RVALID;
  wire [31:0]S_AXI0_1_WDATA;
  wire S_AXI0_1_WLAST;
  wire S_AXI0_1_WREADY;
  wire [3:0]S_AXI0_1_WSTRB;
  wire S_AXI0_1_WVALID;
  wire [12:0]S_AXI1_1_ARADDR;
  wire [1:0]S_AXI1_1_ARBURST;
  wire [3:0]S_AXI1_1_ARCACHE;
  wire [7:0]S_AXI1_1_ARLEN;
  wire S_AXI1_1_ARLOCK;
  wire [2:0]S_AXI1_1_ARPROT;
  wire S_AXI1_1_ARREADY;
  wire [2:0]S_AXI1_1_ARSIZE;
  wire S_AXI1_1_ARVALID;
  wire [12:0]S_AXI1_1_AWADDR;
  wire [1:0]S_AXI1_1_AWBURST;
  wire [3:0]S_AXI1_1_AWCACHE;
  wire [7:0]S_AXI1_1_AWLEN;
  wire S_AXI1_1_AWLOCK;
  wire [2:0]S_AXI1_1_AWPROT;
  wire S_AXI1_1_AWREADY;
  wire [2:0]S_AXI1_1_AWSIZE;
  wire S_AXI1_1_AWVALID;
  wire S_AXI1_1_BREADY;
  wire [1:0]S_AXI1_1_BRESP;
  wire S_AXI1_1_BVALID;
  wire [31:0]S_AXI1_1_RDATA;
  wire S_AXI1_1_RLAST;
  wire S_AXI1_1_RREADY;
  wire [1:0]S_AXI1_1_RRESP;
  wire S_AXI1_1_RVALID;
  wire [31:0]S_AXI1_1_WDATA;
  wire S_AXI1_1_WLAST;
  wire S_AXI1_1_WREADY;
  wire [3:0]S_AXI1_1_WSTRB;
  wire S_AXI1_1_WVALID;
  wire [12:0]S_AXI2_1_ARADDR;
  wire [1:0]S_AXI2_1_ARBURST;
  wire [3:0]S_AXI2_1_ARCACHE;
  wire [7:0]S_AXI2_1_ARLEN;
  wire S_AXI2_1_ARLOCK;
  wire [2:0]S_AXI2_1_ARPROT;
  wire S_AXI2_1_ARREADY;
  wire [2:0]S_AXI2_1_ARSIZE;
  wire S_AXI2_1_ARVALID;
  wire [12:0]S_AXI2_1_AWADDR;
  wire [1:0]S_AXI2_1_AWBURST;
  wire [3:0]S_AXI2_1_AWCACHE;
  wire [7:0]S_AXI2_1_AWLEN;
  wire S_AXI2_1_AWLOCK;
  wire [2:0]S_AXI2_1_AWPROT;
  wire S_AXI2_1_AWREADY;
  wire [2:0]S_AXI2_1_AWSIZE;
  wire S_AXI2_1_AWVALID;
  wire S_AXI2_1_BREADY;
  wire [1:0]S_AXI2_1_BRESP;
  wire S_AXI2_1_BVALID;
  wire [31:0]S_AXI2_1_RDATA;
  wire S_AXI2_1_RLAST;
  wire S_AXI2_1_RREADY;
  wire [1:0]S_AXI2_1_RRESP;
  wire S_AXI2_1_RVALID;
  wire [31:0]S_AXI2_1_WDATA;
  wire S_AXI2_1_WLAST;
  wire S_AXI2_1_WREADY;
  wire [3:0]S_AXI2_1_WSTRB;
  wire S_AXI2_1_WVALID;
  wire [12:0]S_AXI3_1_ARADDR;
  wire [1:0]S_AXI3_1_ARBURST;
  wire [3:0]S_AXI3_1_ARCACHE;
  wire [7:0]S_AXI3_1_ARLEN;
  wire S_AXI3_1_ARLOCK;
  wire [2:0]S_AXI3_1_ARPROT;
  wire S_AXI3_1_ARREADY;
  wire [2:0]S_AXI3_1_ARSIZE;
  wire S_AXI3_1_ARVALID;
  wire [12:0]S_AXI3_1_AWADDR;
  wire [1:0]S_AXI3_1_AWBURST;
  wire [3:0]S_AXI3_1_AWCACHE;
  wire [7:0]S_AXI3_1_AWLEN;
  wire S_AXI3_1_AWLOCK;
  wire [2:0]S_AXI3_1_AWPROT;
  wire S_AXI3_1_AWREADY;
  wire [2:0]S_AXI3_1_AWSIZE;
  wire S_AXI3_1_AWVALID;
  wire S_AXI3_1_BREADY;
  wire [1:0]S_AXI3_1_BRESP;
  wire S_AXI3_1_BVALID;
  wire [31:0]S_AXI3_1_RDATA;
  wire S_AXI3_1_RLAST;
  wire S_AXI3_1_RREADY;
  wire [1:0]S_AXI3_1_RRESP;
  wire S_AXI3_1_RVALID;
  wire [31:0]S_AXI3_1_WDATA;
  wire S_AXI3_1_WLAST;
  wire S_AXI3_1_WREADY;
  wire [3:0]S_AXI3_1_WSTRB;
  wire S_AXI3_1_WVALID;
  wire S_AXI_ARESETN_1;
  wire S_AXI_CLK_1;
  wire TRIGGER_CLK_1;
  wire [3:0]WEB_1;
  wire [12:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [12:0]axi_bram_ctrl_1_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_1_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_1_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_1_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_1_BRAM_PORTA_EN;
  wire axi_bram_ctrl_1_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_1_BRAM_PORTA_WE;
  wire [12:0]axi_bram_ctrl_2_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_2_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_2_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_2_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_2_BRAM_PORTA_EN;
  wire axi_bram_ctrl_2_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_2_BRAM_PORTA_WE;
  wire [12:0]axi_bram_ctrl_3_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_3_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_3_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_3_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_3_BRAM_PORTA_EN;
  wire axi_bram_ctrl_3_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_3_BRAM_PORTA_WE;

  assign ADDRB_1 = ADDRB[31:0];
  assign RST_1 = RST;
  assign SHWR_DATA0_1 = SHWR_DATA0[31:0];
  assign SHWR_DATA1_1 = SHWR_DATA1[31:0];
  assign SHWR_DATA2_1 = SHWR_DATA2[31:0];
  assign SHWR_DATA3_1 = SHWR_DATA3[31:0];
  assign S_AXI0_1_ARADDR = S_AXI0_araddr[12:0];
  assign S_AXI0_1_ARBURST = S_AXI0_arburst[1:0];
  assign S_AXI0_1_ARCACHE = S_AXI0_arcache[3:0];
  assign S_AXI0_1_ARLEN = S_AXI0_arlen[7:0];
  assign S_AXI0_1_ARLOCK = S_AXI0_arlock;
  assign S_AXI0_1_ARPROT = S_AXI0_arprot[2:0];
  assign S_AXI0_1_ARSIZE = S_AXI0_arsize[2:0];
  assign S_AXI0_1_ARVALID = S_AXI0_arvalid;
  assign S_AXI0_1_AWADDR = S_AXI0_awaddr[12:0];
  assign S_AXI0_1_AWBURST = S_AXI0_awburst[1:0];
  assign S_AXI0_1_AWCACHE = S_AXI0_awcache[3:0];
  assign S_AXI0_1_AWLEN = S_AXI0_awlen[7:0];
  assign S_AXI0_1_AWLOCK = S_AXI0_awlock;
  assign S_AXI0_1_AWPROT = S_AXI0_awprot[2:0];
  assign S_AXI0_1_AWSIZE = S_AXI0_awsize[2:0];
  assign S_AXI0_1_AWVALID = S_AXI0_awvalid;
  assign S_AXI0_1_BREADY = S_AXI0_bready;
  assign S_AXI0_1_RREADY = S_AXI0_rready;
  assign S_AXI0_1_WDATA = S_AXI0_wdata[31:0];
  assign S_AXI0_1_WLAST = S_AXI0_wlast;
  assign S_AXI0_1_WSTRB = S_AXI0_wstrb[3:0];
  assign S_AXI0_1_WVALID = S_AXI0_wvalid;
  assign S_AXI0_arready = S_AXI0_1_ARREADY;
  assign S_AXI0_awready = S_AXI0_1_AWREADY;
  assign S_AXI0_bresp[1:0] = S_AXI0_1_BRESP;
  assign S_AXI0_bvalid = S_AXI0_1_BVALID;
  assign S_AXI0_rdata[31:0] = S_AXI0_1_RDATA;
  assign S_AXI0_rlast = S_AXI0_1_RLAST;
  assign S_AXI0_rresp[1:0] = S_AXI0_1_RRESP;
  assign S_AXI0_rvalid = S_AXI0_1_RVALID;
  assign S_AXI0_wready = S_AXI0_1_WREADY;
  assign S_AXI1_1_ARADDR = S_AXI1_araddr[12:0];
  assign S_AXI1_1_ARBURST = S_AXI1_arburst[1:0];
  assign S_AXI1_1_ARCACHE = S_AXI1_arcache[3:0];
  assign S_AXI1_1_ARLEN = S_AXI1_arlen[7:0];
  assign S_AXI1_1_ARLOCK = S_AXI1_arlock;
  assign S_AXI1_1_ARPROT = S_AXI1_arprot[2:0];
  assign S_AXI1_1_ARSIZE = S_AXI1_arsize[2:0];
  assign S_AXI1_1_ARVALID = S_AXI1_arvalid;
  assign S_AXI1_1_AWADDR = S_AXI1_awaddr[12:0];
  assign S_AXI1_1_AWBURST = S_AXI1_awburst[1:0];
  assign S_AXI1_1_AWCACHE = S_AXI1_awcache[3:0];
  assign S_AXI1_1_AWLEN = S_AXI1_awlen[7:0];
  assign S_AXI1_1_AWLOCK = S_AXI1_awlock;
  assign S_AXI1_1_AWPROT = S_AXI1_awprot[2:0];
  assign S_AXI1_1_AWSIZE = S_AXI1_awsize[2:0];
  assign S_AXI1_1_AWVALID = S_AXI1_awvalid;
  assign S_AXI1_1_BREADY = S_AXI1_bready;
  assign S_AXI1_1_RREADY = S_AXI1_rready;
  assign S_AXI1_1_WDATA = S_AXI1_wdata[31:0];
  assign S_AXI1_1_WLAST = S_AXI1_wlast;
  assign S_AXI1_1_WSTRB = S_AXI1_wstrb[3:0];
  assign S_AXI1_1_WVALID = S_AXI1_wvalid;
  assign S_AXI1_arready = S_AXI1_1_ARREADY;
  assign S_AXI1_awready = S_AXI1_1_AWREADY;
  assign S_AXI1_bresp[1:0] = S_AXI1_1_BRESP;
  assign S_AXI1_bvalid = S_AXI1_1_BVALID;
  assign S_AXI1_rdata[31:0] = S_AXI1_1_RDATA;
  assign S_AXI1_rlast = S_AXI1_1_RLAST;
  assign S_AXI1_rresp[1:0] = S_AXI1_1_RRESP;
  assign S_AXI1_rvalid = S_AXI1_1_RVALID;
  assign S_AXI1_wready = S_AXI1_1_WREADY;
  assign S_AXI2_1_ARADDR = S_AXI2_araddr[12:0];
  assign S_AXI2_1_ARBURST = S_AXI2_arburst[1:0];
  assign S_AXI2_1_ARCACHE = S_AXI2_arcache[3:0];
  assign S_AXI2_1_ARLEN = S_AXI2_arlen[7:0];
  assign S_AXI2_1_ARLOCK = S_AXI2_arlock;
  assign S_AXI2_1_ARPROT = S_AXI2_arprot[2:0];
  assign S_AXI2_1_ARSIZE = S_AXI2_arsize[2:0];
  assign S_AXI2_1_ARVALID = S_AXI2_arvalid;
  assign S_AXI2_1_AWADDR = S_AXI2_awaddr[12:0];
  assign S_AXI2_1_AWBURST = S_AXI2_awburst[1:0];
  assign S_AXI2_1_AWCACHE = S_AXI2_awcache[3:0];
  assign S_AXI2_1_AWLEN = S_AXI2_awlen[7:0];
  assign S_AXI2_1_AWLOCK = S_AXI2_awlock;
  assign S_AXI2_1_AWPROT = S_AXI2_awprot[2:0];
  assign S_AXI2_1_AWSIZE = S_AXI2_awsize[2:0];
  assign S_AXI2_1_AWVALID = S_AXI2_awvalid;
  assign S_AXI2_1_BREADY = S_AXI2_bready;
  assign S_AXI2_1_RREADY = S_AXI2_rready;
  assign S_AXI2_1_WDATA = S_AXI2_wdata[31:0];
  assign S_AXI2_1_WLAST = S_AXI2_wlast;
  assign S_AXI2_1_WSTRB = S_AXI2_wstrb[3:0];
  assign S_AXI2_1_WVALID = S_AXI2_wvalid;
  assign S_AXI2_arready = S_AXI2_1_ARREADY;
  assign S_AXI2_awready = S_AXI2_1_AWREADY;
  assign S_AXI2_bresp[1:0] = S_AXI2_1_BRESP;
  assign S_AXI2_bvalid = S_AXI2_1_BVALID;
  assign S_AXI2_rdata[31:0] = S_AXI2_1_RDATA;
  assign S_AXI2_rlast = S_AXI2_1_RLAST;
  assign S_AXI2_rresp[1:0] = S_AXI2_1_RRESP;
  assign S_AXI2_rvalid = S_AXI2_1_RVALID;
  assign S_AXI2_wready = S_AXI2_1_WREADY;
  assign S_AXI3_1_ARADDR = S_AXI3_araddr[12:0];
  assign S_AXI3_1_ARBURST = S_AXI3_arburst[1:0];
  assign S_AXI3_1_ARCACHE = S_AXI3_arcache[3:0];
  assign S_AXI3_1_ARLEN = S_AXI3_arlen[7:0];
  assign S_AXI3_1_ARLOCK = S_AXI3_arlock;
  assign S_AXI3_1_ARPROT = S_AXI3_arprot[2:0];
  assign S_AXI3_1_ARSIZE = S_AXI3_arsize[2:0];
  assign S_AXI3_1_ARVALID = S_AXI3_arvalid;
  assign S_AXI3_1_AWADDR = S_AXI3_awaddr[12:0];
  assign S_AXI3_1_AWBURST = S_AXI3_awburst[1:0];
  assign S_AXI3_1_AWCACHE = S_AXI3_awcache[3:0];
  assign S_AXI3_1_AWLEN = S_AXI3_awlen[7:0];
  assign S_AXI3_1_AWLOCK = S_AXI3_awlock;
  assign S_AXI3_1_AWPROT = S_AXI3_awprot[2:0];
  assign S_AXI3_1_AWSIZE = S_AXI3_awsize[2:0];
  assign S_AXI3_1_AWVALID = S_AXI3_awvalid;
  assign S_AXI3_1_BREADY = S_AXI3_bready;
  assign S_AXI3_1_RREADY = S_AXI3_rready;
  assign S_AXI3_1_WDATA = S_AXI3_wdata[31:0];
  assign S_AXI3_1_WLAST = S_AXI3_wlast;
  assign S_AXI3_1_WSTRB = S_AXI3_wstrb[3:0];
  assign S_AXI3_1_WVALID = S_AXI3_wvalid;
  assign S_AXI3_arready = S_AXI3_1_ARREADY;
  assign S_AXI3_awready = S_AXI3_1_AWREADY;
  assign S_AXI3_bresp[1:0] = S_AXI3_1_BRESP;
  assign S_AXI3_bvalid = S_AXI3_1_BVALID;
  assign S_AXI3_rdata[31:0] = S_AXI3_1_RDATA;
  assign S_AXI3_rlast = S_AXI3_1_RLAST;
  assign S_AXI3_rresp[1:0] = S_AXI3_1_RRESP;
  assign S_AXI3_rvalid = S_AXI3_1_RVALID;
  assign S_AXI3_wready = S_AXI3_1_WREADY;
  assign S_AXI_ARESETN_1 = S_AXI_ARESETN;
  assign S_AXI_CLK_1 = S_AXI_CLK;
  assign TRIGGER_CLK_1 = TRIGGER_CLK;
  assign WEB_1 = WEB[3:0];
  GND GND
       (.G(GND_1));
  shower_memory_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(S_AXI_CLK_1),
        .s_axi_araddr(S_AXI0_1_ARADDR),
        .s_axi_arburst(S_AXI0_1_ARBURST),
        .s_axi_arcache(S_AXI0_1_ARCACHE),
        .s_axi_aresetn(S_AXI_ARESETN_1),
        .s_axi_arlen(S_AXI0_1_ARLEN),
        .s_axi_arlock(S_AXI0_1_ARLOCK),
        .s_axi_arprot(S_AXI0_1_ARPROT),
        .s_axi_arready(S_AXI0_1_ARREADY),
        .s_axi_arsize(S_AXI0_1_ARSIZE),
        .s_axi_arvalid(S_AXI0_1_ARVALID),
        .s_axi_awaddr(S_AXI0_1_AWADDR),
        .s_axi_awburst(S_AXI0_1_AWBURST),
        .s_axi_awcache(S_AXI0_1_AWCACHE),
        .s_axi_awlen(S_AXI0_1_AWLEN),
        .s_axi_awlock(S_AXI0_1_AWLOCK),
        .s_axi_awprot(S_AXI0_1_AWPROT),
        .s_axi_awready(S_AXI0_1_AWREADY),
        .s_axi_awsize(S_AXI0_1_AWSIZE),
        .s_axi_awvalid(S_AXI0_1_AWVALID),
        .s_axi_bready(S_AXI0_1_BREADY),
        .s_axi_bresp(S_AXI0_1_BRESP),
        .s_axi_bvalid(S_AXI0_1_BVALID),
        .s_axi_rdata(S_AXI0_1_RDATA),
        .s_axi_rlast(S_AXI0_1_RLAST),
        .s_axi_rready(S_AXI0_1_RREADY),
        .s_axi_rresp(S_AXI0_1_RRESP),
        .s_axi_rvalid(S_AXI0_1_RVALID),
        .s_axi_wdata(S_AXI0_1_WDATA),
        .s_axi_wlast(S_AXI0_1_WLAST),
        .s_axi_wready(S_AXI0_1_WREADY),
        .s_axi_wstrb(S_AXI0_1_WSTRB),
        .s_axi_wvalid(S_AXI0_1_WVALID));
  shower_memory_axi_bram_ctrl_1_0 axi_bram_ctrl_1
       (.bram_addr_a(axi_bram_ctrl_1_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_1_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_1_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_1_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_1_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_1_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_1_BRAM_PORTA_DIN),
        .s_axi_aclk(S_AXI_CLK_1),
        .s_axi_araddr(S_AXI1_1_ARADDR),
        .s_axi_arburst(S_AXI1_1_ARBURST),
        .s_axi_arcache(S_AXI1_1_ARCACHE),
        .s_axi_aresetn(S_AXI_ARESETN_1),
        .s_axi_arlen(S_AXI1_1_ARLEN),
        .s_axi_arlock(S_AXI1_1_ARLOCK),
        .s_axi_arprot(S_AXI1_1_ARPROT),
        .s_axi_arready(S_AXI1_1_ARREADY),
        .s_axi_arsize(S_AXI1_1_ARSIZE),
        .s_axi_arvalid(S_AXI1_1_ARVALID),
        .s_axi_awaddr(S_AXI1_1_AWADDR),
        .s_axi_awburst(S_AXI1_1_AWBURST),
        .s_axi_awcache(S_AXI1_1_AWCACHE),
        .s_axi_awlen(S_AXI1_1_AWLEN),
        .s_axi_awlock(S_AXI1_1_AWLOCK),
        .s_axi_awprot(S_AXI1_1_AWPROT),
        .s_axi_awready(S_AXI1_1_AWREADY),
        .s_axi_awsize(S_AXI1_1_AWSIZE),
        .s_axi_awvalid(S_AXI1_1_AWVALID),
        .s_axi_bready(S_AXI1_1_BREADY),
        .s_axi_bresp(S_AXI1_1_BRESP),
        .s_axi_bvalid(S_AXI1_1_BVALID),
        .s_axi_rdata(S_AXI1_1_RDATA),
        .s_axi_rlast(S_AXI1_1_RLAST),
        .s_axi_rready(S_AXI1_1_RREADY),
        .s_axi_rresp(S_AXI1_1_RRESP),
        .s_axi_rvalid(S_AXI1_1_RVALID),
        .s_axi_wdata(S_AXI1_1_WDATA),
        .s_axi_wlast(S_AXI1_1_WLAST),
        .s_axi_wready(S_AXI1_1_WREADY),
        .s_axi_wstrb(S_AXI1_1_WSTRB),
        .s_axi_wvalid(S_AXI1_1_WVALID));
  shower_memory_axi_bram_ctrl_0_1 axi_bram_ctrl_2
       (.bram_addr_a(axi_bram_ctrl_2_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_2_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_2_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_2_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_2_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_2_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_2_BRAM_PORTA_DIN),
        .s_axi_aclk(S_AXI_CLK_1),
        .s_axi_araddr(S_AXI2_1_ARADDR),
        .s_axi_arburst(S_AXI2_1_ARBURST),
        .s_axi_arcache(S_AXI2_1_ARCACHE),
        .s_axi_aresetn(S_AXI_ARESETN_1),
        .s_axi_arlen(S_AXI2_1_ARLEN),
        .s_axi_arlock(S_AXI2_1_ARLOCK),
        .s_axi_arprot(S_AXI2_1_ARPROT),
        .s_axi_arready(S_AXI2_1_ARREADY),
        .s_axi_arsize(S_AXI2_1_ARSIZE),
        .s_axi_arvalid(S_AXI2_1_ARVALID),
        .s_axi_awaddr(S_AXI2_1_AWADDR),
        .s_axi_awburst(S_AXI2_1_AWBURST),
        .s_axi_awcache(S_AXI2_1_AWCACHE),
        .s_axi_awlen(S_AXI2_1_AWLEN),
        .s_axi_awlock(S_AXI2_1_AWLOCK),
        .s_axi_awprot(S_AXI2_1_AWPROT),
        .s_axi_awready(S_AXI2_1_AWREADY),
        .s_axi_awsize(S_AXI2_1_AWSIZE),
        .s_axi_awvalid(S_AXI2_1_AWVALID),
        .s_axi_bready(S_AXI2_1_BREADY),
        .s_axi_bresp(S_AXI2_1_BRESP),
        .s_axi_bvalid(S_AXI2_1_BVALID),
        .s_axi_rdata(S_AXI2_1_RDATA),
        .s_axi_rlast(S_AXI2_1_RLAST),
        .s_axi_rready(S_AXI2_1_RREADY),
        .s_axi_rresp(S_AXI2_1_RRESP),
        .s_axi_rvalid(S_AXI2_1_RVALID),
        .s_axi_wdata(S_AXI2_1_WDATA),
        .s_axi_wlast(S_AXI2_1_WLAST),
        .s_axi_wready(S_AXI2_1_WREADY),
        .s_axi_wstrb(S_AXI2_1_WSTRB),
        .s_axi_wvalid(S_AXI2_1_WVALID));
  shower_memory_axi_bram_ctrl_2_0 axi_bram_ctrl_3
       (.bram_addr_a(axi_bram_ctrl_3_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_3_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_3_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_3_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_3_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_3_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_3_BRAM_PORTA_DIN),
        .s_axi_aclk(S_AXI_CLK_1),
        .s_axi_araddr(S_AXI3_1_ARADDR),
        .s_axi_arburst(S_AXI3_1_ARBURST),
        .s_axi_arcache(S_AXI3_1_ARCACHE),
        .s_axi_aresetn(S_AXI_ARESETN_1),
        .s_axi_arlen(S_AXI3_1_ARLEN),
        .s_axi_arlock(S_AXI3_1_ARLOCK),
        .s_axi_arprot(S_AXI3_1_ARPROT),
        .s_axi_arready(S_AXI3_1_ARREADY),
        .s_axi_arsize(S_AXI3_1_ARSIZE),
        .s_axi_arvalid(S_AXI3_1_ARVALID),
        .s_axi_awaddr(S_AXI3_1_AWADDR),
        .s_axi_awburst(S_AXI3_1_AWBURST),
        .s_axi_awcache(S_AXI3_1_AWCACHE),
        .s_axi_awlen(S_AXI3_1_AWLEN),
        .s_axi_awlock(S_AXI3_1_AWLOCK),
        .s_axi_awprot(S_AXI3_1_AWPROT),
        .s_axi_awready(S_AXI3_1_AWREADY),
        .s_axi_awsize(S_AXI3_1_AWSIZE),
        .s_axi_awvalid(S_AXI3_1_AWVALID),
        .s_axi_bready(S_AXI3_1_BREADY),
        .s_axi_bresp(S_AXI3_1_BRESP),
        .s_axi_bvalid(S_AXI3_1_BVALID),
        .s_axi_rdata(S_AXI3_1_RDATA),
        .s_axi_rlast(S_AXI3_1_RLAST),
        .s_axi_rready(S_AXI3_1_RREADY),
        .s_axi_rresp(S_AXI3_1_RRESP),
        .s_axi_rvalid(S_AXI3_1_RVALID),
        .s_axi_wdata(S_AXI3_1_WDATA),
        .s_axi_wlast(S_AXI3_1_WLAST),
        .s_axi_wready(S_AXI3_1_WREADY),
        .s_axi_wstrb(S_AXI3_1_WSTRB),
        .s_axi_wvalid(S_AXI3_1_WVALID));
  shower_memory_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .addrb(ADDRB_1),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .clkb(TRIGGER_CLK_1),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .dinb(SHWR_DATA0_1),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .enb(GND_1),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .rstb(RST_1),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .web(WEB_1));
  shower_memory_blk_mem_gen_0_1 blk_mem_gen_1
       (.addra({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,axi_bram_ctrl_1_BRAM_PORTA_ADDR}),
        .addrb(ADDRB_1),
        .clka(axi_bram_ctrl_1_BRAM_PORTA_CLK),
        .clkb(TRIGGER_CLK_1),
        .dina(axi_bram_ctrl_1_BRAM_PORTA_DIN),
        .dinb(SHWR_DATA1_1),
        .douta(axi_bram_ctrl_1_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_1_BRAM_PORTA_EN),
        .enb(GND_1),
        .rsta(axi_bram_ctrl_1_BRAM_PORTA_RST),
        .rstb(RST_1),
        .wea(axi_bram_ctrl_1_BRAM_PORTA_WE),
        .web(WEB_1));
  shower_memory_blk_mem_gen_0_2 blk_mem_gen_2
       (.addra({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,axi_bram_ctrl_2_BRAM_PORTA_ADDR}),
        .addrb(ADDRB_1),
        .clka(axi_bram_ctrl_2_BRAM_PORTA_CLK),
        .clkb(TRIGGER_CLK_1),
        .dina(axi_bram_ctrl_2_BRAM_PORTA_DIN),
        .dinb(SHWR_DATA2_1),
        .douta(axi_bram_ctrl_2_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_2_BRAM_PORTA_EN),
        .enb(GND_1),
        .rsta(axi_bram_ctrl_2_BRAM_PORTA_RST),
        .rstb(RST_1),
        .wea(axi_bram_ctrl_2_BRAM_PORTA_WE),
        .web(WEB_1));
  shower_memory_blk_mem_gen_0_3 blk_mem_gen_3
       (.addra({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,axi_bram_ctrl_3_BRAM_PORTA_ADDR}),
        .addrb(ADDRB_1),
        .clka(axi_bram_ctrl_3_BRAM_PORTA_CLK),
        .clkb(TRIGGER_CLK_1),
        .dina(axi_bram_ctrl_3_BRAM_PORTA_DIN),
        .dinb(SHWR_DATA3_1),
        .douta(axi_bram_ctrl_3_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_3_BRAM_PORTA_EN),
        .enb(GND_1),
        .rsta(axi_bram_ctrl_3_BRAM_PORTA_RST),
        .rstb(RST_1),
        .wea(axi_bram_ctrl_3_BRAM_PORTA_WE),
        .web(WEB_1));
endmodule

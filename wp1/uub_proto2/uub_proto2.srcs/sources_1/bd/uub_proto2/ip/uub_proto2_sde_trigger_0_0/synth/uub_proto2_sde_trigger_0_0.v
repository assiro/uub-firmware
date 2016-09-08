// (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: auger.mtu.edu:user:sde_trigger:1.2
// IP Revision: 133

(* X_CORE_INFO = "sde_trigger,Vivado 2015.2.1" *)
(* CHECK_LICENSE_TYPE = "uub_proto2_sde_trigger_0_0,sde_trigger,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module uub_proto2_sde_trigger_0_0 (
  ADC0,
  ADC1,
  ADC2,
  ADC3,
  ADC4,
  FILT_PMT0,
  FILT_PMT1,
  FILT_PMT2,
  CLK120,
  TRIG_IN,
  ONE_PPS,
  LED_FLG,
  SHWR_DATA0,
  SHWR_DATA1,
  SHWR_DATA2,
  SHWR_DATA3,
  SHWR_DATA4,
  SHWR_ADDR,
  SHWR_TRIGGER,
  DEAD,
  SHWR_BUF_WNUM,
  SHWR_BUF_RNUM,
  SHWR_EVT_CTR,
  MUON_DATA0,
  MUON_DATA1,
  MUON_ADDR,
  MUON_ENB,
  MUON_TRIGGER,
  MUON_BUF_WNUM,
  MUON_BUF_RNUM,
  MUON_EVT_CTR,
  TRIG_OUT,
  P6X,
  LEDBAR,
  s00_axi_aclk,
  s00_axi_aresetn,
  s00_axi_awaddr,
  s00_axi_awprot,
  s00_axi_awvalid,
  s00_axi_awready,
  s00_axi_wdata,
  s00_axi_wstrb,
  s00_axi_wvalid,
  s00_axi_wready,
  s00_axi_bresp,
  s00_axi_bvalid,
  s00_axi_bready,
  s00_axi_araddr,
  s00_axi_arprot,
  s00_axi_arvalid,
  s00_axi_arready,
  s00_axi_rdata,
  s00_axi_rresp,
  s00_axi_rvalid,
  s00_axi_rready,
  s_axi_intr_aclk,
  s_axi_intr_aresetn,
  s_axi_intr_awaddr,
  s_axi_intr_awprot,
  s_axi_intr_awvalid,
  s_axi_intr_awready,
  s_axi_intr_wdata,
  s_axi_intr_wstrb,
  s_axi_intr_wvalid,
  s_axi_intr_wready,
  s_axi_intr_bresp,
  s_axi_intr_bvalid,
  s_axi_intr_bready,
  s_axi_intr_araddr,
  s_axi_intr_arprot,
  s_axi_intr_arvalid,
  s_axi_intr_arready,
  s_axi_intr_rdata,
  s_axi_intr_rresp,
  s_axi_intr_rvalid,
  s_axi_intr_rready,
  irq
);

input wire [23 : 0] ADC0;
input wire [23 : 0] ADC1;
input wire [23 : 0] ADC2;
input wire [23 : 0] ADC3;
input wire [23 : 0] ADC4;
input wire [13 : 0] FILT_PMT0;
input wire [13 : 0] FILT_PMT1;
input wire [13 : 0] FILT_PMT2;
input wire CLK120;
input wire TRIG_IN;
input wire ONE_PPS;
input wire LED_FLG;
output wire [31 : 0] SHWR_DATA0;
output wire [31 : 0] SHWR_DATA1;
output wire [31 : 0] SHWR_DATA2;
output wire [31 : 0] SHWR_DATA3;
output wire [31 : 0] SHWR_DATA4;
output wire [31 : 0] SHWR_ADDR;
output wire SHWR_TRIGGER;
output wire DEAD;
output wire [1 : 0] SHWR_BUF_WNUM;
output wire [1 : 0] SHWR_BUF_RNUM;
output wire [3 : 0] SHWR_EVT_CTR;
output wire [31 : 0] MUON_DATA0;
output wire [31 : 0] MUON_DATA1;
output wire [31 : 0] MUON_ADDR;
output wire MUON_ENB;
output wire MUON_TRIGGER;
output wire [1 : 0] MUON_BUF_WNUM;
output wire [1 : 0] MUON_BUF_RNUM;
output wire [3 : 0] MUON_EVT_CTR;
output wire TRIG_OUT;
output wire [5 : 1] P6X;
output wire LEDBAR;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *)
input wire s00_axi_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *)
input wire s00_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *)
input wire [9 : 0] s00_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *)
input wire [2 : 0] s00_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *)
input wire s00_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *)
output wire s00_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *)
input wire [31 : 0] s00_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *)
input wire [3 : 0] s00_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *)
input wire s00_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *)
output wire s00_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *)
output wire [1 : 0] s00_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *)
output wire s00_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *)
input wire s00_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *)
input wire [9 : 0] s00_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *)
input wire [2 : 0] s00_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *)
input wire s00_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *)
output wire s00_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *)
output wire [31 : 0] s00_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *)
output wire [1 : 0] s00_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *)
output wire s00_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *)
input wire s00_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_INTR_CLK CLK" *)
input wire s_axi_intr_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_INTR_RST RST" *)
input wire s_axi_intr_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWADDR" *)
input wire [4 : 0] s_axi_intr_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWPROT" *)
input wire [2 : 0] s_axi_intr_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWVALID" *)
input wire s_axi_intr_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWREADY" *)
output wire s_axi_intr_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR WDATA" *)
input wire [31 : 0] s_axi_intr_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR WSTRB" *)
input wire [3 : 0] s_axi_intr_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR WVALID" *)
input wire s_axi_intr_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR WREADY" *)
output wire s_axi_intr_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR BRESP" *)
output wire [1 : 0] s_axi_intr_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR BVALID" *)
output wire s_axi_intr_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR BREADY" *)
input wire s_axi_intr_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARADDR" *)
input wire [4 : 0] s_axi_intr_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARPROT" *)
input wire [2 : 0] s_axi_intr_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARVALID" *)
input wire s_axi_intr_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARREADY" *)
output wire s_axi_intr_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR RDATA" *)
output wire [31 : 0] s_axi_intr_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR RRESP" *)
output wire [1 : 0] s_axi_intr_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR RVALID" *)
output wire s_axi_intr_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR RREADY" *)
input wire s_axi_intr_rready;
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 IRQ INTERRUPT" *)
output wire irq;

  sde_trigger #(
    .C_S_AXI_INTR_DATA_WIDTH(32),  // Width of S_AXI data bus
    .C_S_AXI_INTR_ADDR_WIDTH(5),  // Width of S_AXI address bus
    .C_INTR_SENSITIVITY(32'HFFFFFFFF),  // Each bit corresponds to Sensitivity of interrupt :  0 - EDGE, 1 - LEVEL
    .C_INTR_ACTIVE_STATE(32'HFFFFFFFF),  // Each bit corresponds to Sub-type of INTR: [0 - FALLING_EDGE, 1 - RISING_EDGE : if C_INTR_SENSITIVITY is EDGE(0)] and [ 0 - LEVEL_LOW, 1 - LEVEL_LOW : if C_INTR_SENSITIVITY is LEVEL(1) ]
    .C_IRQ_SENSITIVITY(1),  // Sensitivity of IRQ: 0 - EDGE, 1 - LEVEL
    .C_IRQ_ACTIVE_STATE(1),  // Sub-type of IRQ: [0 - FALLING_EDGE, 1 - RISING_EDGE : if C_IRQ_SENSITIVITY is EDGE(0)] and [ 0 - LEVEL_LOW, 1 - LEVEL_LOW : if C_IRQ_SENSITIVITY is LEVEL(1) ]
    .C_S00_AXI_DATA_WIDTH(32),  // Width of S_AXI data bus
    .C_S00_AXI_ADDR_WIDTH(10)  // Width of S_AXI address bus
  ) inst (
    .ADC0(ADC0),
    .ADC1(ADC1),
    .ADC2(ADC2),
    .ADC3(ADC3),
    .ADC4(ADC4),
    .FILT_PMT0(FILT_PMT0),
    .FILT_PMT1(FILT_PMT1),
    .FILT_PMT2(FILT_PMT2),
    .CLK120(CLK120),
    .TRIG_IN(TRIG_IN),
    .ONE_PPS(ONE_PPS),
    .LED_FLG(LED_FLG),
    .SHWR_DATA0(SHWR_DATA0),
    .SHWR_DATA1(SHWR_DATA1),
    .SHWR_DATA2(SHWR_DATA2),
    .SHWR_DATA3(SHWR_DATA3),
    .SHWR_DATA4(SHWR_DATA4),
    .SHWR_ADDR(SHWR_ADDR),
    .SHWR_TRIGGER(SHWR_TRIGGER),
    .DEAD(DEAD),
    .SHWR_BUF_WNUM(SHWR_BUF_WNUM),
    .SHWR_BUF_RNUM(SHWR_BUF_RNUM),
    .SHWR_EVT_CTR(SHWR_EVT_CTR),
    .MUON_DATA0(MUON_DATA0),
    .MUON_DATA1(MUON_DATA1),
    .MUON_ADDR(MUON_ADDR),
    .MUON_ENB(MUON_ENB),
    .MUON_TRIGGER(MUON_TRIGGER),
    .MUON_BUF_WNUM(MUON_BUF_WNUM),
    .MUON_BUF_RNUM(MUON_BUF_RNUM),
    .MUON_EVT_CTR(MUON_EVT_CTR),
    .TRIG_OUT(TRIG_OUT),
    .P6X(P6X),
    .LEDBAR(LEDBAR),
    .s00_axi_aclk(s00_axi_aclk),
    .s00_axi_aresetn(s00_axi_aresetn),
    .s00_axi_awaddr(s00_axi_awaddr),
    .s00_axi_awprot(s00_axi_awprot),
    .s00_axi_awvalid(s00_axi_awvalid),
    .s00_axi_awready(s00_axi_awready),
    .s00_axi_wdata(s00_axi_wdata),
    .s00_axi_wstrb(s00_axi_wstrb),
    .s00_axi_wvalid(s00_axi_wvalid),
    .s00_axi_wready(s00_axi_wready),
    .s00_axi_bresp(s00_axi_bresp),
    .s00_axi_bvalid(s00_axi_bvalid),
    .s00_axi_bready(s00_axi_bready),
    .s00_axi_araddr(s00_axi_araddr),
    .s00_axi_arprot(s00_axi_arprot),
    .s00_axi_arvalid(s00_axi_arvalid),
    .s00_axi_arready(s00_axi_arready),
    .s00_axi_rdata(s00_axi_rdata),
    .s00_axi_rresp(s00_axi_rresp),
    .s00_axi_rvalid(s00_axi_rvalid),
    .s00_axi_rready(s00_axi_rready),
    .s_axi_intr_aclk(s_axi_intr_aclk),
    .s_axi_intr_aresetn(s_axi_intr_aresetn),
    .s_axi_intr_awaddr(s_axi_intr_awaddr),
    .s_axi_intr_awprot(s_axi_intr_awprot),
    .s_axi_intr_awvalid(s_axi_intr_awvalid),
    .s_axi_intr_awready(s_axi_intr_awready),
    .s_axi_intr_wdata(s_axi_intr_wdata),
    .s_axi_intr_wstrb(s_axi_intr_wstrb),
    .s_axi_intr_wvalid(s_axi_intr_wvalid),
    .s_axi_intr_wready(s_axi_intr_wready),
    .s_axi_intr_bresp(s_axi_intr_bresp),
    .s_axi_intr_bvalid(s_axi_intr_bvalid),
    .s_axi_intr_bready(s_axi_intr_bready),
    .s_axi_intr_araddr(s_axi_intr_araddr),
    .s_axi_intr_arprot(s_axi_intr_arprot),
    .s_axi_intr_arvalid(s_axi_intr_arvalid),
    .s_axi_intr_arready(s_axi_intr_arready),
    .s_axi_intr_rdata(s_axi_intr_rdata),
    .s_axi_intr_rresp(s_axi_intr_rresp),
    .s_axi_intr_rvalid(s_axi_intr_rvalid),
    .s_axi_intr_rready(s_axi_intr_rready),
    .irq(irq)
  );
endmodule

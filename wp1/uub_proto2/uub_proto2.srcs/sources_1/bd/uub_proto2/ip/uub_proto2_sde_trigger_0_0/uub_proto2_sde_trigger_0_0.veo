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

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
uub_proto2_sde_trigger_0_0 your_instance_name (
  .ADC0(ADC0),                              // input wire [23 : 0] ADC0
  .ADC1(ADC1),                              // input wire [23 : 0] ADC1
  .ADC2(ADC2),                              // input wire [23 : 0] ADC2
  .ADC3(ADC3),                              // input wire [23 : 0] ADC3
  .ADC4(ADC4),                              // input wire [23 : 0] ADC4
  .FILT_PMT0(FILT_PMT0),                    // input wire [13 : 0] FILT_PMT0
  .FILT_PMT1(FILT_PMT1),                    // input wire [13 : 0] FILT_PMT1
  .FILT_PMT2(FILT_PMT2),                    // input wire [13 : 0] FILT_PMT2
  .CLK120(CLK120),                          // input wire CLK120
  .TRIG_IN(TRIG_IN),                        // input wire TRIG_IN
  .ONE_PPS(ONE_PPS),                        // input wire ONE_PPS
  .LED_FLG(LED_FLG),                        // input wire LED_FLG
  .SHWR_DATA0(SHWR_DATA0),                  // output wire [31 : 0] SHWR_DATA0
  .SHWR_DATA1(SHWR_DATA1),                  // output wire [31 : 0] SHWR_DATA1
  .SHWR_DATA2(SHWR_DATA2),                  // output wire [31 : 0] SHWR_DATA2
  .SHWR_DATA3(SHWR_DATA3),                  // output wire [31 : 0] SHWR_DATA3
  .SHWR_DATA4(SHWR_DATA4),                  // output wire [31 : 0] SHWR_DATA4
  .SHWR_ADDR(SHWR_ADDR),                    // output wire [31 : 0] SHWR_ADDR
  .SHWR_TRIGGER(SHWR_TRIGGER),              // output wire SHWR_TRIGGER
  .DEAD(DEAD),                              // output wire DEAD
  .SHWR_BUF_WNUM(SHWR_BUF_WNUM),            // output wire [1 : 0] SHWR_BUF_WNUM
  .SHWR_BUF_RNUM(SHWR_BUF_RNUM),            // output wire [1 : 0] SHWR_BUF_RNUM
  .SHWR_EVT_CTR(SHWR_EVT_CTR),              // output wire [3 : 0] SHWR_EVT_CTR
  .MUON_DATA0(MUON_DATA0),                  // output wire [31 : 0] MUON_DATA0
  .MUON_DATA1(MUON_DATA1),                  // output wire [31 : 0] MUON_DATA1
  .MUON_ADDR(MUON_ADDR),                    // output wire [31 : 0] MUON_ADDR
  .MUON_ENB(MUON_ENB),                      // output wire MUON_ENB
  .MUON_TRIGGER(MUON_TRIGGER),              // output wire MUON_TRIGGER
  .MUON_BUF_WNUM(MUON_BUF_WNUM),            // output wire [1 : 0] MUON_BUF_WNUM
  .MUON_BUF_RNUM(MUON_BUF_RNUM),            // output wire [1 : 0] MUON_BUF_RNUM
  .MUON_EVT_CTR(MUON_EVT_CTR),              // output wire [3 : 0] MUON_EVT_CTR
  .TRIG_OUT(TRIG_OUT),                      // output wire TRIG_OUT
  .P6X(P6X),                                // output wire [5 : 1] P6X
  .LEDBAR(LEDBAR),                          // output wire LEDBAR
  .s00_axi_aclk(s00_axi_aclk),              // input wire s00_axi_aclk
  .s00_axi_aresetn(s00_axi_aresetn),        // input wire s00_axi_aresetn
  .s00_axi_awaddr(s00_axi_awaddr),          // input wire [9 : 0] s00_axi_awaddr
  .s00_axi_awprot(s00_axi_awprot),          // input wire [2 : 0] s00_axi_awprot
  .s00_axi_awvalid(s00_axi_awvalid),        // input wire s00_axi_awvalid
  .s00_axi_awready(s00_axi_awready),        // output wire s00_axi_awready
  .s00_axi_wdata(s00_axi_wdata),            // input wire [31 : 0] s00_axi_wdata
  .s00_axi_wstrb(s00_axi_wstrb),            // input wire [3 : 0] s00_axi_wstrb
  .s00_axi_wvalid(s00_axi_wvalid),          // input wire s00_axi_wvalid
  .s00_axi_wready(s00_axi_wready),          // output wire s00_axi_wready
  .s00_axi_bresp(s00_axi_bresp),            // output wire [1 : 0] s00_axi_bresp
  .s00_axi_bvalid(s00_axi_bvalid),          // output wire s00_axi_bvalid
  .s00_axi_bready(s00_axi_bready),          // input wire s00_axi_bready
  .s00_axi_araddr(s00_axi_araddr),          // input wire [9 : 0] s00_axi_araddr
  .s00_axi_arprot(s00_axi_arprot),          // input wire [2 : 0] s00_axi_arprot
  .s00_axi_arvalid(s00_axi_arvalid),        // input wire s00_axi_arvalid
  .s00_axi_arready(s00_axi_arready),        // output wire s00_axi_arready
  .s00_axi_rdata(s00_axi_rdata),            // output wire [31 : 0] s00_axi_rdata
  .s00_axi_rresp(s00_axi_rresp),            // output wire [1 : 0] s00_axi_rresp
  .s00_axi_rvalid(s00_axi_rvalid),          // output wire s00_axi_rvalid
  .s00_axi_rready(s00_axi_rready),          // input wire s00_axi_rready
  .s_axi_intr_aclk(s_axi_intr_aclk),        // input wire s_axi_intr_aclk
  .s_axi_intr_aresetn(s_axi_intr_aresetn),  // input wire s_axi_intr_aresetn
  .s_axi_intr_awaddr(s_axi_intr_awaddr),    // input wire [4 : 0] s_axi_intr_awaddr
  .s_axi_intr_awprot(s_axi_intr_awprot),    // input wire [2 : 0] s_axi_intr_awprot
  .s_axi_intr_awvalid(s_axi_intr_awvalid),  // input wire s_axi_intr_awvalid
  .s_axi_intr_awready(s_axi_intr_awready),  // output wire s_axi_intr_awready
  .s_axi_intr_wdata(s_axi_intr_wdata),      // input wire [31 : 0] s_axi_intr_wdata
  .s_axi_intr_wstrb(s_axi_intr_wstrb),      // input wire [3 : 0] s_axi_intr_wstrb
  .s_axi_intr_wvalid(s_axi_intr_wvalid),    // input wire s_axi_intr_wvalid
  .s_axi_intr_wready(s_axi_intr_wready),    // output wire s_axi_intr_wready
  .s_axi_intr_bresp(s_axi_intr_bresp),      // output wire [1 : 0] s_axi_intr_bresp
  .s_axi_intr_bvalid(s_axi_intr_bvalid),    // output wire s_axi_intr_bvalid
  .s_axi_intr_bready(s_axi_intr_bready),    // input wire s_axi_intr_bready
  .s_axi_intr_araddr(s_axi_intr_araddr),    // input wire [4 : 0] s_axi_intr_araddr
  .s_axi_intr_arprot(s_axi_intr_arprot),    // input wire [2 : 0] s_axi_intr_arprot
  .s_axi_intr_arvalid(s_axi_intr_arvalid),  // input wire s_axi_intr_arvalid
  .s_axi_intr_arready(s_axi_intr_arready),  // output wire s_axi_intr_arready
  .s_axi_intr_rdata(s_axi_intr_rdata),      // output wire [31 : 0] s_axi_intr_rdata
  .s_axi_intr_rresp(s_axi_intr_rresp),      // output wire [1 : 0] s_axi_intr_rresp
  .s_axi_intr_rvalid(s_axi_intr_rvalid),    // output wire s_axi_intr_rvalid
  .s_axi_intr_rready(s_axi_intr_rready),    // input wire s_axi_intr_rready
  .irq(irq)                                // output wire irq
);
// INST_TAG_END ------ End INSTANTIATION Template ---------


//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.2 (lin64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
//Date        : Thu Jan 21 15:50:57 2016
//Host        : dfn-x3100.auger.mtu.edu running 64-bit Scientific Linux release 6.7 (Carbon)
//Command     : generate_target adc_clk_merge.bd
//Design      : adc_clk_merge
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "adc_clk_merge,IP_Integrator,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=adc_clk_merge,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,synth_mode=Global}" *) (* HW_HANDOFF = "adc_clk_merge.hwdef" *) 
module adc_clk_merge
   (ADC0_CK,
    ADC0_CK_N,
    ADC0_CK_P,
    ADC1_CK,
    ADC1_CK_N,
    ADC1_CK_P,
    ADC2_CK,
    ADC2_CK_N,
    ADC2_CK_P,
    ADC3_CK,
    ADC3_CK_N,
    ADC3_CK_P,
    ADC4_CK,
    ADC4_CK_N,
    ADC4_CK_P);
  output [0:0]ADC0_CK;
  input ADC0_CK_N;
  input ADC0_CK_P;
  output [0:0]ADC1_CK;
  input ADC1_CK_N;
  input ADC1_CK_P;
  output [0:0]ADC2_CK;
  input ADC2_CK_N;
  input ADC2_CK_P;
  output [0:0]ADC3_CK;
  input ADC3_CK_N;
  input ADC3_CK_P;
  output [0:0]ADC4_CK;
  input ADC4_CK_N;
  input ADC4_CK_P;

  wire ADC0_CK_N_1;
  wire ADC0_CK_P_1;
  wire ADC1_CK_N_1;
  wire ADC1_CK_P_1;
  wire ADC2_CK_N_1;
  wire ADC2_CK_P_1;
  wire ADC3_CK_N_1;
  wire ADC3_CK_P_1;
  wire ADC4_CK_N_1;
  wire ADC4_CK_P_1;
  wire [0:0]util_ds_buf_3_IBUF_OUT;
  wire [0:0]util_ds_buf_4_IBUF_OUT;
  wire [0:0]util_ds_buf_5_IBUF_OUT;
  wire [0:0]util_ds_buf_6_IBUF_OUT;
  wire [0:0]util_ds_buf_7_IBUF_OUT;

  assign ADC0_CK[0] = util_ds_buf_3_IBUF_OUT;
  assign ADC0_CK_N_1 = ADC0_CK_N;
  assign ADC0_CK_P_1 = ADC0_CK_P;
  assign ADC1_CK[0] = util_ds_buf_4_IBUF_OUT;
  assign ADC1_CK_N_1 = ADC1_CK_N;
  assign ADC1_CK_P_1 = ADC1_CK_P;
  assign ADC2_CK[0] = util_ds_buf_5_IBUF_OUT;
  assign ADC2_CK_N_1 = ADC2_CK_N;
  assign ADC2_CK_P_1 = ADC2_CK_P;
  assign ADC3_CK[0] = util_ds_buf_6_IBUF_OUT;
  assign ADC3_CK_N_1 = ADC3_CK_N;
  assign ADC3_CK_P_1 = ADC3_CK_P;
  assign ADC4_CK[0] = util_ds_buf_7_IBUF_OUT;
  assign ADC4_CK_N_1 = ADC4_CK_N;
  assign ADC4_CK_P_1 = ADC4_CK_P;
  adc_clk_merge_util_ds_buf_3_0 util_ds_buf_3
       (.IBUF_DS_N(ADC0_CK_N_1),
        .IBUF_DS_P(ADC0_CK_P_1),
        .IBUF_OUT(util_ds_buf_3_IBUF_OUT));
  adc_clk_merge_util_ds_buf_4_0 util_ds_buf_4
       (.IBUF_DS_N(ADC1_CK_N_1),
        .IBUF_DS_P(ADC1_CK_P_1),
        .IBUF_OUT(util_ds_buf_4_IBUF_OUT));
  adc_clk_merge_util_ds_buf_5_0 util_ds_buf_5
       (.IBUF_DS_N(ADC2_CK_N_1),
        .IBUF_DS_P(ADC2_CK_P_1),
        .IBUF_OUT(util_ds_buf_5_IBUF_OUT));
  adc_clk_merge_util_ds_buf_6_0 util_ds_buf_6
       (.IBUF_DS_N(ADC3_CK_N_1),
        .IBUF_DS_P(ADC3_CK_P_1),
        .IBUF_OUT(util_ds_buf_6_IBUF_OUT));
  adc_clk_merge_util_ds_buf_7_0 util_ds_buf_7
       (.IBUF_DS_N(ADC4_CK_N_1),
        .IBUF_DS_P(ADC4_CK_P_1),
        .IBUF_OUT(util_ds_buf_7_IBUF_OUT));
endmodule

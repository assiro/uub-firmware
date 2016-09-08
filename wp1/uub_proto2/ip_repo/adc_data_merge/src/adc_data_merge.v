//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.2 (lin64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
//Date        : Fri Jan 22 14:17:03 2016
//Host        : dfn-x3100.auger.mtu.edu running 64-bit Scientific Linux release 6.7 (Carbon)
//Command     : generate_target adc_data_merge.bd
//Design      : adc_data_merge
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "adc_data_merge,IP_Integrator,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=adc_data_merge,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=16,numReposBlks=16,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,synth_mode=Global}" *) (* HW_HANDOFF = "adc_data_merge.hwdef" *) 
module adc_data_merge
   (ADC0,
    ADC0_DATA,
    ADC1,
    ADC1_DATA,
    ADC2,
    ADC2_DATA,
    ADC3,
    ADC3_DATA,
    ADC4,
    ADC4_DATA,
    ADC_DATA,
    CLK_IN,
    RESET);
  input [12:0]ADC0;
  output [25:0]ADC0_DATA;
  input [12:0]ADC1;
  output [25:0]ADC1_DATA;
  input [12:0]ADC2;
  output [25:0]ADC2_DATA;
  input [12:0]ADC3;
  output [25:0]ADC3_DATA;
  input [12:0]ADC4;
  output [25:0]ADC4_DATA;
  output [119:0]ADC_DATA;
  input CLK_IN;
  input RESET;

  wire [12:0]ADC0_1;
  wire [12:0]ADC1_1;
  wire [12:0]ADC2_1;
  wire [12:0]ADC3_1;
  wire [12:0]ADC4_1;
  wire CLK_IN_1;
  wire RESET_1;
  wire [25:0]selectio_wiz_0_data_in_to_device;
  wire [25:0]selectio_wiz_1_data_in_to_device;
  wire [25:0]selectio_wiz_2_data_in_to_device;
  wire [25:0]selectio_wiz_3_data_in_to_device;
  wire [25:0]selectio_wiz_4_data_in_to_device;
  wire [119:0]xlconcat_0_dout;
  wire [11:0]xlslice_0_Dout;
  wire [11:0]xlslice_1_Dout;
  wire [11:0]xlslice_2_Dout;
  wire [11:0]xlslice_3_Dout;
  wire [11:0]xlslice_4_Dout;
  wire [11:0]xlslice_5_Dout;
  wire [11:0]xlslice_6_Dout;
  wire [11:0]xlslice_7_Dout;
  wire [11:0]xlslice_8_Dout;
  wire [11:0]xlslice_9_Dout;

  assign ADC0_1 = ADC0[12:0];
  assign ADC0_DATA[25:0] = selectio_wiz_0_data_in_to_device;
  assign ADC1_1 = ADC1[12:0];
  assign ADC1_DATA[25:0] = selectio_wiz_1_data_in_to_device;
  assign ADC2_1 = ADC2[12:0];
  assign ADC2_DATA[25:0] = selectio_wiz_2_data_in_to_device;
  assign ADC3_1 = ADC3[12:0];
  assign ADC3_DATA[25:0] = selectio_wiz_3_data_in_to_device;
  assign ADC4_1 = ADC4[12:0];
  assign ADC4_DATA[25:0] = selectio_wiz_4_data_in_to_device;
  assign ADC_DATA[119:0] = xlconcat_0_dout;
  assign CLK_IN_1 = CLK_IN;
  assign RESET_1 = RESET;
  adc_data_merge_selectio_wiz_1_1 selectio_wiz_0
       (.clk_in(CLK_IN_1),
        .data_in_from_pins(ADC0_1),
        .data_in_to_device(selectio_wiz_0_data_in_to_device),
        .io_reset(RESET_1));
  adc_data_merge_selectio_wiz_1_0 selectio_wiz_1
       (.clk_in(CLK_IN_1),
        .data_in_from_pins(ADC1_1),
        .data_in_to_device(selectio_wiz_1_data_in_to_device),
        .io_reset(RESET_1));
  adc_data_merge_selectio_wiz_2_0 selectio_wiz_2
       (.clk_in(CLK_IN_1),
        .data_in_from_pins(ADC2_1),
        .data_in_to_device(selectio_wiz_2_data_in_to_device),
        .io_reset(RESET_1));
  adc_data_merge_selectio_wiz_3_0 selectio_wiz_3
       (.clk_in(CLK_IN_1),
        .data_in_from_pins(ADC3_1),
        .data_in_to_device(selectio_wiz_3_data_in_to_device),
        .io_reset(RESET_1));
  adc_data_merge_selectio_wiz_4_0 selectio_wiz_4
       (.clk_in(CLK_IN_1),
        .data_in_from_pins(ADC4_1),
        .data_in_to_device(selectio_wiz_4_data_in_to_device),
        .io_reset(RESET_1));
  adc_data_merge_xlconcat_0_1 xlconcat_0
       (.In0(xlslice_0_Dout),
        .In1(xlslice_1_Dout),
        .In2(xlslice_2_Dout),
        .In3(xlslice_3_Dout),
        .In4(xlslice_4_Dout),
        .In5(xlslice_5_Dout),
        .In6(xlslice_6_Dout),
        .In7(xlslice_7_Dout),
        .In8(xlslice_8_Dout),
        .In9(xlslice_9_Dout),
        .dout(xlconcat_0_dout));
  adc_data_merge_xlslice_0_0 xlslice_0
       (.Din(selectio_wiz_0_data_in_to_device),
        .Dout(xlslice_0_Dout));
  adc_data_merge_xlslice_0_1 xlslice_1
       (.Din(selectio_wiz_0_data_in_to_device),
        .Dout(xlslice_1_Dout));
  adc_data_merge_xlslice_0_2 xlslice_2
       (.Din(selectio_wiz_1_data_in_to_device),
        .Dout(xlslice_2_Dout));
  adc_data_merge_xlslice_0_3 xlslice_3
       (.Din(selectio_wiz_1_data_in_to_device),
        .Dout(xlslice_3_Dout));
  adc_data_merge_xlslice_0_4 xlslice_4
       (.Din(selectio_wiz_2_data_in_to_device),
        .Dout(xlslice_4_Dout));
  adc_data_merge_xlslice_0_5 xlslice_5
       (.Din(selectio_wiz_2_data_in_to_device),
        .Dout(xlslice_5_Dout));
  adc_data_merge_xlslice_0_6 xlslice_6
       (.Din(selectio_wiz_3_data_in_to_device),
        .Dout(xlslice_6_Dout));
  adc_data_merge_xlslice_0_7 xlslice_7
       (.Din(selectio_wiz_3_data_in_to_device),
        .Dout(xlslice_7_Dout));
  adc_data_merge_xlslice_0_8 xlslice_8
       (.Din(selectio_wiz_4_data_in_to_device),
        .Dout(xlslice_8_Dout));
  adc_data_merge_xlslice_0_9 xlslice_9
       (.Din(selectio_wiz_4_data_in_to_device),
        .Dout(xlslice_9_Dout));
endmodule

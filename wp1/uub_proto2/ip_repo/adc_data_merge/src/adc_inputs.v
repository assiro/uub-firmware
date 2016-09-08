//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.2 (lin64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
//Date        : Sat Feb  6 15:46:07 2016
//Host        : dfn-x3100.auger.mtu.edu running 64-bit Scientific Linux release 6.7 (Carbon)
//Command     : generate_target adc_inputs.bd
//Design      : adc_inputs
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "adc_inputs,IP_Integrator,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=adc_inputs,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=31,numReposBlks=31,numNonXlnxBlks=5,numHierBlks=0,maxHierDepth=0,synth_mode=Global}" *) (* HW_HANDOFF = "adc_inputs.hwdef" *) 
module adc_inputs
   (ADC0_CK_N,
    ADC0_CK_P,
    ADC0_DATA,
    ADC0_N,
    ADC0_P,
    ADC1_CK_N,
    ADC1_CK_P,
    ADC1_DATA,
    ADC1_N,
    ADC1_P,
    ADC2_CK_N,
    ADC2_CK_P,
    ADC2_DATA,
    ADC2_N,
    ADC2_P,
    ADC3_CK_N,
    ADC3_CK_P,
    ADC3_DATA,
    ADC3_N,
    ADC3_P,
    ADC4_CK_N,
    ADC4_CK_P,
    ADC4_DATA,
    ADC4_N,
    ADC4_P,
    ADC_DATA,
    CLK_120,
    RESET);
  input ADC0_CK_N;
  input ADC0_CK_P;
  output [25:0]ADC0_DATA;
  input [12:0]ADC0_N;
  input [12:0]ADC0_P;
  input ADC1_CK_N;
  input ADC1_CK_P;
  output [25:0]ADC1_DATA;
  input [12:0]ADC1_N;
  input [12:0]ADC1_P;
  input ADC2_CK_N;
  input ADC2_CK_P;
  output [25:0]ADC2_DATA;
  input [12:0]ADC2_N;
  input [12:0]ADC2_P;
  input ADC3_CK_N;
  input ADC3_CK_P;
  output [25:0]ADC3_DATA;
  input [12:0]ADC3_N;
  input [12:0]ADC3_P;
  input ADC4_CK_N;
  input ADC4_CK_P;
  output [25:0]ADC4_DATA;
  input [12:0]ADC4_N;
  input [12:0]ADC4_P;
  output [119:0]ADC_DATA;
  input CLK_120;
  input RESET;

  wire ADC0_CK_N_1;
  wire ADC0_CK_P_1;
  wire [12:0]ADC0_N_1;
  wire [12:0]ADC0_P_1;
  wire ADC1_CK_N_1;
  wire ADC1_CK_P_1;
  wire [12:0]ADC1_N_1;
  wire [12:0]ADC1_P_1;
  wire ADC2_CK_N_1;
  wire ADC2_CK_P_1;
  wire [12:0]ADC2_N_1;
  wire [12:0]ADC2_P_1;
  wire ADC3_CK_N_1;
  wire ADC3_CK_P_1;
  wire [12:0]ADC3_N_1;
  wire [12:0]ADC3_P_1;
  wire ADC4_CK_N_1;
  wire ADC4_CK_P_1;
  wire [12:0]ADC4_N_1;
  wire [12:0]ADC4_P_1;
  wire CLK_120_1;
  wire RESET_1;
  wire [25:0]selectio_wiz_0_data_in_to_device;
  wire [25:0]selectio_wiz_1_data_in_to_device;
  wire [25:0]selectio_wiz_2_data_in_to_device;
  wire [25:0]selectio_wiz_3_data_in_to_device;
  wire [25:0]selectio_wiz_4_data_in_to_device;
  wire [25:0]synchronizer_26bit_0_SYNC_OUT;
  wire [25:0]synchronizer_26bit_1_SYNC_OUT;
  wire [25:0]synchronizer_26bit_2_SYNC_OUT;
  wire [25:0]synchronizer_26bit_3_SYNC_OUT;
  wire [25:0]synchronizer_26bit_4_SYNC_OUT;
  wire [0:0]util_ds_buf_0_IBUF_OUT;
  wire [12:0]util_ds_buf_1_IBUF_OUT;
  wire [0:0]util_ds_buf_2_IBUF_OUT;
  wire [12:0]util_ds_buf_3_IBUF_OUT;
  wire [0:0]util_ds_buf_4_IBUF_OUT;
  wire [12:0]util_ds_buf_5_IBUF_OUT;
  wire [0:0]util_ds_buf_6_IBUF_OUT;
  wire [12:0]util_ds_buf_7_IBUF_OUT;
  wire [0:0]util_ds_buf_8_IBUF_OUT;
  wire [12:0]util_ds_buf_9_IBUF_OUT;
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

  assign ADC0_CK_N_1 = ADC0_CK_N;
  assign ADC0_CK_P_1 = ADC0_CK_P;
  assign ADC0_DATA[25:0] = synchronizer_26bit_0_SYNC_OUT;
  assign ADC0_N_1 = ADC0_N[12:0];
  assign ADC0_P_1 = ADC0_P[12:0];
  assign ADC1_CK_N_1 = ADC1_CK_N;
  assign ADC1_CK_P_1 = ADC1_CK_P;
  assign ADC1_DATA[25:0] = synchronizer_26bit_1_SYNC_OUT;
  assign ADC1_N_1 = ADC1_N[12:0];
  assign ADC1_P_1 = ADC1_P[12:0];
  assign ADC2_CK_N_1 = ADC2_CK_N;
  assign ADC2_CK_P_1 = ADC2_CK_P;
  assign ADC2_DATA[25:0] = synchronizer_26bit_2_SYNC_OUT;
  assign ADC2_N_1 = ADC2_N[12:0];
  assign ADC2_P_1 = ADC2_P[12:0];
  assign ADC3_CK_N_1 = ADC3_CK_N;
  assign ADC3_CK_P_1 = ADC3_CK_P;
  assign ADC3_DATA[25:0] = synchronizer_26bit_3_SYNC_OUT;
  assign ADC3_N_1 = ADC3_N[12:0];
  assign ADC3_P_1 = ADC3_P[12:0];
  assign ADC4_CK_N_1 = ADC4_CK_N;
  assign ADC4_CK_P_1 = ADC4_CK_P;
  assign ADC4_DATA[25:0] = synchronizer_26bit_4_SYNC_OUT;
  assign ADC4_N_1 = ADC4_N[12:0];
  assign ADC4_P_1 = ADC4_P[12:0];
  assign ADC_DATA[119:0] = xlconcat_0_dout;
  assign CLK_120_1 = CLK_120;
  assign RESET_1 = RESET;
  adc_inputs_selectio_wiz_0_0 selectio_wiz_0
       (.clk_in(util_ds_buf_0_IBUF_OUT),
        .data_in_from_pins(util_ds_buf_1_IBUF_OUT),
        .data_in_to_device(selectio_wiz_0_data_in_to_device),
        .io_reset(RESET_1));
  adc_inputs_selectio_wiz_1_0 selectio_wiz_1
       (.clk_in(util_ds_buf_2_IBUF_OUT),
        .data_in_from_pins(util_ds_buf_3_IBUF_OUT),
        .data_in_to_device(selectio_wiz_1_data_in_to_device),
        .io_reset(RESET_1));
  adc_inputs_selectio_wiz_2_0 selectio_wiz_2
       (.clk_in(util_ds_buf_4_IBUF_OUT),
        .data_in_from_pins(util_ds_buf_5_IBUF_OUT),
        .data_in_to_device(selectio_wiz_2_data_in_to_device),
        .io_reset(RESET_1));
  adc_inputs_selectio_wiz_3_0 selectio_wiz_3
       (.clk_in(util_ds_buf_6_IBUF_OUT),
        .data_in_from_pins(util_ds_buf_7_IBUF_OUT),
        .data_in_to_device(selectio_wiz_3_data_in_to_device),
        .io_reset(RESET_1));
  adc_inputs_selectio_wiz_4_0 selectio_wiz_4
       (.clk_in(util_ds_buf_8_IBUF_OUT),
        .data_in_from_pins(util_ds_buf_9_IBUF_OUT),
        .data_in_to_device(selectio_wiz_4_data_in_to_device),
        .io_reset(RESET_1));
  adc_inputs_synchronizer_26bit_0_0 synchronizer_26bit_0
       (.ASYNC_IN(selectio_wiz_0_data_in_to_device),
        .CLK(CLK_120_1),
        .SYNC_OUT(synchronizer_26bit_0_SYNC_OUT));
  adc_inputs_synchronizer_26bit_0_1 synchronizer_26bit_1
       (.ASYNC_IN(selectio_wiz_1_data_in_to_device),
        .CLK(CLK_120_1),
        .SYNC_OUT(synchronizer_26bit_1_SYNC_OUT));
  adc_inputs_synchronizer_26bit_0_2 synchronizer_26bit_2
       (.ASYNC_IN(selectio_wiz_2_data_in_to_device),
        .CLK(CLK_120_1),
        .SYNC_OUT(synchronizer_26bit_2_SYNC_OUT));
  adc_inputs_synchronizer_26bit_0_3 synchronizer_26bit_3
       (.ASYNC_IN(selectio_wiz_3_data_in_to_device),
        .CLK(CLK_120_1),
        .SYNC_OUT(synchronizer_26bit_3_SYNC_OUT));
  adc_inputs_synchronizer_26bit_0_4 synchronizer_26bit_4
       (.ASYNC_IN(selectio_wiz_4_data_in_to_device),
        .CLK(CLK_120_1),
        .SYNC_OUT(synchronizer_26bit_4_SYNC_OUT));
  adc_inputs_util_ds_buf_0_0 util_ds_buf_0
       (.IBUF_DS_N(ADC0_CK_N_1),
        .IBUF_DS_P(ADC0_CK_P_1),
        .IBUF_OUT(util_ds_buf_0_IBUF_OUT));
  adc_inputs_util_ds_buf_0_1 util_ds_buf_1
       (.IBUF_DS_N(ADC0_N_1),
        .IBUF_DS_P(ADC0_P_1),
        .IBUF_OUT(util_ds_buf_1_IBUF_OUT));
  adc_inputs_util_ds_buf_0_2 util_ds_buf_2
       (.IBUF_DS_N(ADC1_CK_N_1),
        .IBUF_DS_P(ADC1_CK_P_1),
        .IBUF_OUT(util_ds_buf_2_IBUF_OUT));
  adc_inputs_util_ds_buf_0_3 util_ds_buf_3
       (.IBUF_DS_N(ADC1_N_1),
        .IBUF_DS_P(ADC1_P_1),
        .IBUF_OUT(util_ds_buf_3_IBUF_OUT));
  adc_inputs_util_ds_buf_0_4 util_ds_buf_4
       (.IBUF_DS_N(ADC2_CK_N_1),
        .IBUF_DS_P(ADC2_CK_P_1),
        .IBUF_OUT(util_ds_buf_4_IBUF_OUT));
  adc_inputs_util_ds_buf_0_5 util_ds_buf_5
       (.IBUF_DS_N(ADC2_N_1),
        .IBUF_DS_P(ADC2_P_1),
        .IBUF_OUT(util_ds_buf_5_IBUF_OUT));
  adc_inputs_util_ds_buf_0_6 util_ds_buf_6
       (.IBUF_DS_N(ADC3_CK_N_1),
        .IBUF_DS_P(ADC3_CK_P_1),
        .IBUF_OUT(util_ds_buf_6_IBUF_OUT));
  adc_inputs_util_ds_buf_0_7 util_ds_buf_7
       (.IBUF_DS_N(ADC3_N_1),
        .IBUF_DS_P(ADC3_P_1),
        .IBUF_OUT(util_ds_buf_7_IBUF_OUT));
  adc_inputs_util_ds_buf_0_8 util_ds_buf_8
       (.IBUF_DS_N(ADC4_CK_N_1),
        .IBUF_DS_P(ADC4_CK_P_1),
        .IBUF_OUT(util_ds_buf_8_IBUF_OUT));
  adc_inputs_util_ds_buf_0_9 util_ds_buf_9
       (.IBUF_DS_N(ADC4_N_1),
        .IBUF_DS_P(ADC4_P_1),
        .IBUF_OUT(util_ds_buf_9_IBUF_OUT));
  adc_inputs_xlconcat_0_0 xlconcat_0
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
  adc_inputs_xlslice_0_0 xlslice_0
       (.Din(synchronizer_26bit_0_SYNC_OUT),
        .Dout(xlslice_0_Dout));
  adc_inputs_xlslice_1_0 xlslice_1
       (.Din(synchronizer_26bit_0_SYNC_OUT),
        .Dout(xlslice_1_Dout));
  adc_inputs_xlslice_2_0 xlslice_2
       (.Din(synchronizer_26bit_1_SYNC_OUT),
        .Dout(xlslice_2_Dout));
  adc_inputs_xlslice_3_0 xlslice_3
       (.Din(synchronizer_26bit_1_SYNC_OUT),
        .Dout(xlslice_3_Dout));
  adc_inputs_xlslice_4_0 xlslice_4
       (.Din(synchronizer_26bit_2_SYNC_OUT),
        .Dout(xlslice_4_Dout));
  adc_inputs_xlslice_5_0 xlslice_5
       (.Din(synchronizer_26bit_2_SYNC_OUT),
        .Dout(xlslice_5_Dout));
  adc_inputs_xlslice_6_0 xlslice_6
       (.Din(synchronizer_26bit_3_SYNC_OUT),
        .Dout(xlslice_6_Dout));
  adc_inputs_xlslice_7_0 xlslice_7
       (.Din(synchronizer_26bit_3_SYNC_OUT),
        .Dout(xlslice_7_Dout));
  adc_inputs_xlslice_8_0 xlslice_8
       (.Din(synchronizer_26bit_4_SYNC_OUT),
        .Dout(xlslice_8_Dout));
  adc_inputs_xlslice_9_0 xlslice_9
       (.Din(synchronizer_26bit_4_SYNC_OUT),
        .Dout(xlslice_9_Dout));
endmodule

-- (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: elettronica.le.infn.it:user:WP1_ADC_Control:1.2
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY uub_proto2_WP1_ADC_Control_0_0 IS
  PORT (
    RSTn : IN STD_LOGIC;
    FPGA_CK : IN STD_LOGIC;
    BRAM_CK : OUT STD_LOGIC;
    adc0 : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    adc1 : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    adc2 : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    adc3 : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    adc4 : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    ADC0_mem : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ADC1_mem : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ADC2_mem : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ADC3_mem : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ADC4_mem : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ADDR_mem : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    Stop_Addr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    wea : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    ASY_TRIG : OUT STD_LOGIC;
    EXT_TRIG : IN STD_LOGIC;
    TRIG_OUT : OUT STD_LOGIC;
    Config_Trig : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    ENABLE_PPS : OUT STD_LOGIC;
    TRIG_TRESH : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    enable : OUT STD_LOGIC
  );
END uub_proto2_WP1_ADC_Control_0_0;

ARCHITECTURE uub_proto2_WP1_ADC_Control_0_0_arch OF uub_proto2_WP1_ADC_Control_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : string;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF uub_proto2_WP1_ADC_Control_0_0_arch: ARCHITECTURE IS "yes";

  COMPONENT WP1_ADC_Control IS
    PORT (
      RSTn : IN STD_LOGIC;
      FPGA_CK : IN STD_LOGIC;
      BRAM_CK : OUT STD_LOGIC;
      adc0 : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
      adc1 : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
      adc2 : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
      adc3 : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
      adc4 : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
      ADC0_mem : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ADC1_mem : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ADC2_mem : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ADC3_mem : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ADC4_mem : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ADDR_mem : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      Stop_Addr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      wea : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      ASY_TRIG : OUT STD_LOGIC;
      EXT_TRIG : IN STD_LOGIC;
      TRIG_OUT : OUT STD_LOGIC;
      Config_Trig : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      ENABLE_PPS : OUT STD_LOGIC;
      TRIG_TRESH : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      enable : OUT STD_LOGIC
    );
  END COMPONENT WP1_ADC_Control;
BEGIN
  U0 : WP1_ADC_Control
    PORT MAP (
      RSTn => RSTn,
      FPGA_CK => FPGA_CK,
      BRAM_CK => BRAM_CK,
      adc0 => adc0,
      adc1 => adc1,
      adc2 => adc2,
      adc3 => adc3,
      adc4 => adc4,
      ADC0_mem => ADC0_mem,
      ADC1_mem => ADC1_mem,
      ADC2_mem => ADC2_mem,
      ADC3_mem => ADC3_mem,
      ADC4_mem => ADC4_mem,
      ADDR_mem => ADDR_mem,
      Stop_Addr => Stop_Addr,
      wea => wea,
      ASY_TRIG => ASY_TRIG,
      EXT_TRIG => EXT_TRIG,
      TRIG_OUT => TRIG_OUT,
      Config_Trig => Config_Trig,
      ENABLE_PPS => ENABLE_PPS,
      TRIG_TRESH => TRIG_TRESH,
      enable => enable
    );
END uub_proto2_WP1_ADC_Control_0_0_arch;
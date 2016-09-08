 -----------------------------------------------------------------------
 -- Company: 
 -- Engineer: 
 -- 
 -- Create Date:    29/07/2014 
 -- Design Name:    EVAL_UUB
 -- Module Name:    test_uub - Behavioral 
 -- Project Name: 
 -- Target Devices: 
 -- Tool versions: 
 -- Description: 
 --
 -- Dependencies: 
 --
 -- Revision: 
 --   0  29/07/14 Version initiale
 --   1  20150917 Modification pour la version proto
 --                 les data ADC0 sont maintenant correctement branchees
 --   2  26-Feb-2016 DFN Modify ADC inputs to be 24 instead of 26 bits
 --      29-Feb-2016 DFN Remove ADCn_CK ports
 --   3  26-Jun-2016 DFN Stripped out most stuff moved to sde_trigger
 -----------------------------------------------------------------------
 library ieee;
   use ieee.std_logic_1164.all;
   use ieee.std_logic_arith.all;
   use ieee.std_logic_unsigned.all;
  
 entity test_uub is
   Port ( RSTn          : in  std_logic;
          CLK           : in  std_logic;
          reg_wr0       : in  std_logic_vector(31 downto 0);
          reg_wr1       : in  std_logic_vector(31 downto 0);
          reg_wr2       : in  std_logic_vector(31 downto 0);
          reg_wr3       : in  std_logic_vector(31 downto 0);
          reg_wr4       : in  std_logic_vector(31 downto 0);
          reg_wr5       : in  std_logic_vector(31 downto 0);
          reg_wr6       : in  std_logic_vector(31 downto 0);
          reg_wr7       : in  std_logic_vector(31 downto 0);
          reg_wr8       : in  std_logic_vector(31 downto 0);
          reg_wr9       : in  std_logic_vector(31 downto 0);
          reg_wr10      : in  std_logic_vector(31 downto 0);
          reg_wr11      : in  std_logic_vector(31 downto 0);
          reg_wr12      : in  std_logic_vector(31 downto 0);
          reg_wr13      : in  std_logic_vector(31 downto 0);
          reg_wr14      : in  std_logic_vector(31 downto 0);
          reg_wr15      : in  std_logic_vector(31 downto 0);
          reg_rd0       : out std_logic_vector(31 downto 0);
          reg_rd1       : out std_logic_vector(31 downto 0);
          reg_rd2       : out std_logic_vector(31 downto 0);
          reg_rd3       : out std_logic_vector(31 downto 0);
          reg_rd4       : out std_logic_vector(31 downto 0);
          reg_rd5       : out std_logic_vector(31 downto 0);
          reg_rd6       : out std_logic_vector(31 downto 0);
          reg_rd7       : out std_logic_vector(31 downto 0);
          reg_rd8       : out std_logic_vector(31 downto 0);
          reg_rd9       : out std_logic_vector(31 downto 0);
          reg_rd10      : out std_logic_vector(31 downto 0);
          reg_rd11      : out std_logic_vector(31 downto 0);
          reg_rd12      : out std_logic_vector(31 downto 0);
          reg_rd13      : out std_logic_vector(31 downto 0);
          reg_rd14      : out std_logic_vector(31 downto 0);
          reg_rd15      : out std_logic_vector(31 downto 0);
 
       -- Interface switches
          hconf         : in  std_logic_vector(7 downto 0);
        -- Interface autre 
          WATCHDOG      : in  std_logic;
          RADIO_RST_IN  : in  std_logic;
          RADIO_RST_OUT : out std_logic;
          USB_IFAULT    : in  std_logic );
  end test_uub;
 
 architecture Behavioral of test_uub is
  
 begin
 

  --********************************************************************
 --                     Formation des registres 
 --********************************************************************
     
-- Regiser 5 definition
   
  reg_rd5(31 downto 10)  <= reg_wr5(31 downto 10)   ;            -- free
  reg_rd5(7 downto 0 ) <= hconf;
  reg_rd5(8) <= USB_IFAULT;
  reg_rd5(9) <= WATCHDOG;
           
 -- Registre 6 : definition
              
 reg_rd6(3 downto 0) <= reg_wr6(3 downto 0);         
 RADIO_RST_OUT <= reg_wr6(4);
 reg_rd6(4) <= reg_wr6(4);
 reg_rd6(5) <= RADIO_RST_IN;
 reg_rd6(31 downto 6) <=  reg_wr6(31 downto 6);
  
 reg_rd0  <= reg_wr0;           
 reg_rd1  <= reg_wr1;           
 reg_rd2  <= reg_wr2;           
 reg_rd3  <= reg_wr3;           
 reg_rd4  <= reg_wr4;           
 reg_rd7  <= reg_wr7;           
 reg_rd8  <= reg_wr8;           
 reg_rd9  <= reg_wr9;           
 reg_rd10 <= reg_wr10;           
 reg_rd11 <= reg_wr11;           
 reg_rd12 <= reg_wr12;           
 reg_rd13 <= reg_wr13;           
 reg_rd14 <= reg_wr14;           
-- reg_rd15 <= reg_wr15;           
 reg_rd15 <= x"5555AAAA";           
           
  end Behavioral;
 

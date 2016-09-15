-----------------------------------------------------------------------
-- Company: INFN
-- Roberto Assiro & P.Creti written 09/2016
-- LED CONTROLLER
-- Logic to controll LED pulse sincronized with PPS signal
-----------------------------------------------------------------------
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_unsigned.all;
 
entity WP1_LED_Control is
  Port ( LED_OUT         : out  std_logic; 
         PPS             : in   std_logic;
         ASY_TRIG        : in   std_logic;
         clock           : in   std_logic;
         reset           : in   std_logic;
         delay_set        : in   std_logic_vector (31 downto 0);
         ENABLE_PPS      : in   std_logic);        
         
end WP1_LED_Control;

architecture Behavioral of WP1_LED_Control is

  signal qq0   : std_logic;
  signal qq1   : std_logic;
  signal qq2   : std_logic;
  signal qq3   : std_logic; 
  signal clear_enable   : std_logic;
  signal q_clear_enable   : std_logic;
  signal mem_pps        : std_logic;
  signal mem_enable     : std_logic;
  signal veto_trig      : std_logic;
  signal led_pps        : std_logic;
  signal async_trig     : std_logic;
  signal delay_counter  : std_logic_vector (31 downto 0);
  signal veto_counter   : std_logic_vector (15 downto 0);

 
begin
process (reset, clock)  -- process for enable PPS
            begin
            if (reset = '0') then
                mem_enable <= '0';
            elsif rising_edge(clock) then
                if (ENABLE_PPS = '1') then
                    mem_enable <= '1';  
                elsif ( q_clear_enable ='1') then
                     mem_enable <= '0';      
                else
                    mem_enable <= mem_enable;
                end if;
            end if;
end process;   

mem_pps <= mem_enable and PPS; 

process (reset, clock)  -- formazione temporale impulso LED sincronizzato con PPS 
            begin
            if reset = '0' then
                veto_counter <= (others => '0');
                clear_enable <= '0';
                led_pps <= '0';
            elsif rising_edge(clock) then            
                if ((mem_pps ='1') or (led_pps = '1')) then
                    led_pps <= '1';
                    clear_enable <= '0';
--                    if (veto_counter = "1000000000000000") then --contatore definizione lunghezza dell'impulso LED sincronizzato con PPS   x 8ns                                  
                      if (veto_counter = "0000000100000000") then --contatore definizione lunghezza dell'impulso LED sincronizzato con PPS
                                    veto_counter <= (others => '0');
                                    led_pps <='0';
                                    clear_enable <= '1';
                                else
                                    veto_counter <= veto_counter + "0000000000000001";
                    end if;
                end if;                              
            end if;
end process;  


process (reset, clock)  -- allungamento temporale segnale di clear_enable
    begin
     if reset = '0' then
        qq0 <= '0';
        qq1 <= '0';
        qq2 <= '0';
        qq3 <= '0';
     elsif rising_edge(clock) then
        qq0 <= clear_enable;
        qq1 <= qq0;
        qq2 <= qq1;
        qq3 <= qq2;
     end if;
end process;
    q_clear_enable <= (not qq3) AND qq1; 
    


-- NOTE THE COUNTER FOR DELAY OF LED SHOT under pps SIGNALS FOR SHOWER SIMULATION must be developed!!!
--process (reset, clock)  -- ritardo per impulso LED sincronizzato con PPS - simulazione sciame
--            begin
--            if reset = '0' then
--                delay_counter <= (others => '0');
--                clear_enable <= '0';
--                led_pps <= '0';
--            elsif rising_edge(clock) then            
--                if ((mem_pps ='1') or (led_pps = '1')) then
--                    led_pps <= '1';
--                    clear_enable <= '0';
--                    if (veto_counter = "1000000000000000") then --ritardo relativo alla lunghezza dell'impulso LED sincronizzato con PPS   x 8ns                                  
--                                    veto_counter <= (others => '0');
--                                    led_pps <='0';
--                                    clear_enable <= '1';
--                                else
--                                    veto_counter <= veto_counter + "0000000000000001";
--                    end if;
--                end if;                              
--            end if;
--end process;  

    


--async_trig <= data_set (31 downto 31);
LED_OUT <= ASY_TRIG or led_pps;

end Behavioral;


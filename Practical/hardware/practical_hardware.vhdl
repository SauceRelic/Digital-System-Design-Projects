-- practical_hardware.vhdl
-- Phillip Hiemenz
-- created 11/1/2018
-- 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity practical_hardware is
  port(
    clk: in std_logic;
    clear: in std_logic;
    start_in: in std_logic;
    stop_in: in std_logic;
    lap_in: in std_logic;
    
    seconds: out std_logic_vector(6 downto 0);
    half_sec: out std_logic_vector(3 downto 0)
  );
end entity;

architecture behavioral of practical_hardware is
  
  type action is (RESET, STOP, START, LAP);
  signal cstate: action;
  signal nstate: action;
  
  signal sec: unsigned(6 downto 0);
  signal half: std_logic;
  signal sec_next: unsigned(6 downto 0);
  signal half_next: std_logic;
  signal sec_out: unsigned(6 downto 0);
  signal half_out: std_logic;

begin

  -- state and count register
  process(clk,clear)
  begin
    if(clear = '1') then
      cstate <= RESET;
      sec <= to_unsigned(0,7);
      half <= '0';
    elsif(rising_edge(clk)) then
      cstate <= nstate;
      sec <= sec_next;
      half <= half_next;
    end if;
  end process;
  
  -- next state logic
  process(all)
  begin
    if(cstate = RESET) then
      nstate <= STOP;
      
    elsif(cstate = STOP) then
      if(start_in = '1') then
        nstate <= START;
      else
        nstate <= STOP;
      end if;
      
    elsif(cstate = START) then
      if(stop_in = '1') then
        nstate <= STOP;
      else
        if(lap_in = '1') then
          nstate <= LAP;
        else
          nstate <= START;
        end if;
      end if;
      
    elsif(cstate = LAP) then
      if(stop_in = '1') then
        nstate <= STOP;
      elsif(lap_in = '0') then
        nstate <= START;
      else
        nstate <= LAP;
      end if;
      
    else
      nstate <= RESET;
    end if;
    
  end process;
  
  -- counting logic
  process(all)
  begin
    if((cstate = START) or (cstate = LAP)) then
      if(half = '1') then
        if(sec >= 80) then
          sec_next <= to_unsigned(0,7);
        else
          sec_next <= sec + 1;
        end if;
      else
        sec_next <= sec;
      end if;
      
      half_next <= not(half);
    else
      sec_next <= sec;
      half_next <= half;
    end if;
  end process;
  
  -- hold register
  process(clk,clear)
  begin
    if(clear = '1') then
      sec_out <= to_unsigned(0,7);
      half_out <= '0';
    elsif(rising_edge(clk)) then
      if(cstate = LAP) then
        sec_out <= sec_out;
        half_out <= half_out;
      else
        sec_out <= sec;
        half_out <= half;
      end if;
    end if;
  end process;
  
  -- output
  seconds <= std_logic_vector(sec_out);
  process(all)
  begin
    if(half_out = '1') then
      half_sec <= "0101";
    else
      half_sec <= "0000";
    end if;
  end process;

end architecture;
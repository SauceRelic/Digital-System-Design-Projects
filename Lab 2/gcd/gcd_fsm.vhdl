-- gcd_fsm.vhdl
-- finalized 9/27/2018
-- Phillip Hiemenz
--
-- Drives a greatest common denominator calculator using a state machine.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gcd_fsm is
  port(
    clk: in std_logic;
    rstb: in std_logic;
    startb: in std_logic;
    done: in std_logic;
    
    calc: out std_logic;
    finished: out std_logic
  );
end entity;

architecture behavioral of gcd_fsm is
  
-- state type and signal declarations
  type STATE is (idle, running, complete);
  signal cstate: STATE;
  signal nstate: STATE;
  
begin

-- next state logic
  process(all)
  begin
    case cstate is
      when idle =>
        if(startb = '0') then
          nstate <= running;
        else
          nstate <= idle;
        end if;
      
      when running =>
        if(done =  '1') then
          nstate <= complete;
        else
          nstate <= running;
        end if;
        
      when complete =>
        nstate <= idle;
        
    end case;
  end process;
  
-- state register
  process(clk,rstb)
  begin
    if(rstb = '0') then
      cstate <= idle;
    elsif(rising_edge(clk)) then
      cstate <= nstate;
    end if;
  end process;
  
-- output logic
  process(all)
  begin
    case cstate is
      when idle =>
        calc <= '0';
        finished <= '1';
      
      when running =>
        calc <= '1';
        finished <= '0';
        
      when complete =>
        calc <= '0';
        finished <= '1';
    
    end case;
  end process;
  
end architecture;
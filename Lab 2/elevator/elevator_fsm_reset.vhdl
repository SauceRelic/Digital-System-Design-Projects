library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity elevator_fsm_reset is
generic(
  FMAX: natural := 63;
  FMAX_BIT: natural := 8
);
port(
  clk: in std_logic;
  rstb: in std_logic;
  fdest_in: in std_logic_vector(FMAX_BIT - 1 downto 0);
  fcurr_disp: out std_logic_vector(FMAX_BIT - 1 downto 0)
);
end entity;

architecture behavioral of elevator_fsm_reset is
  type action is (RESET, IDLE, UP, DOWN);
  signal cstate: action;
  signal nstate: action;
  
  signal fdest: unsigned(FMAX_BIT - 1 downto 0);
  signal fcurr: unsigned(FMAX_BIT - 1 downto 0);
  
begin  

  fcurr_disp <= Std_logic_vector(fcurr);

 -- Current state logic
  process(clk)
  begin
    if(rising_edge(clk)) then
      if(cstate = RESET) then
        fcurr <= to_unsigned(0,FMAX_BIT);
        
      elsif(cstate = IDLE) then
        fdest <= unsigned(fdest_in);
        if(fdest > FMAX) then
          fdest <= to_unsigned(FMAX,FMAX_BIT);
        else
        end if;
        
      elsif(cstate = UP) then
        fcurr <= fcurr + 1;
        
      elsif(cstate = DOWN) then
        fcurr <= fcurr - 1;

        
      else
      end if;
    else
    end if;
  end process;
  
  -- Next state logic
  process(all)
  begin
    case cstate is
      when IDLE =>
        if(fdest > fcurr) then
          nstate <= UP;
          
        elsif(fdest < fcurr) then
          nstate <= DOWN;
          
        else
          nstate <= IDLE;
          
        end if;
      
      when UP =>
        if(fcurr + 1 = fdest) then
          nstate <= IDLE;
        else
          nstate <= UP;
        end if;
        
      when DOWN =>
        if(fcurr - 1 = fdest) then
          nstate <= IDLE;
        else
          nstate <= DOWN;
        end if;
          
      when RESET =>
        if(fcurr = 0) then
          nstate <= IDLE;
        else
          nstate <= RESET;
        end if;
        
    end case;
  end process;
  
  -- Register logic
  process(clk,rstb)
  begin
    if(rstb = '0') then
      cstate <= RESET;
    elsif(rising_edge(clk)) then
      cstate <= nstate;
    else
    end if;
  end process;
end architecture;
  
  
  
--------------------------------------
--
-- mult_rep_add_nbit_fsm.vhdl
--
-- created 9/12/18
-- tj
-- modified 9/25/18
-- phillip hiemenz
--
-- rev 0
----------------------------------------
--
-- FSM for repetitive addition multiplier
-- tells the datapath when to calculate (calc) and uses
-- done from the datapath to know its complete
----------------------------------------
--
-- Inputs: rstb, clk, startb, done
-- Outputs: calc, complete
--
----------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mult_rep_add_nbit_fsm is
  port (
    clk : in std_logic;
    rstb : in std_logic;
    startb : in std_logic;
    done : in std_logic;
    calc : out std_logic;
    complete : out std_logic
  );
end entity;

architecture behavioral of mult_rep_add_nbit_fsm is
--
-- State Types
--
  type STATE_TYPE is (Idle, Run, Finish);
  signal state: STATE_TYPE;
  signal state_next: STATE_TYPE;

begin

--
-- next state logic
--
  process(all)
  begin
    case state is
      when Idle=>
        if(startb = '0') then
          state_next <= Run;
        else
          state_next <= Idle;
        end if;

      when Run =>
        if(done = '1') then
          state_next <= Finish;
        else
          state_next <= Run;
        end if;

      when Finish =>
        state_next <= Idle;
    
    end case;
  end process;

--
-- State Register logic
--
  process(clk, rstb)
  begin
  -- reset
    if (rstb = '0') then
      state <= Idle;
  
  -- rising clk edge
    elsif (rising_edge(clk)) then
      state <= state_next;
    end if;
  end process;

--
-- Output logic
--
  process(all)
  begin
    case state is
      when Idle=>
        complete <= '1';
        calc <= '0';
        
      when Run =>
        complete <= '0';
        calc <= '1';
        
      when Finish =>
        complete <= '1';
        calc <= '0';
        
    end case;
  end process;
end behavioral;
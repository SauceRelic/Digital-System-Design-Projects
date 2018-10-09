-- gcd_fsmd.vhdl
-- finalized 9/27/2018
-- Phillip Hiemenz
--
-- Connects a state machine and datapath to calculate the
--  lowest common denominator of two inputs.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gcd_fsmd is
  generic(
    N: natural := 4
  );
  port(
    clk: in std_logic;
    rstb: in std_logic;
    startb: in std_logic;
    
    inputA: in std_logic_vector(N-1 downto 0);
    inputB: in std_logic_vector(N-1 downto 0);
    
    finished: out std_logic;
    gcd_latched: out std_logic_vector(N-1 downto 0)
  );
end entity;

architecture behavioral of gcd_fsmd is
  
-- intermediate signals
  signal calc: std_logic;
  signal done: std_logic;
  signal gcd_out: std_logic_vector(N-1 downto 0);
  
-- component declarations
  component gcd_fsm is
    port(
      clk: in std_logic;
      rstb: in std_logic;
      startb: in std_logic;
      done: in std_logic;
    
      calc: out std_logic;
      finished: out std_logic
    );
  end component;
  
  component gcd_datapath is
    generic(
      N: natural := 4
    );
    port(
      clk: in std_logic;
      inputA: in std_logic_vector(N-1 downto 0);
      inputB: in std_logic_vector(N-1 downto 0);
      calc: in std_logic;
    
      gcd_out: out std_logic_vector(N-1 downto 0);
      done: out std_logic
    );
  end component;
  
begin

-- state machine
  FSM: gcd_fsm
  port map(
    clk => clk,
    rstb => rstb,
    startb => startb,
    done => done,
    calc => calc,
    finished => finished
  );
  
-- datapath
  DATA: gcd_datapath
  generic map(
    N => N
  )
  port map(
    clk => clk,
    inputA => inputA,
    inputB => inputB,
    calc => calc,
    gcd_out => gcd_out,
    done => done
  );
  
-- output register
  process(clk,rstb)
  begin
    if(rstb = '0') then
      gcd_latched <= (others => '0');
    elsif(rising_edge(clk)) then
      gcd_latched <= gcd_out;
    end if;
  end process;

end architecture;
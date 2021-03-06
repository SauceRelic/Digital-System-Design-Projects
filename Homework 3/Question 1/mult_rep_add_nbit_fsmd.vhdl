--------------------------------------
--
-- mult_rep_add_nbit_fsmd.vhdl
--
-- created 9/7/18
-- tj
--
-- rev 0
----------------------------------------
--
-- FSMD for repetitive addition multiplier
-- adds the multiplcand multiplier number of times
----------------------------------------
--
-- Inputs: rstb, clk, start, multiplicand, multiplier
-- Outputs: result, complete
--
----------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mult_rep_add_nbit_fsmd is
  generic (
    N: natural := 5
  );
  port (
    clk : in std_logic;
    rstb : in std_logic;
    startb : in std_logic;
    multiplicand : in std_logic_vector(N-1 downto 0);
    multiplier : in std_logic_vector(N-1 downto 0);
    result_latched : out std_logic_vector((2*N)-1 downto 0);
    complete : out std_logic
  );
end entity;

architecture behavioral of mult_rep_add_nbit_fsmd is
--
-- structural signals
--
  signal calc: std_logic;
  signal done: std_logic;
  signal result: std_logic_vector((2*N)-1 downto 0);
  
--------------------------------
-- Component prototype
---------------------------------
  COMPONENT mult_rep_add_nbit_fsm
    PORT(
      clk: IN STD_LOGIC;
      rstb: IN STD_LOGIC;
      startb: IN STD_LOGIC;
      done: IN STD_LOGIC;
      calc: OUT STD_LOGIC;
      complete: OUT STD_LOGIC
    );
  END COMPONENT;

  COMPONENT mult_rep_add_nbit_datapath
    generic (
      N: natural := 5
    );
    port (
      clk: in std_logic;
      calc: in std_logic;
      multiplicand: in std_logic_vector(N-1 downto 0);
      multiplier: in std_logic_vector(N-1 downto 0);
      done: out std_logic;
      result: out std_logic_vector((2*N)-1 downto 0)
    );
  END COMPONENT;
  
begin 

------------------------------------
-- Device instantiations
------------------------------------
  fsm: mult_rep_add_nbit_fsm
  port map(
    clk => clk,
    rstb => rstb,
    startb => startb,
    done => done,
    calc => calc,
    complete => complete
  );

  datapath: mult_rep_add_nbit_datapath
  generic map(
    N => N
  )
  port map(
    clk => clk,
    calc => calc,
    multiplicand => multiplicand,
    multiplier => multiplier,
    done => done,
    result => result
  );
  
--
-- latch the result so it doesnt reset
--
  process(clk)
  begin
    if(rising_edge(clk)) then
      if (complete = '0') then
        result_latched <= result;
      end if;
    end if;
  end process;
  
end behavioral;
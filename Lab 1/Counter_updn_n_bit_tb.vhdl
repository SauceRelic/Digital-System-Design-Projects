------------------------------
--
-- counter_updn_n_bit_tb.vhdl
--
-- created: 3/17/18
-- by: johnsontimoj
-- rev: 0
--
-- testbench for up down counter
-- of Counter_updn_n_bit_modif.vhdl
--
-------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity counter_updn_n_bit_tb is
  generic(
    N: natural := 8
  );
-- no port entry - testbench
end entity;

architecture testbench of counter_updn_n_bit_tb is
  signal CLK: std_logic;
  signal RSTB: std_logic;
  signal DIR: std_logic;
  signal BOUT: std_logic_vector((N - 1) downto 0);
  constant PER: time := 20 ns;
--------------------------------
-- Component prototype
---------------------------------
  component counter_updn_n_bit
    generic ( n : NATURAL := 8 );
    port
    (
      rstb : IN STD_LOGIC;
      clk : IN STD_LOGIC;
      dir : IN STD_LOGIC;
      bout : OUT STD_LOGIC_VECTOR((n - 1) downto 0)
    );
  end component;
-----------------------------------
begin
------------------------------------
-- Device under test (DUT)
------------------------------------
  DUT: Counter_updn_n_bit
  generic map(
    n => N
  )
  port map(
    clk => CLK,
    rstb => RSTB,
    dir => DIR,
    bout => BOUT
  );
-------------------------------------
-- Test processes
-------------------------------------
-- Clock process
  clock: process
  begin
    CLK <= '0';
    wait for PER/2;
    infinite: loop
      CLK <= not CLK; wait for PER/2;
    end loop;
  end process;
-- Reset process
  reset: process
  begin
    RSTB <= '0'; wait for 2*PER;
    RSTB <= '1'; wait;
  end process reset;
-- Run Process
  run: process
  begin
-- initialize inputs
    DIR <= '0';
-- wait for reset
    wait for 2*PER;
-- run code
    wait for (2**N)*PER;
    DIR <= '1';
    wait;
  end process run;
------------------------------------------
-- End test processes
------------------------------------------
end architecture;
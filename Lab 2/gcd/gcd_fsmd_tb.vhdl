-- gcd_fsmd_tb.vhdl
-- finalized 9/27/2018
-- Phillip Hiemenz
--
-- Testbench for the GCD calculator.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gcd_fsmd_tb is
end entity;

architecture testbench of gcd_fsmd_tb is
  
-- signal declarations
  signal CLK: std_logic;
  signal RSTB: std_logic;
  signal STARTB: std_logic;
  
  signal INPUTA: std_logic_vector(7 downto 0);
  signal INPUTB: std_logic_vector(7 downto 0);
  
  signal FINISHED: std_logic;
  signal GCD: std_logic_vector(7 downto 0);
  
-- define clock period
  constant PER: time := 20 ns;
  
-- test component declaration
  component gcd_fsmd is
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
  end component;
  
begin
  
  DUT: gcd_fsmd
  generic map(
    N => 8
  )
  port map(
    clk => CLK,
    rstb => RSTB,
    startb => STARTB,
    inputA => INPUTA,
    inputB => INPUTB,
    finished => FINISHED,
    gcd_latched => GCD
  );
  
-- clock simulation
  CLOCK: process
  begin
    CLK <= '0';
    wait for PER/2;
    infinite: loop
      CLK <= not(CLK);
      wait for PER/2;
    end loop;
  end process;
  
-- reset simulation
  RESET: process
  begin
    RSTB <= '0';
    wait for PER*2;
    RSTB <= '1';
    wait;
  end process;
  
-- 2 gcd simulations using:
--
--  1: 120 and 18, expect 6
--  2: 120 and 79, expect 1
  RUN: process
  begin
    inputA <= std_logic_vector(to_unsigned(120,8));
    inputB <= std_logic_vector(to_unsigned(18,8));
    startb <= '1';
    wait for PER*5;
    startb <= '0';
    wait for PER;
    startb <= '1';
    wait for PER*20;
    inputB <= std_logic_vector(to_unsigned(79,8));
    wait for PER;
    startb <= '0';
    wait for PER;
    startb <= '1';
    wait;
  end process;
  
end architecture;
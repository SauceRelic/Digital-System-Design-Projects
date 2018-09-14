library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dt_flipflop_tb is
end entity;

architecture testbench of dt_flipflop_tb is
  signal CLK: std_logic;
  signal RSTB: std_logic;
  signal D: std_logic;
  signal T: std_logic;
  signal Q: std_logic;
  constant PER: time := 20 ns;
  
  component dt_flipflop
  port(
    clk: in std_logic;
    rstb: in std_logic;
    d: in std_logic;
    t: in std_logic;
    q: out std_logic
  );
  end component;
  
begin

  DUT: dt_flipflop
  port map(
    clk => CLK,
    rstb => RSTB,
    d => D,
    t => T,
    q => Q
  );
  
  clock: process
  begin
    CLK <= '0';
    wait for PER/2;
    loop
      CLK <= not CLK;
      wait for PER/2;
    end loop;
  end process;
      
  reset: process
  begin
    RSTB <= '0';
    wait for PER*2;
    RSTB <= '1';
    wait;
  end process;
  
  run: process
  begin
    T <= '0';
    D <= '1';
    wait for PER*4;
    D <= '0';
    wait for PER*2;
    D <= '1';
    wait for PER;
    T <= '1';
    wait for PER*2;
    D <= '0';
    wait;
  end process;
end testbench;
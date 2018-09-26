library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mult_rep_add_nbit_tb is
end entity;

architecture testbench of mult_rep_add_nbit_tb is
  signal CLK: std_logic;
  signal RSTB: std_logic;
  signal STARTB: std_logic;
  signal MULTIPLICAND: std_logic_vector(4 downto 0);
  signal MULTIPLIER: std_logic_vector(4 downto 0);
  signal RESULT_LATCHED: std_logic_vector(9 downto 0);
  signal COMPLETE: std_logic;
  
  constant PER: time := 20 ns;
  
  component mult_rep_add_nbit_fsmd
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
  end component;
  
begin

  DUT: mult_rep_add_nbit_fsmd
  port map(
    clk => CLK,
    rstb => RSTB,
    startb => STARTB,
    multiplicand => MULTIPLICAND,
    multiplier => MULTIPLIER,
    result_latched => RESULT_LATCHED,
    complete => COMPLETE
  );

  clock: process
  begin
    CLK <= '0';
    wait for PER/2;
    infinite: loop
      CLK <= not CLK;
      wait for PER/2;
    end loop;
  end process;
  
  RSTB <= '1';
  MULTIPLICAND <= "10100";
  MULTIPLIER <= "11110";
  
  run: process
  begin
    STARTB <= '1';
    wait for 2*PER;
    STARTB <= '0';
    wait for PER;
    STARTB <= '1';
    wait;
  end process;
end architecture;
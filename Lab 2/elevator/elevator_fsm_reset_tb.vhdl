library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity elevator_fsm_reset_tb is
  generic(
    fmax: natural := 63;
    fmax_bit: natural := 6
  );
end entity;

architecture testbench of elevator_fsm_reset_tb is
  signal CLK: std_logic;
  signal RSTB: std_logic;
  signal FDEST_IN: std_logic_vector(fmax_bit - 1 downto 0);
  signal FCURR_DISP: std_logic_vector(fmax_bit - 1 downto 0);
  constant PER: time := 20 ns;
  
  component elevator_fsm_reset
    generic(
      FMAX: natural := 63;
      FMAX_BIT: natural := 6
    );
    port(
      clk: in std_logic;
      rstb: in std_logic;
      fdest_in: in std_logic_vector(FMAX_BIT - 1 downto 0);
      fcurr_disp: out std_logic_vector(FMAX_BIT - 1 downto 0)
    );
  end component;
  
begin
  
  DUT: elevator_fsm_reset
  generic map(
    FMAX => fmax,
    FMAX_BIT => fmax_bit
  )
  port map(
    clk => CLK,
    rstb => RSTB,
    fdest_in => FDEST_IN,
    fcurr_disp => FCURR_DISP
  );
  
  clock: process
  begin
    CLK <= '0';
    wait for PER/2;
    infinite: loop
      CLK <= not CLK; wait for PER/2;
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
    FDEST_IN <= Std_logic_vector(to_unsigned(60,6));
    wait for PER*2;
    wait for PER*65;
    FDEST_IN <= Std_logic_vector(to_unsigned(27,6));
    wait;
  end process;
end architecture;
  
  
  
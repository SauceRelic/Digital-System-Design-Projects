library ieee;
use ieee.std_logic_1164.all;

entity nios_helloworld_de10 is
  port(
    CLOCK_50: in std_logic
  );
end entity;

architecture behavioral of nios_helloworld_de10 is

  component nios_basic is
    port (
      clk_clk       : in std_logic := 'X'; -- clk
      reset_reset_n : in std_logic := 'X'  -- reset_n
    );
  end component nios_basic;
  
begin

  u0 : component nios_basic
  port map (
    clk_clk       => CLOCK_50,       --   clk.clk
    reset_reset_n => '1'  -- reset.reset_n
  );
  
end architecture;

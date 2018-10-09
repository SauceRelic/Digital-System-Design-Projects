library ieee;
use ieee.std_logic_1164.all;

entity hello_world_de10 is
  port(
    CLOCK_50: in std_logic
  );
end entity;

architecture behavioral of hello_world_de10 is

  component nios is
    port (
      clk_clk       : in std_logic := 'X'; -- clk
      reset_reset_n : in std_logic := 'X'  -- reset_n
    );
  end component nios;

begin
  
  u0 : component nios
  port map (
    clk_clk       => CLOCK_50,
    reset_reset_n => '1'
  );

end architecture;
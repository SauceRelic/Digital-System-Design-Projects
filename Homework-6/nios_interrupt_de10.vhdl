library ieee;
use ieee.std_logic_1164.all;

entity nios_interrupt_de10 is
  port(
    CLOCK_50: in std_logic;
    SW: in std_logic_vector(7 downto 0)
  );
end entity;

architecture hardware of nios_interrupt_de10 is

  component nios_interrupt is
    port (
      clk_clk : in std_logic:= 'X'; -- clk
      pioa_ext_export : in std_logic_vector(7 downto 0) := (others => 'X'); -- export
      piob_ext_export : in std_logic_vector(7 downto 0) := (others => 'X'); -- export
      reset_reset_n : in std_logic:= 'X'-- reset_n
    );
  end component nios_interrupt;
  
begin
  
  u0 : component nios_interrupt
  port map (
    clk_clk => CLOCK_50, --clk.clk
    pioa_ext_export => SW,
    reset_reset_n => '1'
  );

end architecture;
library ieee;
use ieee.std_logic_1164.all;

entity nios_count_de10 is
  port(
    CLOCK_50: in std_logic;
    HEX0: out std_logic_vector(7 downto 0);
    HEX1: out std_logic_vector(7 downto 0)
  );
end entity;

architecture hardware of nios_count_de10 is
  
  component nios_count is
    port (
      clk_clk            : in  std_logic                     := 'X'; -- clk
      reset_reset_n      : in  std_logic                     := 'X'; -- reset_n
      pio_ssd_ext_export : out std_logic_vector(15 downto 0)         -- export
    );
  end component nios_count;

begin

  u0 : component nios_count
    port map (
      clk_clk            => CLOCK_50,
      reset_reset_n      => '1',
      pio_ssd_ext_export(7 downto 0) => HEX0,
      pio_ssd_ext_export(15 downto 8) => HEX1
    );

end architecture;
-- nios_all_de10.vhdl
-- finalized 10/18/2018
-- Phillip Hiemenz
--
-- Implements the NIOS II processor with PIOs on the DE10 Lite hardware.

library ieee;
use ieee.std_logic_1164.all;

entity nios_all_de10 is
  port(
    CLOCK_50: in std_logic;
    SW: in std_logic_vector(7 downto 0);
    
    HEX0: out std_logic_vector(7 downto 0);
    HEX1: out std_logic_vector(7 downto 0);
    HEX2: out std_logic_vector(7 downto 0);
    HEX3: out std_logic_vector(7 downto 0)
  );
end entity;

architecture hardware of nios_all_de10 is

-- component declarations
  component nios_3pio is
    port (
      clk_clk: in std_logic := 'X';
      count_pio_external_connection_export : out std_logic_vector(15 downto 0);
      reset_reset_n                        : in  std_logic                     := 'X';
      swin_pio_external_connection_export  : in  std_logic_vector(7 downto 0)  := (others => 'X');
      swout_pio_external_connection_export : out std_logic_vector(15 downto 0)
    );
  end component nios_3pio;

begin
  
-- hardware mapping
  u0 : component nios_3pio
  port map (
    clk_clk => CLOCK_50,
    reset_reset_n => '1',
    count_pio_external_connection_export(7 downto 0) => HEX0,
    count_pio_external_connection_export(15 downto 8) => HEX1,
    swin_pio_external_connection_export  => SW,
    swout_pio_external_connection_export(7 downto 0) => HEX2,
    swout_pio_external_connection_export(15 downto 8) => HEX3
  );


end architecture;
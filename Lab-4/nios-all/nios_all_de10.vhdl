library ieee;
use ieee.std_logic_1164.all;

entity nios_all_de10 is
  port(
    CLOCK_50: in std_logic;
    KEY: in std_logic_vector(7 downto 0);
    
    HEX0: out std_logic_vector(7 downto 0);
    HEX1: out std_logic_vector(7 downto 0);
    HEX2: out std_logic_vector(7 downto 0);
    HEX3: out std_logic_vector(7 downto 0)
  );
end entity;

architecture behavioral of nios_all_de10 is

  component nios_3pio is
    port (
      clk_clk         : in  std_logic := 'X';
      reset_reset_n   : in  std_logic := 'X';
      pio_0_ex_export : out std_logic_vector(15 downto 0);                    -- pio for HEX1 and HEX0
      pio_1_ex_export : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- pio for switches
      pio_2_ex_export : out std_logic_vector(15 downto 0)                     -- pio for HEX3 and HEX2
    );
  end component nios_3pio;
  
begin

  u0 : component nios_3pio
  port map (
    clk_clk         => CLOCK_50,
    reset_reset_n   => '1',
    pio_0_ex_export(15 downto 8) => HEX1,
    pio_0_ex_export(7 downto 0) => HEX0,
    pio_1_ex_export => KEY,
    pio_2_ex_export(15 downto 8) => HEX3,
    pio_2_ex_export(7 downto 0) => HEX2
  );

end architecture;
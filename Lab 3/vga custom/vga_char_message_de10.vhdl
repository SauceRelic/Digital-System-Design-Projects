-- vga_char_message_de10.vhdl
-- Phillip Hiemenz
-- 10/11/2018
--
-- Implements the static message through VGA on the DE10 Lite.

library ieee;
use ieee.std_logic_1164.all;

entity vga_char_message_de10 is
  generic(
    H_counter_size: natural := 10;
    V_counter_size: natural := 10
  );
  port(
    CLOCK_50: in std_logic;
    
    VGA_HS: out std_logic;
    VGA_VS: out std_logic;
    VGA_R: out std_logic_vector(3 downto 0);
    VGA_B: out std_logic_vector(3 downto 0);
    VGA_G: out std_logic_vector(3 downto 0)
  );
end entity;

architecture hardware of vga_char_message_de10 is
  
-- component declarations
  component vga_char_message is
    generic(
      H_counter_size: natural := 10;
      V_counter_size: natural := 10;
      Color_bits: natural := 4
    );
    port(
      clk: in std_logic;
    
      h_sync: out std_logic;
      v_sync: out std_logic;
      red: out std_logic_vector(Color_bits-1 downto 0);
      green: out std_logic_vector(Color_bits-1 downto 0);
      blue: out std_logic_vector(Color_bits-1 downto 0)
    );
  end component;
  
begin

-- mapping
  IMPLEMENT: vga_char_message
  port map(
    clk => CLOCK_50,
    h_sync => VGA_HS,
    v_sync => VGA_VS,
    red => VGA_R,
    blue => VGA_B,
    green => VGA_G
  );
  
end architecture;
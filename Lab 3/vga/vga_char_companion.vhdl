-- vga_char_companion.vhdl
-- Phillip Hiemenz
-- finalized 10/11/2018
--
-- Receives a character for a given space and sends the needed pixels to draw
--  it to a VGA driver.

library ieee;
use ieee.std_logic_1164.all;

entity vga_char_companion is
  generic(
    H_counter_size: natural := 10;
    V_counter_size: natural := 10
  );
  port(
    clk: in std_logic;
    
    x: in std_logic_vector(H_counter_size-1 downto 0);
    y: in std_logic_vector(V_counter_size-1 downto 0);
    char_in: in std_logic_vector(4 downto 0);
    
    pixel_write: out std_logic
  );
end entity;

architecture behavioral of vga_char_companion is
  
-- intermediate signals
  signal rom_addr: std_logic_vector(7 downto 0);
  signal rom_data: std_logic_vector(7 downto 0);
  
-- component declarations
  component char_select_line is
    generic(
      V_counter_size: natural := 10
    );
    port(
      char: in std_logic_vector(4 downto 0);
      y: in std_logic_vector(V_counter_size-1 downto 0);
      addr: out std_logic_vector(7 downto 0)
    );
  end component;
  
  component rom_8bit is
    PORT
    (
      address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
      clock		: IN STD_LOGIC  := '1';
      q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
    );
  end component;
  
  component char_select_bit is
    generic(
      H_counter_size: natural := 10
    );
    port(
      char_line: in std_logic_vector(7 downto 0);
      x: in std_logic_vector(H_counter_size-1 downto 0);
      pixel: out std_logic
    );
  end component;
  
begin

-- mapping
  LINE_SELECT: char_select_line
  generic map(
    V_counter_size => V_counter_size
  )
  port map(
    char => char_in,
    y => y,
    addr => rom_addr
  );
  
  CHAR_ROM: rom_8bit
  port map(
    address => rom_addr,
    clock => clk,
    q => rom_data
  );
  
  BIT_SELECT: char_select_bit
  generic map(
    H_counter_size => H_counter_size
  )
  port map(
    char_line => rom_data,
    x => x,
    pixel => pixel_write
  );
  
end architecture;
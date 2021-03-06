-- vga_char_message.vhdl
-- Phillip Hiemenz
-- finalized 10/11/2018
--
-- Outputs a static message on a VGA display.

library ieee;
use ieee.std_logic_1164.all;

entity vga_char_message is
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
end entity;

architecture behavioral of vga_char_message is
  
-- intermediate signals
  signal input_char: std_logic_vector(4 downto 0);
  signal shared_x: std_logic_vector(H_counter_size-1 downto 0);
  signal shared_y: std_logic_vector(V_counter_size-1 downto 0);
  signal to_companion: std_logic_vector(4 downto 0);
  signal pixel_write: std_logic;
  signal clk_25MHz: std_logic;
  signal pll_lock: std_logic;
 
-- component declarations 
  component vga_char_companion is
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
  end component;
  
  component char_grid_modifyable is
    generic(
      H_counter_size: natural := 10;
      V_counter_size: natural := 10
    );
    port(
      x: in std_logic_vector(H_counter_size-1 downto 0);
      y: in std_logic_vector(V_counter_size-1 downto 0);
      char_in: in std_logic_vector(4 downto 0);
      char_out: out std_logic_vector(4 downto 0)
    );
  end component;
  
  component pll_25MHz is
  	PORT
    (
      areset		: IN STD_LOGIC  := '0';
      inclk0		: IN STD_LOGIC  := '0';
      c0		: OUT STD_LOGIC ;
      locked		: OUT STD_LOGIC 
    );
  end component;
  
  component vga_driver is
    generic(
      H_back_porch: 	natural:=48; 	
      H_display: 		natural:=640; 
      H_front_porch: natural:=16; 	
      H_retrace: 		natural:=96; 	
      V_back_porch: 	natural:=33; 	
      V_display: 		natural:=480; 
      V_front_porch: natural:=10; 
      V_retrace: 		natural:=2;
      Color_bits:		natural:=4;
      H_sync_polarity: std_logic:= '0';
      V_sync_polarity: std_logic:= '0';
			H_counter_size: natural:= 10;
      V_counter_size: natural:= 10
    );
	
    port(
      vid_clk: 		in 	std_logic;
      rstb: 			in 	std_logic;
			h_sync:			out 	std_logic;
      v_sync:			out 	std_logic;
 			pixel_x: 		out 	std_logic_vector (H_counter_size -1 downto 0);
      pixel_y: 		out 	std_logic_vector (V_counter_size - 1 downto 0);
      vid_display:	out 	std_logic;
			red_in:     	in 	std_logic_vector((Color_bits - 1) downto 0);
      green_in:		in		std_logic_vector((Color_bits - 1) downto 0);
      blue_in:			in		std_logic_vector((Color_bits - 1) downto 0);
      red_out:			out 	std_logic_vector((Color_bits - 1) downto 0);
      green_out:		out	std_logic_vector((Color_bits - 1) downto 0);
      blue_out:		out	std_logic_vector((Color_bits - 1) downto 0)
    );
  end component;
  
begin
  
-- mapping
  CUSTOM_GRID: char_grid_modifyable
  generic map(
    H_counter_size => H_counter_size,
    V_counter_size => V_counter_size
  )
  port map(
    x => shared_x,
    y => shared_y,
    char_in => (others => '0'),
    char_out => to_companion
  );
  
  COMPANION: vga_char_companion
  generic map(
    H_counter_size => H_counter_size,
    V_counter_size => V_counter_size
  )
  port map(
    clk => clk,
    x => shared_x,
    y => shared_y,
    char_in => to_companion,
    pixel_write => pixel_write
  );
  
  PLL: pll_25MHz
  port map(
    areset => '0',
    inclk0 => clk,
    c0 => clk_25MHz,
    locked => pll_lock
  );
  
  VGA: vga_driver
  port map(
    vid_clk => clk_25MHz,
    rstb => pll_lock,
    h_sync => h_sync,
    v_sync => v_sync,
    pixel_x => shared_x,
    pixel_y => shared_y,
    red_in => (others => pixel_write),
    green_in => (others => pixel_write),
    blue_in => (others => pixel_write),
    red_out => red,
    green_out => green,
    blue_out => blue
  );

end architecture;
  
  
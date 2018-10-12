library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vga_char_cycle_tb is
end entity;

architecture testbench of vga_char_cycle_tb is
  signal CLK: std_logic;
  signal PAUSE: std_logic;
  signal HSYNC: std_logic;
  signal VSYNC: std_logic;
  signal RED: std_logic_vector(3 downto 0);
  signal GREEN: std_logic_vector(3 downto 0);
  signal BLUE: std_logic_vector(3 downto 0);
  
  constant T: time := 20 ns;
  constant SEC: time := 1000 ms;
  
  component vga_char_cycle is
    generic(
      H_counter_size: natural := 10;
      V_counter_size: natural := 10;
      Color_bits: natural := 4
    );
    port(
      clk: in std_logic;
      pause: in std_logic;
    
      h_sync: out std_logic;
      v_sync: out std_logic;
      red: out std_logic_vector(Color_bits-1 downto 0);
      green: out std_logic_vector(Color_bits-1 downto 0);
      blue: out std_logic_vector(Color_bits-1 downto 0)
    );
  end component;
  
begin

  DUT: vga_char_cycle
  port map(
    clk => CLK,
    pause => PAUSE,
    h_sync => HSYNC,
    v_sync => VSYNC,
    red => RED,
    green => GREEN,
    blue => BLUE
  );
  
  CLOCK: process
  begin
    CLK <= '0';
    wait for T/2;
    infinite: loop
      CLK <= not(CLK);
      wait for T/2;
    end loop;
  end process;
  
  RUN: process
  begin
    pause <= '1';
    wait for 5*SEC;
    pause <= '0';
    wait for 3*SEC;
    pause <= '1';
    wait for 12*SEC;
    pause <= '0';
    wait for 6*SEC;
    pause <= '1';
    wait;
  end process;
  
end architecture;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rom_8bit_de10 is
  port(
    CLOCK_50: in std_logic;
    KEY: in std_logic_vector(0 downto 0);
    LEDR: out std_logic_vector(7 downto 0);
    HEX0: out std_logic_vector(7 downto 0);
    HEX1: out std_logic_vector(7 downto 0)
  );
end entity;

architecture hardware of rom_8bit_de10 is
  signal address: std_logic_vector(7 downto 0);
  signal data: std_logic_vector(7 downto 0);
  
  component counter_1sec is
    generic(
      max_num: natural := 255;
      N: natural := 8
    );
    port(
      clk: in std_logic;
      rstb: in std_logic;
      pause: in std_logic;
    
      count_out: out std_logic_vector(N-1 downto 0)
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
  
  component sevenseg_hex1 is
    port(
      binary: in std_logic_vector(3 downto 0);
      seg: out std_logic_vector(7 downto 0)
    );
  end component;
  
begin

  COUNTER: counter_1sec
  generic map(
    max_num => 255,
    N => 8
  )
  port map(
    clk => CLOCK_50,
    rstb => '1',
    pause => KEY(0),
    count_out => address
  );
  
  ROM: rom_8bit
  port map(
    address => address,
    clock => CLOCK_50,
    q => data
  );
  
  SEG0: sevenseg_hex1
  port map(
    binary => data(3 downto 0),
    seg => HEX0
  );
  
  SEG1: sevenseg_hex1
  port map(
    binary => data(7 downto 4),
    seg => HEX1
  );
  
  LEDR <= address;
  
end architecture;
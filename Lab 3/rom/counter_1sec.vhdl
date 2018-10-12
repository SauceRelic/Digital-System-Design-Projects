library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter_1sec is
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
end entity;

architecture combination of counter_1sec is
  signal clk_internal: std_logic;
  
  component clk_1Hz is
    port (
      clk_50MHz : in std_logic;
      rstb : in std_logic;
      clk_1Hz : out std_logic
    );
  end component;
  
  component counter is
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
  
begin

  CLOCK: clk_1Hz
  port map(
    clk_50MHz => clk,
    rstb => rstb,
    clk_1Hz => clk_internal
  );
  
  G_COUNTER: counter
  generic map(
    max_num => max_num,
    N => N
  )
  port map(
    clk => clk_internal,
    rstb => rstb,
    pause => pause,
    count_out => count_out
  );
  
end architecture;
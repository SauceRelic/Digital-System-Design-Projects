------------------------------
--
-- counter_updn_n_bit_de10.vhdl
--
-- created: 3/17/18
-- by: johnsontimoj
-- rev: 0
--
-- DE10 implementation for up down counter
-- of Counter_updn_n_bit.vhdl
--
-- Uses a 3 Hz clock divider, sw0 for reset
-- sw1 for the dir input
-- and LEDs for the count output
-------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity counter_updn_n_bit_de10 is
  port(
    CLOCK_50: in std_logic;
    SW: in std_logic_vector(1 downto 0);
    LEDR: out std_logic_vector(7 downto 0)
  );
end entity;

architecture hardware of counter_updn_n_bit_de10 is
  signal CLK_SIG: std_logic; -- Intermediate clk signal
--------------------------------
-- Component prototypes
---------------------------------
  component clk_3Hz
    port(
      clk_50MHz : IN STD_LOGIC;
      rstb : IN STD_LOGIC;
      clk_3Hz : OUT STD_LOGIC
    );
  end component;
  component Counter_updn_n_bit
    generic ( n : NATURAL := 8 );
    port(
      rstb : IN STD_LOGIC;
      clk : IN STD_LOGIC;
      dir : IN STD_LOGIC;
      bout : OUT STD_LOGIC_VECTOR((n - 1) downto 0)
    );
  end component;
-----------------------------------
begin
------------------------------------
-- Device under test (DUT)
------------------------------------
  CK: clk_3Hz
  port map(
    clk_50MHz => CLOCK_50,
    rstb => SW(0),
    clk_3Hz => CLK_SIG
  );
  DUT: Counter_updn_n_bit
  port map(
    clk => CLK_SIG,
    rstb => SW(0),
    dir => SW(1),
    bout => LEDR(7 downto 0)
  );
end architecture;
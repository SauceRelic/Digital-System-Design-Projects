-- gcd_fsmd_de10.vhdl
-- finalized 9/27/2018
-- Phillip Hiemenz
--
-- Implements the GCD state machine w/ datapath on the
--  DE10 Lite hardware.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gcd_fsmd_de10 is
  generic(
    N: natural := 4
  );
  port(
    CLOCK_50: in std_logic;
    SW: in std_logic_vector(9 downto 0);
    KEY: in std_logic_vector(0 downto 0);
    LEDR: out std_logic_vector(4 downto 4);
    HEX0: out std_logic_vector(7 downto 0);
    HEX2: out std_logic_vector(7 downto 0);
    HEX4: out std_logic_vector(7 downto 0);
    HEX5: out std_logic_vector(7 downto 0)
  );
end entity;

architecture behavioral of gcd_fsmd_de10 is
  
-- intermediate signals
  signal CLK3HZ: std_logic;
  signal GCD_LATCHED: std_logic_vector(N-1 downto 0);
  signal DEC_0: std_logic_vector(3 downto 0);
  signal DEC_1: std_logic_vector(3 downto 0);

-- component declarations
  component gcd_fsmd is
    generic(
      N: natural := 4
    );
    port(
      clk: in std_logic;
      rstb: in std_logic;
      startb: in std_logic;
    
      inputA: in std_logic_vector(N-1 downto 0);
      inputB: in std_logic_vector(N-1 downto 0);
    
      finished: out std_logic;
      gcd_latched: out std_logic_vector(N-1 downto 0)
    );
  end component;
  
  component clk_3Hz is
    port (
      clk_50MHz : in std_logic;
      rstb : in std_logic;
      clk_3Hz : out std_logic
    );
  end component;
  
  component bin_to_dec_2bit is
    port(
      bin_in: in std_logic_vector(6 downto 0);
      dec_out_0: out std_logic_vector(3 downto 0);
      dec_out_1: out std_logic_vector(3 downto 0)
    );
  end component;
  
  component sevenseg_hex1 is
    port(
      binary: in std_logic_vector(3 downto 0);
      seg: out std_logic_vector(7 downto 0)
    );
  end component;
  
begin

-- clock divider
  CLK: clk_3Hz
  port map(
    clk_50MHz => CLOCK_50,
    rstb => '1',
    clk_3Hz => CLK3HZ
  );

-- state machine w/ datapath
  FSMD: gcd_fsmd
  generic map(
    N => N
  )
  port map(
    clk => CLK3HZ,
    rstb => SW(0),
    startb => KEY(0),
    inputA => SW(5 downto 2),
    inputB => SW(9 downto 6),
    finished => LEDR(4),
    gcd_latched => GCD_LATCHED
  );
  
-- 2 bit binary to decimal converter
  B_TO_D: bin_to_dec_2bit
  port map(
    bin_in => ("000" & GCD_LATCHED),
    dec_out_0 => DEC_0,
    dec_out_1 => DEC_1
  );
  
-- SSD for input 1
  SEG0: sevenseg_hex1
  port map(
    binary => SW(5 downto 2),
    seg => HEX0
  );
  
-- SSD for input 2
  SEG2: sevenseg_hex1
  port map(
    binary => SW(9 downto 6),
    seg => HEX2
  );
  
-- SSD for ones decimal
  SEG4: sevenseg_hex1
  port map(
    binary => DEC_0,
    seg => HEX4
  );

-- SSD for tens decimal
  SEG5: sevenseg_hex1
  port map(
    binary => DEC_1,
    seg => HEX5
  );
  
end architecture;
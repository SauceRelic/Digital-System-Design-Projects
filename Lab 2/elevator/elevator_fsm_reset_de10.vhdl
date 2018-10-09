-- elevator_fsm_reset_de10.vhdl
-- finalized 9/27/2018
-- Phillip Hiemenz
--
-- Implements elevator_fsm_reset.vhdl on the DE10 Lite hardware.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity elevator_fsm_reset_de10 is
  generic(
    FMAX: natural := 63;
    FMAX_BIT: natural := 8
  );
  port(
    CLOCK_50: in std_logic;
    SW: in std_logic_vector(6 downto 0);
    HEX0: out std_logic_vector(7 downto 0);
    HEX1: out std_logic_vector(7 downto 0);
    HEX4: out std_logic_vector(7 downto 0);
    HEX5: out std_logic_vector(7 downto 0)
  );
end entity;

architecture hardware of elevator_fsm_reset_de10 is
  
-- intermediate signals
  signal fcurr: std_logic_vector(FMAX_BIT-1 downto 0);
  signal CLK3HZ: std_logic;

-- component declarations  
  component elevator_fsm_reset is
    generic(
      FMAX: natural := 63;
      FMAX_BIT: natural := 8
    );
    port(
      clk: in std_logic;
      rstb: in std_logic;
      fdest_in: in std_logic_vector(FMAX_BIT - 1 downto 0);
      fcurr_disp: out std_logic_vector(FMAX_BIT - 1 downto 0)
    );
  end component;
  
  component sevenseg_hex1 is
    port(
      binary: in std_logic_vector(3 downto 0);
      seg: out std_logic_vector(7 downto 0)
    );
  end component;
  
  component clk_3Hz is
    port (
      clk_50MHz : in std_logic;
      rstb : in std_logic;
      clk_3Hz : out std_logic
    );
  end component;
  
begin
-- elevator mapping
  ELEVATOR: elevator_fsm_reset
  generic map(
    FMAX => FMAX,
    FMAX_BIT => FMAX_BIT
  )
  port map(
    clk => CLK3HZ,
    rstb => SW(0),
    fdest_in => "00" & SW(6 downto 1),
    fcurr_disp => fcurr
  );
  
-- clock mapping
  CLOCK: clk_3Hz
  port map(
    clk_50MHz => CLOCK_50,
    rstb => '1',
    clk_3Hz => CLK3HZ
  );
  
-- seven segment mapping
  B_TO_H0: sevenseg_hex1
  port map(
    binary => fcurr(3 downto 0),
    seg => HEX0
  );
  
  B_TO_H1: sevenseg_hex1
  port map(
    binary => fcurr(7 downto 4),
    seg => HEX1
  );
  
  B_TO_H4: sevenseg_hex1
  port map(
    binary => SW(4 downto 1),
    seg => HEX4
  );
  
  B_TO_H5: sevenseg_hex1
  port map(
    binary => "00" & SW(6 downto 5),
    seg => HEX5
  );

end architecture;
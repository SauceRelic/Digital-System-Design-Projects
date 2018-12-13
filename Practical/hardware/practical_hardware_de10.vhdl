-- practical_hardware_de10.vhdl
-- Phillip Hiemenz
-- created 11/1/2018
-- 

library ieee;
use ieee.std_logic_1164.all;

entity practical_hardware_de10 is
  port(
    CLOCK_50: in std_logic;
    SW: in std_logic_vector(3 downto 0);
    HEX2: out std_logic_vector(7 downto 0);
    HEX1: out std_logic_vector(7 downto 0);
    HEX0: out std_logic_vector(7 downto 0)
  );
end entity;

architecture hardware of practical_hardware_de10 is

  -- component declarations
  component practical_hardware is
    port(
    clk: in std_logic;
    clear: in std_logic;
    start_in: in std_logic;
    stop_in: in std_logic;
    lap_in: in std_logic;
    
    seconds: out std_logic_vector(6 downto 0);
    half_sec: out std_logic_vector(3 downto 0)
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
  
  component sevenseg_hex1_dp is
    port(
    binary: in std_logic_vector(3 downto 0);
    seg: out std_logic_vector(7 downto 0)
  );
  end component;
  
  component clk_2Hz is
    port (
    clk_50MHz : in std_logic;
    rstb : in std_logic;
    clk_2Hz : out std_logic
  );
  end component;
  
    component nios_3pio is
        port (
            clk_clk                             : in std_logic                    := 'X';             -- clk
            reset_reset_n                       : in std_logic                    := 'X';             -- reset_n
            swin_pio_external_connection_export : in std_logic_vector(3 downto 0) := (others => 'X')  -- export
        );
    end component nios_3pio;



  
  -- intermediate signals
  signal inter_clk_2Hz: std_logic;
  signal inter_seconds: std_logic_vector(6 downto 0);
  signal inter_half_sec: std_logic_vector(3 downto 0);
  signal dec1: std_logic_vector(3 downto 0);
  signal dec0: std_logic_vector(3 downto 0);

begin

  -- 2Hz clock
  CLK2HZ: clk_2Hz
  port map(
    clk_50MHz => CLOCK_50,
    rstb => '1',
    clk_2Hz => inter_clk_2Hz
  );
  
  -- main driver
  STOPWATCH: practical_hardware
  port map(
    clk => inter_clk_2Hz,
    clear => SW(0),
    start_in => SW(2),
    stop_in => SW(1),
    lap_in => SW(3),
    
    seconds => inter_seconds,
    half_sec => inter_half_sec
  );
  
  -- decimal conversion
  B2D: bin_to_dec_2bit
  port map(
    bin_in => inter_seconds,
    dec_out_0 => dec0,
    dec_out_1 => dec1
  );
  
  -- tens digit
  TEN: sevenseg_hex1
  port map(
    binary => dec1,
    seg => HEX2
  );
  
  -- ones digit with decimal point
  ONE: sevenseg_hex1_dp
  port map(
    binary => dec0,
    seg => HEX1
  );
  
  -- tenth digit
  TENTH: sevenseg_hex1
  port map(
    binary => inter_half_sec,
    seg => HEX0
  );
  
  -- nios
      u0 : component nios_3pio
        port map (
            clk_clk                             => CLOCK_50, 
            reset_reset_n                       => '1',           
            swin_pio_external_connection_export => SW 
        );

end architecture;
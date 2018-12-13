-- practical_nios_de10.vhdl
-- Phillip Hiemenz
-- created 11/1/2018
--
-- NIOS II system for switches, buttons and accelerometer on the DE10 Lite hardware.

library ieee;
use ieee.std_logic_1164.all;

entity practical_nios_de10 is
  port(
    CLOCK_50: in std_logic;
    
    G_SENSOR_SDI: inout std_logic;
    G_SENSOR_SCLK: out std_logic;
    G_SENSOR_CS_N: out std_logic;
    G_SENSOR_INT: in std_logic_vector(1 downto 0);
    
    SW: in std_logic_vector(9 downto 0);
    KEY: in std_logic_vector(1 downto 0)
  );
end entity;

architecture hardware of practical_nios_de10 is

  component practical_nios is
    port (
      accelerometer_I2C_SDAT      : inout std_logic                    := 'X';             -- I2C_SDAT
      accelerometer_I2C_SCLK      : out   std_logic;                                       -- I2C_SCLK
      accelerometer_G_SENSOR_CS_N : out   std_logic;                                       -- G_SENSOR_CS_N
      accelerometer_G_SENSOR_INT  : in    std_logic                    := 'X';             -- G_SENSOR_INT
      
      clk_clk                     : in    std_logic                    := 'X';             -- clk
      pio_push_export             : in    std_logic_vector(3 downto 0) := (others => 'X'); -- export
      pio_sw_export               : in    std_logic_vector(9 downto 0) := (others => 'X'); -- export
      reset_reset_n               : in    std_logic                    := 'X'              -- reset_n
    );
  end component practical_nios;
    
begin

  u0 : component practical_nios
  port map (
    accelerometer_I2C_SDAT      => G_SENSOR_SDI,      -- accelerometer.I2C_SDAT
    accelerometer_I2C_SCLK      => G_SENSOR_SCLK,      --              .I2C_SCLK
    accelerometer_G_SENSOR_CS_N => G_SENSOR_CS_N, --              .G_SENSOR_CS_N
    accelerometer_G_SENSOR_INT  => G_SENSOR_INT(1),  --              .G_SENSOR_INT
    
    clk_clk                     => CLOCK_50,                     --           clk.clk
    pio_push_export(1 downto 0) => KEY,             --      pio_push.export
    pio_sw_export               => SW,               --        pio_sw.export
    reset_reset_n               => '1'                --         reset.reset_n
  );

end architecture;
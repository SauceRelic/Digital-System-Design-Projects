library ieee;
use ieee.std_logic_1164.all;

entity accelerometer_de10 is
  port(
    CLOCK_50: in std_logic;
    
    G_SENSOR_SCLK: out std_logic;
    G_SENSOR_SDI: inout std_logic;
    G_SENSOR_CS_N: out std_logic;
    G_SENSOR_INT: in std_logic_vector(1 downto 0)
  );
end entity;

architecture hardware of accelerometer_de10 is

  component accelerometer is
    port (
      clk_clk                     : in    std_logic := 'X'; -- clk
      reset_reset_n               : in    std_logic := 'X'; -- reset_n
      accelerometer_I2C_SDAT      : inout std_logic := 'X'; -- I2C_SDAT
      accelerometer_I2C_SCLK      : out   std_logic;        -- I2C_SCLK
      accelerometer_G_SENSOR_CS_N : out   std_logic;        -- G_SENSOR_CS_N
      accelerometer_G_SENSOR_INT  : in    std_logic := 'X'  -- G_SENSOR_INT
    );
  end component accelerometer;
  
begin

  u0 : component accelerometer
  port map (
    clk_clk                     => CLOCK_50,                     --           clk.clk
    reset_reset_n               => '1',               --         reset.reset_n
    accelerometer_I2C_SDAT      => G_SENSOR_SDI,      -- accelerometer.I2C_SDAT
    accelerometer_I2C_SCLK      => G_SENSOR_SCLK,      --              .I2C_SCLK
    accelerometer_G_SENSOR_CS_N => G_SENSOR_CS_N, --              .G_SENSOR_CS_N
    accelerometer_G_SENSOR_INT  => G_SENSOR_INT(1)   --              .G_SENSOR_INT
  );

end architecture;
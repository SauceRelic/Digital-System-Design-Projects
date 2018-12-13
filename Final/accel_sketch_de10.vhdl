-- accel_sketch_de10.vhdl
-- Phillip Hiemenz
-- created 10/31/2018
--
-- NIOS II system for VGA and accelerometer on the DE10 Lite hardware.

library ieee;
use ieee.std_logic_1164.all;

entity accel_sketch_de10 is
  port(
    CLOCK_50: in std_logic;
    
    G_SENSOR_SDI: inout std_logic;
    G_SENSOR_SCLK: out std_logic;
    G_SENSOR_CS_N: out std_logic;
    G_SENSOR_INT: in std_logic_vector(1 downto 0);
    
    DRAM_CLK: out std_logic;
    DRAM_ADDR: out std_logic_vector(12 downto 0);
    DRAM_BA: out std_logic_vector(1 downto 0);
    DRAM_CAS_N: out std_logic;
    DRAM_CKE: out std_logic;
    DRAM_CS_N: out std_logic;
    DRAM_RAS_N: out std_logic;
    DRAM_WE_N: out std_logic;
    DRAM_DQ: inout std_logic_vector(15 downto 0);
    DRAM_UDQM: out std_logic;
    DRAM_LDQM: out std_logic;
    
    VGA_HS: out std_logic;
    VGA_VS: out std_logic;
    VGA_R: out std_logic_vector(3 downto 0);
    VGA_G: out std_logic_vector(3 downto 0);
    VGA_B: out std_logic_vector(3 downto 0);
    
    SW: in std_logic_vector(9 downto 0);
    KEY: in std_logic_vector(1 downto 0);
    
    HEX0: out std_logic_vector(7 downto 0);
    HEX1: out std_logic_vector(7 downto 0);
    HEX2: out std_logic_vector(7 downto 0);
    HEX3: out std_logic_vector(7 downto 0);
    HEX4: out std_logic_vector(7 downto 0);
    HEX5: out std_logic_vector(7 downto 0)
  );
end entity;

architecture hardware of accel_sketch_de10 is

  signal colorbin: std_logic_vector(23 downto 0);

  component accel_sketch is
    port (
      accelerometer_I2C_SDAT     : inout std_logic                     := 'X';
      accelerometer_I2C_SCLK     : out   std_logic;
      accelerometer_G_SENSOR_CS_N: out   std_logic;
      accelerometer_G_SENSOR_INT : in    std_logic                     := 'X';
      
      clk_clk                    : in    std_logic                     := 'X';
      clk_sdram_clk              : out   std_logic;
      pio_push_export            : in    std_logic_vector(1 downto 0)  := (others => 'X');
      pio_sw_export              : in    std_logic_vector(9 downto 0)  := (others => 'X');
      reset_reset_n              : in    std_logic                     := 'X';
      
      sdram_wire_addr            : out   std_logic_vector(12 downto 0);
      sdram_wire_ba              : out   std_logic_vector(1 downto 0);
      sdram_wire_cas_n           : out   std_logic;
      sdram_wire_cke             : out   std_logic;
      sdram_wire_cs_n            : out   std_logic;
      sdram_wire_dq              : inout std_logic_vector(15 downto 0) := (others => 'X');
      sdram_wire_dqm             : out   std_logic_vector(1 downto 0);
      sdram_wire_ras_n           : out   std_logic;
      sdram_wire_we_n            : out   std_logic;
      
      vga_out_CLK                : out   std_logic;
      vga_out_HS                 : out   std_logic;
      vga_out_VS                 : out   std_logic;
      vga_out_BLANK              : out   std_logic;
      vga_out_SYNC               : out   std_logic;
      vga_out_R                  : out   std_logic_vector(3 downto 0);
      vga_out_G                  : out   std_logic_vector(3 downto 0);
      vga_out_B                  : out   std_logic_vector(3 downto 0);
      
      pio_hex_export              : out   std_logic_vector(23 downto 0)
    );
  end component accel_sketch;
  
  component sevenseg_hex6 is
    port(
      inbus: in std_logic_vector(23 downto 0);
      
      out0: out std_logic_vector(7 downto 0);
      out1: out std_logic_vector(7 downto 0);
      out2: out std_logic_vector(7 downto 0);
      out3: out std_logic_vector(7 downto 0);
      out4: out std_logic_vector(7 downto 0);
      out5: out std_logic_vector(7 downto 0)
    );
  end component;

begin

  IP: component accel_sketch
  port map (
    clk_clk       => CLOCK_50,
    clk_sdram_clk => DRAM_CLK,
    reset_reset_n => '1',
        
    pio_push_export => KEY,
    pio_sw_export   => SW,
    pio_hex_export  => colorbin,
    
    accelerometer_I2C_SDAT      => G_SENSOR_SDI,
    accelerometer_I2C_SCLK      => G_SENSOR_SCLK,
    accelerometer_G_SENSOR_CS_N => G_SENSOR_CS_N,
    accelerometer_G_SENSOR_INT  => G_SENSOR_INT(1),
    
    sdram_wire_addr   => DRAM_ADDR,
    sdram_wire_ba     => DRAM_BA,
    sdram_wire_cas_n  => DRAM_CAS_N,
    sdram_wire_cke    => DRAM_CKE,
    sdram_wire_cs_n   => DRAM_CS_N,
    sdram_wire_dq     => DRAM_DQ,
    sdram_wire_dqm(1) => DRAM_UDQM,
    sdram_wire_dqm(0) => DRAM_LDQM,
    sdram_wire_ras_n  => DRAM_RAS_N,
    sdram_wire_we_n   => DRAM_WE_N,
    
    vga_out_HS => VGA_HS,
    vga_out_VS => VGA_VS,
    vga_out_R  => VGA_R,
    vga_out_G  => VGA_G,
    vga_out_B  => VGA_B
  );
  
  SSD_DRIVER: component sevenseg_hex6
  port map(
    inbus => colorbin,
    
    out0  => HEX0,
    out1  => HEX1,
    out2  => HEX2,
    out3  => HEX3,
    out4  => HEX4,
    out5  => HEX5
  );

end architecture;
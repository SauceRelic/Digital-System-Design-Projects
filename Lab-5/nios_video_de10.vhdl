-- nios_video_de10.vhdl
-- Phillip Hiemenz
-- finalized 10/24
--
-- NIOS II system for VGA on the DE10 Lite hardware.

library ieee;
use ieee.std_logic_1164.all;

entity nios_video_de10 is
  port(
    CLOCK_50: in std_logic;
    
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
    
    SW: in std_logic_vector(3 downto 0);
    KEY: in std_logic_vector(1 downto 0)
  );
end entity;

architecture hardware of nios_video_de10 is

  component nios_video is
    port (
      clk_clk: in std_logic := 'X'; -- clk
      reset_reset_n: in std_logic := 'X'; -- reset_n
      
      clk_sdram_clk: out std_logic;-- clk
      sdram_wire_addr : out std_logic_vector(12 downto 0);-- addr
      sdram_wire_ba   : out std_logic_vector(1 downto 0); -- ba
      sdram_wire_cas_n: out std_logic;-- cas_n
      sdram_wire_cke  : out std_logic;-- cke
      sdram_wire_cs_n : out std_logic;-- cs_n
      sdram_wire_dq   : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
      sdram_wire_dqm  : out std_logic_vector(1 downto 0); -- dqm
      sdram_wire_ras_n: out std_logic;-- ras_n
      sdram_wire_we_n : out std_logic;-- we_n
      
      vga_out_CLK  : out std_logic;-- CLK
      vga_out_HS   : out std_logic;-- HS
      vga_out_VS   : out std_logic;-- VS
      vga_out_BLANK: out std_logic;-- BLANK
      vga_out_SYNC : out std_logic;-- SYNC
      vga_out_R    : out std_logic_vector(3 downto 0); -- R
      vga_out_G    : out std_logic_vector(3 downto 0); -- G
      vga_out_B    : out std_logic_vector(3 downto 0); -- B
      
      pio_sw_export  : in std_logic_vector(3 downto 0)  := (others => 'X'); -- export
      pio_push_export: in std_logic_vector(3 downto 0)  := (others => 'X')  -- export
    );
  end component nios_video;
  
begin
  
  u0 : component nios_video
  port map (
    clk_clk => CLOCK_50,  --clk.clk
    reset_reset_n => '1',--  reset.reset_n
    
    clk_sdram_clk     => DRAM_CLK,--  clk_sdram.clk
    sdram_wire_addr   => DRAM_ADDR,  -- sdram_wire.addr
    sdram_wire_ba     => DRAM_BA,--   .ba
    sdram_wire_cas_n  => DRAM_CAS_N, --   .cas_n
    sdram_wire_cke    => DRAM_CKE,   --   .cke
    sdram_wire_cs_n   => DRAM_CS_N,  --   .cs_n
    sdram_wire_dq     => DRAM_DQ,--   .dq
    sdram_wire_dqm(1) => DRAM_UDQM,   --   .dqm
    sdram_wire_dqm(0) => DRAM_LDQM,
    sdram_wire_ras_n  => DRAM_RAS_N, --   .ras_n
    sdram_wire_we_n   => DRAM_WE_N,  --   .we_n
    
    vga_out_HS    => VGA_HS,   --   .HS
    vga_out_VS    => VGA_VS,   --   .VS
    vga_out_R     => VGA_R,--   .R
    vga_out_G     => VGA_G,--   .G
    vga_out_B     => VGA_B,--   .B
    
    pio_sw_export => SW,
    pio_push_export(1 downto 0) => KEY
  );

end architecture;
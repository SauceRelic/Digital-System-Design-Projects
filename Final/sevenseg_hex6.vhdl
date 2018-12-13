-- sevenseg_hex6.vhdl
-- created 11/6/2018
-- Phillip Hiemenz
-- Driver for displaying hexadecimal digits on all SSDs for the DE10 Lite.

library ieee;
use ieee.std_logic_1164.all;

entity sevenseg_hex6 is
  port(
    inbus: in std_logic_vector(23 downto 0);
    
    out0: out std_logic_vector(7 downto 0);
    out1: out std_logic_vector(7 downto 0);
    out2: out std_logic_vector(7 downto 0);
    out3: out std_logic_vector(7 downto 0);
    out4: out std_logic_vector(7 downto 0);
    out5: out std_logic_vector(7 downto 0)
  );
end entity;

architecture behavioral of sevenseg_hex6 is

  component sevenseg_hex1 is
    port(
      binary: in std_logic_vector(3 downto 0);
      seg: out std_logic_vector(7 downto 0)
    );
  end component;
  
begin

  TOHEX0: sevenseg_hex1
  port map(
    binary => inbus(3 downto 0),
    seg    => out0
  );
  
  TOHEX1: sevenseg_hex1
  port map(
    binary => inbus(7 downto 4),
    seg    => out1
  );
  
  TOHEX2: sevenseg_hex1
  port map(
    binary => inbus(11 downto 8),
    seg    => out2
  );
  
  TOHEX3: sevenseg_hex1
  port map(
    binary => inbus(15 downto 12),
    seg    => out3
  );
  
  TOHEX4: sevenseg_hex1
  port map(
    binary => inbus(19 downto 16),
    seg    => out4
  );
  
  TOHEX5: sevenseg_hex1
  port map(
    binary => inbus(23 downto 20),
    seg    => out5
  );
  
end architecture;
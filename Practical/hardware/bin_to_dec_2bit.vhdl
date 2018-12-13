-- bin_to_dec_2bit.vhdl
-- finalized 9/27/2018
-- Phillip Hiemenz
--
-- Converts a binary number up to 7 bits (max decimal 127)
--  into two digits of decimal. Numbers greater than 99 will
--  produce unexpected behavior.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity bin_to_dec_2bit is
  port(
    bin_in: in std_logic_vector(6 downto 0);
    dec_out_0: out std_logic_vector(3 downto 0);
    dec_out_1: out std_logic_vector(3 downto 0)
  );
end entity;

architecture behavioral of bin_to_dec_2bit is

-- signal declarations
  signal bin: unsigned(6 downto 0);
  signal dec0: unsigned(3 downto 0);
  signal dec1: unsigned(3 downto 0);
  
begin

-- convert binary to number
  bin <= unsigned(bin_in);
  
-- get ones digit
  dec0 <= resize(bin mod 10,4);
  
-- get tens digit, taking advantage of truncated division
  dec1 <= resize(bin / 10,4);
  
-- output passthrough
  dec_out_0 <= std_logic_vector(dec0);
  dec_out_1 <= std_logic_vector(dec1);
  
end architecture;
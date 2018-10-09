-- sevenseg_hex1.vhdl
-- finalized 9/27/2018
-- Phillip Hiemenz
--
-- Uses a lookup table to display a binary input as a hexadecimal character on an SSD.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity sevenseg_hex1 is
  port(
    binary: in std_logic_vector(3 downto 0);
    seg: out std_logic_vector(7 downto 0)
  );
end entity;

architecture behavioral of sevenseg_hex1 is
begin
  process(binary)
  begin
    case binary is
      when "0000" => seg <= "11000000";
      when "0001" => seg <= "11111001";
      when "0010" => seg <= "10100100";
      when "0011" => seg <= "10110000";
      
      when "0100" => seg <= "10011001";
      when "0101" => seg <= "10010010";
      when "0110" => seg <= "10000010";
      when "0111" => seg <= "11111000";
      
      when "1000" => seg <= "10000000";
      when "1001" => seg <= "10011000";
      when "1010" => seg <= "10001000";
      when "1011" => seg <= "10000011";
      
      when "1100" => seg <= "10100111";
      when "1101" => seg <= "10100001";
      when "1110" => seg <= "10000110";
      when "1111" => seg <= "10001110";
      
      when others => seg <= "00111111";
    end case;
  end process;
end architecture;
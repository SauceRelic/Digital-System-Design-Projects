-- sevenseg_hex1_dp.vhdl
-- finalized 9/27/2018
-- Phillip Hiemenz
--
-- Uses a lookup table to display a binary input as a hexadecimal character on an SSD.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity sevenseg_hex1_dp is
  port(
    binary: in std_logic_vector(3 downto 0);
    seg: out std_logic_vector(7 downto 0)
  );
end entity;

architecture behavioral of sevenseg_hex1_dp is
begin
  process(binary)
  begin
    case binary is
      when "0000" => seg <= "01000000";
      when "0001" => seg <= "01111001";
      when "0010" => seg <= "00100100";
      when "0011" => seg <= "00110000";
      
      when "0100" => seg <= "00011001";
      when "0101" => seg <= "00010010";
      when "0110" => seg <= "00000010";
      when "0111" => seg <= "01111000";
      
      when "1000" => seg <= "00000000";
      when "1001" => seg <= "00011000";
      when "1010" => seg <= "00001000";
      when "1011" => seg <= "00000011";
      
      when "1100" => seg <= "00100111";
      when "1101" => seg <= "00100001";
      when "1110" => seg <= "00000110";
      when "1111" => seg <= "00001110";
      
      when others => seg <= "00111111";
    end case;
  end process;
end architecture;
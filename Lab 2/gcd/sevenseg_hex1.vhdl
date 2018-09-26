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
      when "0000" => seg <= "00111111";
      when "0001" => seg <= "00000110";
      when "0010" => seg <= "01011011";
      when "0011" => seg <= "01001111";
      
      when "0100" => seg <= "01100110";
      when "0101" => seg <= "01101101";
      when "0110" => seg <= "01111101";
      when "0111" => seg <= "00000111";
      
      when "1000" => seg <= "01111111";
      when "1001" => seg <= "01100111";
      when "1010" => seg <= "01110111";
      when "1011" => seg <= "01111100";
      
      when "1100" => seg <= "01011000";
      when "1101" => seg <= "01011110";
      when "1110" => seg <= "01111001";
      when "1111" => seg <= "01110001";
      
      when others => seg <= "11000000";
    end case;
  end process;
end architecture;
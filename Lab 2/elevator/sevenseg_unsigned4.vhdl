library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity sevenseg_unsigned is
  generic(
    N: natural := 8
  );
  port(
    binary: in std_logic_vector(N-1 downto 0);
    seg0: out std_logic_vector(7 downto 0);
    seg1: out std_logic_vector(7 downto 0);
    seg2: out std_logic_vector(7 downto 0);
    seg3: out std_logic_vector(7 downto 0)
  );
end entity;

architecture behavioral of sevenseg_unsigned is
  signal decimal: unsigned(N-1 downto 0);
  signal digit0: unsigned(3 downto 0);
  signal digit1: unsigned(3 downto 0);
  signal digit2: unsigned(3 downto 0);
  signal digit3: unsigned(3 downto 0);
  
begin
  decimal <= Unsigned(binary);
  
  process(decimal)
  begin
    if(decimal = 0) then
      digit0 <= to_unsigned(0,4);
      digit1 <= to_unsigned(15,4);
      digit2 <= to_unsigned(15,4);
      digit3 <= to_unsigned(15,4);
    else
      digit0 <= decimal mod 10;
      if(decimal < 10) then
        digit1 <= to_unsigned(15,4);
        digit2 <= to_unsigned(15,4);
        digit3 <= to_unsigned(15,4);
      else
        digit1 <= (decimal / 10) mod 10;
        if(decimal < 100) then
          digit2 <= to_unsigned(15,4);
          digit3 <= to_unsigned(15,4);
        else
          digit2 <= (decimal / 100) mod 10;
          if(decimal < 1000) then
            digit3 <= to_unsigned(15,4);
          else
            digit3 <= (decimal / 1000);
          end if;
        end if;
      end if;
    end if;
  end process;
  
  process(digit0)
  begin
    case to_integer(digit0) is
      when 0 => seg0 <= "00111111";
      when 1 => seg0 <= "00000110";
      when 2 => seg0 <= "01011011";
      when 3 => seg0 <= "01001111";
      when 4 => seg0 <= "01100110";
      when 5 => seg0 <= "01101101";
      when 6 => seg0 <= "01111101";
      when 7 => seg0 <= "00000111";
      when 8 => seg0 <= "01111111";
      when 9 => seg0 <= "01100111";
      
      when others => seg0 <= "00000000";
    end case;
  end process;
  
  process(digit1)
  begin
    case to_integer(digit1) is
      when 0 => seg1 <= "00111111";
      when 1 => seg1 <= "00000110";
      when 2 => seg1 <= "01011011";
      when 3 => seg1 <= "01001111";
      when 4 => seg1 <= "01100110";
      when 5 => seg1 <= "01101101";
      when 6 => seg1 <= "01111101";
      when 7 => seg1 <= "00000111";
      when 8 => seg1 <= "01111111";
      when 9 => seg1 <= "01100111";
      
      when others => seg1 <= "00000000";
    end case;
  end process;
  
  process(digit2)
  begin
    case to_integer(digit2) is
      when 0 => seg2 <= "00111111";
      when 1 => seg2 <= "00000110";
      when 2 => seg2 <= "01011011";
      when 3 => seg2 <= "01001111";
      when 4 => seg2 <= "01100110";
      when 5 => seg2 <= "01101101";
      when 6 => seg2 <= "01111101";
      when 7 => seg2 <= "00000111";
      when 8 => seg2 <= "01111111";
      when 9 => seg2 <= "01100111";
      
      when others => seg2 <= "00000000";
    end case;
  end process;
  
  process(digit3)
  begin
    case to_integer(digit3) is
      when 0 => seg3 <= "00111111";
      when 1 => seg3 <= "00000110";
      when 2 => seg3 <= "01011011";
      when 3 => seg3 <= "01001111";
      when 4 => seg3 <= "01100110";
      when 5 => seg3 <= "01101101";
      when 6 => seg3 <= "01111101";
      when 7 => seg3 <= "00000111";
      when 8 => seg3 <= "01111111";
      when 9 => seg3 <= "01100111";
      
      when others => seg3 <= "00000000";
    end case;
  end process;
  
end architecture;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity barrel is
port(
  word: in std_logic_vector(3 downto 0);
  shift: in std_logic_vector(1 downto 0);
  dir: in std_logic;
  wout: out std_logic_vector(3 downto 0)
);
end entity;

architecture behavioral of barrel is
begin
  process(word, shift, dir)
  begin
    if(dir = '0') then
      case shift is
        when "00" => wout <= word;
      
        when "01" => wout(3 downto 1) <= word(2 downto 0);
                     wout(0) <= word(3);
        when "10" => wout(3 downto 2) <= word(1 downto 0);
                     wout(1 downto 0) <= word(3 downto 2);
        when "11" => wout(3) <= word(0);
                     wout(2 downto 0) <= word(3 downto 1);
        when others => wout <= "0000";
      end case;
    else
      case shift is
        when "00" => wout <= word;
      
        when "01" => wout(2 downto 0) <= word(3 downto 1);
                     wout(3) <= word(0);
        when "10" => wout(3 downto 2) <= word(1 downto 0);
                     wout(1 downto 0) <= word(3 downto 2);
        when "11" => wout(0) <= word(3);
                     wout(3 downto 1) <= word(2 downto 0);
        when others => wout <= "0000";
      end case;
    end if;
  end process;
end behavioral;
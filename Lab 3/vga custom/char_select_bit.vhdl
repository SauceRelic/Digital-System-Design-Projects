library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity char_select_bit is
  generic(
    H_counter_size: natural := 10
  );
  port(
    char_line: in std_logic_vector(7 downto 0);
    x: in std_logic_vector(H_counter_size-1 downto 0);
    pixel: out std_logic
  );
end entity;

architecture behavioral of char_select_bit is
  signal mod_x: unsigned(H_counter_size-1 downto 0);
  
begin
  
  mod_x <= unsigned(x) mod 9;
  
  process(all)
  begin
    case(mod_x) is
      when to_unsigned(1,H_counter_size) => pixel <= char_line(7);
      when to_unsigned(2,H_counter_size) => pixel <= char_line(6);
      when to_unsigned(3,H_counter_size) => pixel <= char_line(5);
      when to_unsigned(4,H_counter_size) => pixel <= char_line(4);
      when to_unsigned(5,H_counter_size) => pixel <= char_line(3);
      when to_unsigned(6,H_counter_size) => pixel <= char_line(2);
      when to_unsigned(7,H_counter_size) => pixel <= char_line(1);
      when to_unsigned(8,H_counter_size) => pixel <= char_line(0);
    
      when others => pixel <= '0';
    end case;
  end process;
  
end architecture;
    
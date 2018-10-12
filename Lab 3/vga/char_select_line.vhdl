-- char_select_line.vhdl
-- Phillip Hiemenz
-- finalized 10/11/2018
--
-- Sends an address to a character ROM based on current VGA line and desired character.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity char_select_line is
  generic(
    V_counter_size: natural := 10
  );
  port(
    char: in std_logic_vector(4 downto 0);
    y: in std_logic_vector(V_counter_size-1 downto 0);
    addr: out std_logic_vector(7 downto 0)
  );
end entity;

architecture behavioral of char_select_line is
  
-- math signals
  signal char_unsigned: unsigned(4 downto 0);
  signal mod_y: unsigned(V_counter_size-1 downto 0);
  signal addr_unsigned: unsigned(7 downto 0);
  
begin
  
  char_unsigned <= unsigned(char);
  mod_y <= unsigned(y) mod 10;
  
-- address select
  process(all)
  begin
    if((mod_y > 0) and (mod_y <= 8)) then
      addr_unsigned <= to_unsigned(to_integer((char_unsigned * 8) + (mod_y - 1)),8);
    else
      addr_unsigned <= to_unsigned(26 * 8,8);
    end if;
  end process;
  
-- output
  addr <= std_logic_vector(addr_unsigned);

end architecture;

-- char_grid_modifyable.vhdl
-- Phillip Hiemenz
-- finalized 10/11/2018
--
-- Modifyable component that defines a grid to place characters on.
--  Has an optional input for variable characters.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity char_grid_modifyable is
  generic(
    H_counter_size: natural := 10;
    V_counter_size: natural := 10
  );
  port(
    x: in std_logic_vector(H_counter_size-1 downto 0);
    y: in std_logic_vector(V_counter_size-1 downto 0);
    char_in: in std_logic_vector(4 downto 0);
    char_out: out std_logic_vector(4 downto 0)
  );
end entity;

architecture behavioral of char_grid_modifyable is
-- convinience signals
  signal char_in_uns: unsigned(4 downto 0);
  signal char_out_uns: unsigned(4 downto 0);

-- grid signals
  signal charspace_x: unsigned(H_counter_size-1 downto 0);
  signal charspace_y: unsigned(V_counter_size-1 downto 0);

begin
  
  char_in_uns <= unsigned(char_in);
  
-- grid definition
  charspace_x <= unsigned(x) / 9;
  charspace_y <= unsigned(y) / 10;
  
-- output selection
  process(all)
  begin
    case(to_integer(charspace_y)) is
      when 0 =>
        case(to_integer(charspace_x)) is
          when 0 => char_out_uns <= char_in_uns;
          when others => char_out_uns <= to_unsigned(26,5);
        end case;
        
      when others => char_out_uns <= to_unsigned(26,5);
    end case;
  end process;
  
-- output assignment
  char_out <= std_logic_vector(char_out_uns);
  
end architecture;
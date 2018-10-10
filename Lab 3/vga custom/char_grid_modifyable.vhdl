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
  signal char_in_uns: unsigned(4 downto 0);
  signal char_out_uns: unsigned(4 downto 0);

  signal charspace_x: unsigned(H_counter_size-1 downto 0);
  signal charspace_y: unsigned(V_counter_size-1 downto 0);

begin
  
  char_in_uns <= unsigned(char_in);
  
  charspace_x <= unsigned(x) / 9;
  charspace_y <= unsigned(y) / 10;
  
  process(all)
  begin
    case(charspace_y) is
      when to_unsigned(0,V_counter_size) =>
        case(charspace_x) is
          when to_unsigned(0,H_counter_size) => char_out_uns <= to_unsigned(7,5);
          when to_unsigned(1,H_counter_size) => char_out_uns <= to_unsigned(4,5);
          when to_unsigned(2,H_counter_size) => char_out_uns <= to_unsigned(11,5);
          when to_unsigned(3,H_counter_size) => char_out_uns <= to_unsigned(11,5);
          when to_unsigned(4,H_counter_size) => char_out_uns <= to_unsigned(14,5);
          
          when to_unsigned(6,H_counter_size) => char_out_uns <= to_unsigned(19,5);
          when to_unsigned(7,H_counter_size) => char_out_uns <= to_unsigned(7,5);
          when to_unsigned(8,H_counter_size) => char_out_uns <= to_unsigned(4,5);
          when to_unsigned(9,H_counter_size) => char_out_uns <= to_unsigned(17,5);
          when to_unsigned(10,H_counter_size) => char_out_uns <= to_unsigned(4,5);

          when others => char_out_uns <= to_unsigned(26,5);
        end case;
        
      when to_unsigned(5,V_counter_size) =>
        case(charspace_x) is
          when to_unsigned(0,H_counter_size) => char_out_uns <= to_unsigned(6,5);
          when to_unsigned(1,H_counter_size) => char_out_uns <= to_unsigned(4,5);
          when to_unsigned(2,H_counter_size) => char_out_uns <= to_unsigned(13,5);
          when to_unsigned(3,H_counter_size) => char_out_uns <= to_unsigned(4,5);
          when to_unsigned(4,H_counter_size) => char_out_uns <= to_unsigned(17,5);
          when to_unsigned(5,H_counter_size) => char_out_uns <= to_unsigned(0,5);
          when to_unsigned(6,H_counter_size) => char_out_uns <= to_unsigned(11,5);
          
          when to_unsigned(8,H_counter_size) => char_out_uns <= to_unsigned(10,5);
          when to_unsigned(9,H_counter_size) => char_out_uns <= to_unsigned(4,5);
          when to_unsigned(10,H_counter_size) => char_out_uns <= to_unsigned(13,5);
          when to_unsigned(11,H_counter_size) => char_out_uns <= to_unsigned(14,5);
          when to_unsigned(12,H_counter_size) => char_out_uns <= to_unsigned(1,5);
          when to_unsigned(13,H_counter_size) => char_out_uns <= to_unsigned(8,5);
          
          when others => char_out_uns <= to_unsigned(26,5);
        end case;
        
      when others => char_out_uns <= to_unsigned(26,5);
    end case;
  end process;
  
  char_out <= std_logic_vector(char_out_uns);
  
end architecture;
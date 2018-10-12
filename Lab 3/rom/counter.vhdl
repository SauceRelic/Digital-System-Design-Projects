-- counter.vhdl
-- finalized 10/11/2018
-- Phillip Hiemenz
--
-- Generic counter.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
  generic(
    max_num: natural := 255;
    N: natural := 8
  );
  port(
    clk: in std_logic;
    rstb: in std_logic;
    pause: in std_logic;
    
    count_out: out std_logic_vector(N-1 downto 0)
  );
end entity;

architecture behavioral of counter is
-- count signals
  signal count: unsigned(N-1 downto 0) := (others => '0');
  signal count_next: unsigned(N-1 downto 0);
  
begin
  
-- increment count
  process(clk,rstb)
  begin
    if(rstb = '0') then
      count <= (others => '0');
    elsif(rising_edge(clk)) then
      count <= count_next;
    end if;
  end process;
  
-- next count w/ rollover
  process(all)
  begin
    if(count = max_num) then
      count_next <= (others => '0');
    elsif(pause = '0') then
      count_next <= count;
    else
      count_next <= count + 1;
    end if;
  end process;
  
  count_out <= std_logic_vector(count);
  
end architecture;
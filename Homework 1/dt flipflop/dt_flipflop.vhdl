library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dt_flipflop is
port(
  clk: in std_logic;
  rstb: in std_logic;
  d: in std_logic;
  t: in std_logic;
  q: out std_logic
);
end entity;

architecture behavioral of dt_flipflop is
begin
  process(clk, rstb)
  begin
    if(rstb = '0') then
      q <= '0';
    elsif(rising_edge(clk)) then
      if(t =  '1') then
        q <= not(q);
      else
        q <= d;
      end if;
    end if;
  end process;
end behavioral;
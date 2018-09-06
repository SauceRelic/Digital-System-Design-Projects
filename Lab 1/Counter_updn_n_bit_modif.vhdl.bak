--------------------------------------
--
-- Counter_updn_n_bit.vhdl
--
-- created 6/22/18
-- tj
--
-- rev 0
----------------------------------------
--
-- n bit up/down counter example
-- for showing a project from start to finish
--
----------------------------------------
--
-- Inputs: rstb, clk, dir
-- Outputs: bout[n-1:0]
--
----------------------------------------
--
-- counts up when dir = 0
-- counts down when dir = 1
--
----------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Counter_updn_n_bit is
  generic(
    n: natural := 8
  );
  port (
    clk: in std_logic;
    rstb: in std_logic;
    dir: in std_logic;
    bout : out std_logic_vector(n-1 downto 0)
  );
end entity;

architecture behavioral of Counter_updn_n_bit is
--
-- internal signals
--
  signal bout_sig: unsigned(n-1 downto 0);

begin
  process(clk, rstb)
  begin
--
-- reset
--
    if (rstb = '0') then
      bout_sig <= (others => '0');
--
-- rising clk edge
--
    elsif (rising_edge (clk)) then
      if(dir = '0') then
        bout_sig <= bout_sig + 1;
      else
        bout_sig <= bout_sig - 1;
      end if;
    end if;
  end process;
--
-- Output logic
--
  bout <= std_logic_vector(bout_sig);
end behavioral;


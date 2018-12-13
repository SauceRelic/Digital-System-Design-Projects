--------------------------------------
--
-- clk_2Hz.vhdl
--
-- created 9/6/2018
-- Phillip Hiemenz
-- Modified clk_3Hz.vhdl by tj
--
-- rev 0
----------------------------------------
--
-- 50MHz -> 2Hz clock divider HDL
--
----------------------------------------
--
-- Inputs: rstb, clk_50MHz
-- Outputs: clk_2Hz
--
----------------------------------------
--
-- Notes:
--
-- Typically this will be instantiated in a top level HDL for
-- implementation on the DE10 board
--
-- The 50 MHz clock input would be tied to CLOCK_50
-- the output clock would be tied to the clock inputs of the
-- remainder of the design
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clk_2Hz is
  port (
    clk_50MHz : in std_logic;
    rstb : in std_logic;
    clk_2Hz : out std_logic
  );
end entity;

architecture behavioral of clk_2Hz is
-- constants and parameters
  constant Tover2: signed(25 downto 0) := to_signed(12_499_999, 26);
-- internal signals
  signal cnt: signed(25 downto 0);
  signal clk_out: std_logic;
begin
  process(clk_50MHz, rstb)
  begin
-- reset
    if (rstb = '0') then
      cnt <= Tover2;
      clk_out <= '0';
-- rising clk edge
    elsif (rising_edge(clk_50MHz)) then
      cnt <= cnt - 1;
--
-- check if half way
      if (cnt < 0) then
        cnt <= Tover2;
        clk_out <= not clk_out;
      end if;
    end if;
  end process;
--
-- Output logic
--
  clk_2Hz <= clk_out;
end behavioral;
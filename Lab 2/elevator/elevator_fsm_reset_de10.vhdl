library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity elevator_fsm_reset_de10 is
  port(
    CLOCK_50: in std_logic;
    SW: in std_logic_vector(6 downto 0);
    HEX0: out std_logic_vector(7 downto 0);
    HEX1: out std_logic_vector(7 downto 0);
    HEX4: out std_logic_vector(7 downto 0);
    HEX5: out std_logic_vector(7 downto 0)
  );
end entity;

architecture hardware of elevator_fsm_reset_de10 is
  
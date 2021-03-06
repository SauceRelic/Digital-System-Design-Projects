library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity hvac is
port(
  dtemp: in std_logic_vector(7 downto 0);
  atemp: in std_logic_vector(7 downto 0);
  speed: out std_logic_vector(1 downto 0);
  heat: out std_logic;
  cool: out std_logic;
  idle: out std_logic
);
end entity;

architecture behavioral of hvac is
  signal dsigned: signed(7 downto 0);
  signal asigned: signed(7 downto 0);
  signal difference: signed(7 downto 0);
  
begin
  process(dtemp, atemp)
  begin
    dsigned <= Signed(dtemp);
    asigned <= Signed(atemp);
    difference <= asigned - dsigned;
    
    if(difference < -9) then
      speed <= "11";
      heat <= '1';
      cool <= '0';
      idle <= '0';
    elsif(difference < -5) then
      speed <= "10";
      heat <= '1';
      cool <= '0';
      idle <= '0';
    elsif(difference < -2) then
      speed <= "01";
      heat <= '1';
      cool <= '0';
      idle <= '0';
    elsif(difference <= 2) then
      speed <= "00";
      heat <= '0';
      cool <= '0';
      idle <= '1';
    elsif(difference <= 5) then
      speed <= "01";
      heat <= '0';
      cool <= '1';
      idle <= '0';
    elsif(difference <= 9) then
      speed <= "10";
      heat <= '0';
      cool <= '1';
      idle <= '0';
    else
      speed <= "11";
      heat <= '0';
      cool <= '1';
      idle <= '0';
    end if;
  end process;
end architecture;
      
      
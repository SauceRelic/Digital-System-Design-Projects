library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity barrel_tb is
end entity;

architecture testbench of barrel_tb is
  signal WORD: std_logic_vector(3 downto 0);
  signal SHIFT: std_logic_vector(1 downto 0);
  signal DIR: std_logic;
  signal WOUT: std_logic_vector(3 downto 0);
  constant PER: time := 20 ns;
  
  component barrel
  port(
    word: in std_logic_vector(3 downto 0);
    shift: in std_logic_vector(1 downto 0);
    dir: in std_logic;
    wout: out std_logic_vector(3 downto 0)
  );
  end component;
  
begin
  DUT: barrel
  port map(
    word => WORD,
    shift => SHIFT,
    dir => DIR,
    wout => WOUT
  );
  
  run: process
  begin
    WORD <= "1100";
    SHIFT <= "00";
    DIR <= '0';
    
    wait for PER;
    
    SHIFT <= "01";
    
    wait for PER;
    
    SHIFT <= "10";
    
    wait for PER;
    
    SHIFT <= "11";
    
    wait for PER;
    
    SHIFT <= "00";
    DIR <= '1';
    
    wait for PER;
    
    SHIFT <= "01";
    
    wait for PER;
    
    SHIFT <= "10";
    
    wait for PER;
    
    SHIFT <= "11";
    
    wait for PER;
    
    WORD <= "0001";
    
    wait;
  end process;
end testbench;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity hvac_tb is
end entity;

architecture testbench of hvac_tb is
  signal DTEMP: std_logic_vector(7 downto 0);
  signal ATEMP: std_logic_vector(7 downto 0);
  signal SPEED: std_logic_vector(1 downto 0);
  signal HEAT: std_logic;
  signal COOL: std_logic;
  signal IDLE: std_logic;
  
  signal tempnum: signed(7 downto 0);
  
  component hvac
  port(
    dtemp: in std_logic_vector(7 downto 0);
    atemp: in std_logic_vector(7 downto 0);
    speed: out std_logic_vector(1 downto 0);
    heat: out std_logic;
    cool: out std_logic;
    idle: out std_logic
  );
  end component;
  
begin
  DUT: hvac
  port map(
    dtemp => DTEMP,
    atemp => ATEMP,
    speed => SPEED,
    heat => HEAT,
    cool => COOL,
    idle => IDLE
  );
  
  run: process
  begin
    DTEMP <= "00011001";
    ATEMP <= "00001010";
    tempnum <= Signed(ATEMP);
    
    wait for 10 ns;
    
    loop
      tempnum <= tempnum + 1;
      ATEMP <= Std_logic_vector(tempnum);
      
      wait for 10 ns;
    end loop;
  end process;
end architecture;
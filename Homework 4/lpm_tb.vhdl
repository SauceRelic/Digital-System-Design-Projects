library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity lpm_tb is
end entity;

architecture testbench of lpm_tb is
  
  signal A: std_logic_vector(4 downto 0) := "00000";
  signal B: std_logic_vector(6 downto 0) := "0000000";
  signal AxB: std_logic_vector(11 downto 0);
  signal CLK: std_logic;
  constant t: time := 20 ns;
  
  component lpm
  port(
    dataa: in std_logic_vector(4 downto 0);
    datab: in std_logic_vector(6 downto 0);
    result: out std_logic_vector(11 downto 0)
  );
  end component;
  
begin

  DUT: lpm
  port map(
    dataa => A,
    datab => B,
    result => AxB
  );
  
  clock: process
  begin
    CLK <= '0';
    wait for t/2;
    infinite: loop
      CLK <= not(CLK);
      wait for t/2;
    end loop;
  end process;
  
  run: process(CLK)
  begin
    if(rising_edge(CLK)) then
      if((to_integer(unsigned(A)) + 1) >= 32) then
        A <= "00000";
      
        if((to_integer(unsigned(B)) + 1) >= 128) then
          B <= "0000000";
        else
          B <= std_logic_vector(unsigned(B) + to_unsigned(1,7));
        end if;
      
      else
        A <= std_logic_vector(unsigned(A) + to_unsigned(1,5));
      end if;
    end if;
  end process;

end architecture;
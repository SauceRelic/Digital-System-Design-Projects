-- gcd_datapath.vhdl
-- finalized 9/27/2018
-- Phillip Hiemenz
--
-- Calculates the greatest common denominator of the inputs when
--  driven by a state machine.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity gcd_datapath is
  generic(
    N: natural := 4
  );
  port(
    clk: in std_logic;
    inputA: in std_logic_vector(N-1 downto 0);
    inputB: in std_logic_vector(N-1 downto 0);
    calc: in std_logic;
    
    gcd_out: out std_logic_vector(N-1 downto 0);
    done: out std_logic
  );
end entity;

architecture behavioral of gcd_datapath is
  
-- signal declarations
  signal A: unsigned(N-1 downto 0);
  signal B: unsigned(N-1 downto 0);
  signal nextA: unsigned(N-1 downto 0);
  signal nextB: unsigned(N-1 downto 0);
  signal GCD: unsigned(N-1 downto 0);
  signal done_next: std_logic;
  
begin

-- AB register
  process(clk)
  begin
    if(rising_edge(clk)) then
      if(calc = '0') then
        A <= unsigned(inputA);
        B <= unsigned(inputB);
      else
        A <= nextA;
        B <= nextB;
      end if;
    end if;
  end process;

-- comparison logic
  process(all)
  begin
    if(calc = '1') then
      if(A = B) then
        done_next <= '1';
      
        nextA <= A;
        nextB <= B;
      elsif(A > B) then
        done_next <= '0';
      
        nextA <= A - B;
        nextB <= B;
      else
        done_next <= '0';
      
        nextA <= A;
        nextB <= B - A;
      end if;
    else
      done_next <= '0';
      
      nextA <= A;
      nextB <= B;
    end if;
  end process;
  
-- GCD register
  process(clk)
  begin
    if(rising_edge(clk)) then
      if(calc = '1') then
        if(A < B) then
          GCD <= B;
        else
          GCD <= A;
        end if;
      end if;
    end if;
  end process;
  
-- done register
  process(clk)
  begin
    if(rising_edge(clk)) then
      done <= done_next;
    end if;
  end process;

-- output
  gcd_out <= std_logic_vector(GCD);
  
end architecture;
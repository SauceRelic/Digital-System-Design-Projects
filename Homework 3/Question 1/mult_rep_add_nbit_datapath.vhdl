--------------------------------------
--
-- mult_rep_add_nbit_datapath.vhdl
--
-- created 9/12/18
-- tj
-- modified 9/25/2018
-- phillip hiemenz
--
-- rev 0
----------------------------------------
--
-- Data Path for repetitive addition multiplier
-- adds the multiplcand multiplier number of times
----------------------------------------
--
-- Inputs: clk, start, multiplicand, multiplier
-- Outputs: result, complete
--
----------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mult_rep_add_nbit_datapath is
  generic (
    N: natural := 5
  );
  port (
    clk : in std_logic;
    multiplicand : in std_logic_vector(N-1 downto 0);
    multiplier : in std_logic_vector(N-1 downto 0);
    calc : in std_logic;
    result : out std_logic_vector((2*N)-1 downto 0);
    done : out std_logic
  );
end entity;

architecture behavioral of mult_rep_add_nbit_datapath is
--
-- structural signals
--
  signal multiplicand_sig: unsigned(N-1 downto 0);
  signal Multiplier_sig: unsigned(N-1 downto 0);
  signal Multiplier_sig_next: unsigned(N-1 downto 0);
  signal result_sig: unsigned((2*N)-1 downto 0);
  signal result_sig_next: unsigned((2*N)-1 downto 0);
  signal zero_fill: unsigned(N-1 downto 0);

begin
--
-- zerofill setup
--
  zero_fill <= (others => '0');


--
-- datapath registers
--
  process(clk)
  begin
    if (rising_edge(clk)) then
      if(calc = '0') then
        multiplicand_sig <= unsigned(multiplicand);
        multiplier_sig <= unsigned(multiplier);
        result_sig <= (others => '0'); --result_sig;
      else
        multiplicand_sig <= unsigned(multiplicand);
        multiplier_sig <= multiplier_sig_next;
        result_sig <= result_sig_next;
      end if;
    end if;
  end process;
  
--
-- next state logic
--
  process(all)
  begin
    if(multiplier_sig = 0) then
      multiplier_sig_next <= multiplier_sig;
      result_sig_next <= result_sig;
      done <= '1';
    else
      multiplier_sig_next <= multiplier_sig - 1;
      result_sig_next <= (zero_fill & multiplicand_sig) + result_sig;
      done <= '0';
    end if;
  end process;
  
--
-- output logic
--
  result <= std_logic_vector(result_sig);

end behavioral;
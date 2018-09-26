--------------------------------------
--
-- reg_file_nbit_by_m.vhdl
--
-- created 7/19/17
-- tj
--
-- rev 0
----------------------------------------
--
-- Register File for memory size notes
----------------------------------------
--
-- Inputs: rstb, clk, reg_write, reg_read_addr
-- reg_write_addr, reg_write_data
-- Outputs: reg_read_data
--
----------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
entity reg_file_nbit_by_m is
generic( REG_NUM: natural := 64;
REG_DATA_WIDTH: natural := 32
);
port (clk : in std_logic;
rstb : in std_logic;
reg_write: in std_logic;
reg_read_addr: in std_logic_vector((integer(ceil(log2(real(REG_NUM))))-1) downto 0);
reg_write_addr: in std_logic_vector((integer(ceil(log2(real(REG_NUM))))-1) downto 0);
reg_write_data: in std_logic_vector((REG_DATA_WIDTH - 1) downto 0);
reg_read_data: out std_logic_vector((REG_DATA_WIDTH - 1) downto 0)
);
end entity;

architecture behavioral of reg_file_nbit_by_m is
--
-- Register File
--
type reg_type is array (0 to (REG_NUM - 1)) of std_logic_vector((REG_DATA_WIDTH - 1) downto
0);
signal reg_file: reg_type;
begin
--
-- Register File Write
--
register_write_process: process(clk, rstb)
begin
if(rstb = '0') then
reg_file <= ((others=> (others=>'0')));
elsif(rising_edge(clk) and (reg_write = '1')) then
reg_file(to_integer(unsigned(reg_write_addr))) <= reg_write_data;
end if;
end process;
--
-- Output Logic
--
reg_read_data <= reg_file(to_integer(unsigned(reg_read_addr)));
end architecture;

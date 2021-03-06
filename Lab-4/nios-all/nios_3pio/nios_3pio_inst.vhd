	component nios_3pio is
		port (
			clk_clk         : in  std_logic                     := 'X';             -- clk
			reset_reset_n   : in  std_logic                     := 'X';             -- reset_n
			pio_0_ex_export : out std_logic_vector(15 downto 0);                    -- export
			pio_1_ex_export : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- export
			pio_2_ex_export : out std_logic_vector(15 downto 0)                     -- export
		);
	end component nios_3pio;

	u0 : component nios_3pio
		port map (
			clk_clk         => CONNECTED_TO_clk_clk,         --      clk.clk
			reset_reset_n   => CONNECTED_TO_reset_reset_n,   --    reset.reset_n
			pio_0_ex_export => CONNECTED_TO_pio_0_ex_export, -- pio_0_ex.export
			pio_1_ex_export => CONNECTED_TO_pio_1_ex_export, -- pio_1_ex.export
			pio_2_ex_export => CONNECTED_TO_pio_2_ex_export  -- pio_2_ex.export
		);


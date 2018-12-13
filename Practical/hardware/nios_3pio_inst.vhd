	component nios_3pio is
		port (
			clk_clk                             : in std_logic                    := 'X';             -- clk
			reset_reset_n                       : in std_logic                    := 'X';             -- reset_n
			swin_pio_external_connection_export : in std_logic_vector(3 downto 0) := (others => 'X')  -- export
		);
	end component nios_3pio;

	u0 : component nios_3pio
		port map (
			clk_clk                             => CONNECTED_TO_clk_clk,                             --                          clk.clk
			reset_reset_n                       => CONNECTED_TO_reset_reset_n,                       --                        reset.reset_n
			swin_pio_external_connection_export => CONNECTED_TO_swin_pio_external_connection_export  -- swin_pio_external_connection.export
		);


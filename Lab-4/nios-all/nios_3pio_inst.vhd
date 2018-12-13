	component nios_3pio is
		port (
			clk_clk                              : in  std_logic                     := 'X';             -- clk
			count_pio_external_connection_export : out std_logic_vector(15 downto 0);                    -- export
			reset_reset_n                        : in  std_logic                     := 'X';             -- reset_n
			swin_pio_external_connection_export  : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- export
			swout_pio_external_connection_export : out std_logic_vector(15 downto 0)                     -- export
		);
	end component nios_3pio;

	u0 : component nios_3pio
		port map (
			clk_clk                              => CONNECTED_TO_clk_clk,                              --                           clk.clk
			count_pio_external_connection_export => CONNECTED_TO_count_pio_external_connection_export, -- count_pio_external_connection.export
			reset_reset_n                        => CONNECTED_TO_reset_reset_n,                        --                         reset.reset_n
			swin_pio_external_connection_export  => CONNECTED_TO_swin_pio_external_connection_export,  --  swin_pio_external_connection.export
			swout_pio_external_connection_export => CONNECTED_TO_swout_pio_external_connection_export  -- swout_pio_external_connection.export
		);


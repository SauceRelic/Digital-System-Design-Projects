	component nios_interrupt is
		port (
			clk_clk         : in std_logic                    := 'X';             -- clk
			reset_reset_n   : in std_logic                    := 'X';             -- reset_n
			pioa_ext_export : in std_logic_vector(7 downto 0) := (others => 'X'); -- export
			piob_ext_export : in std_logic_vector(7 downto 0) := (others => 'X')  -- export
		);
	end component nios_interrupt;

	u0 : component nios_interrupt
		port map (
			clk_clk         => CONNECTED_TO_clk_clk,         --      clk.clk
			reset_reset_n   => CONNECTED_TO_reset_reset_n,   --    reset.reset_n
			pioa_ext_export => CONNECTED_TO_pioa_ext_export, -- pioa_ext.export
			piob_ext_export => CONNECTED_TO_piob_ext_export  -- piob_ext.export
		);


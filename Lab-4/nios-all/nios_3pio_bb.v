
module nios_3pio (
	clk_clk,
	reset_reset_n,
	count_pio_external_connection_export,
	swin_pio_external_connection_export,
	swout_pio_external_connection_export);	

	input		clk_clk;
	input		reset_reset_n;
	output	[15:0]	count_pio_external_connection_export;
	input	[7:0]	swin_pio_external_connection_export;
	output	[15:0]	swout_pio_external_connection_export;
endmodule

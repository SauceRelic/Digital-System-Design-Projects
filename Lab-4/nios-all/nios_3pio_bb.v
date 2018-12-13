
module nios_3pio (
	clk_clk,
	count_pio_external_connection_export,
	reset_reset_n,
	swin_pio_external_connection_export,
	swout_pio_external_connection_export);	

	input		clk_clk;
	output	[15:0]	count_pio_external_connection_export;
	input		reset_reset_n;
	input	[7:0]	swin_pio_external_connection_export;
	output	[15:0]	swout_pio_external_connection_export;
endmodule


module nios_3pio (
	clk_clk,
	reset_reset_n,
	pio_0_ex_export,
	pio_1_ex_export,
	pio_2_ex_export);	

	input		clk_clk;
	input		reset_reset_n;
	output	[15:0]	pio_0_ex_export;
	input	[7:0]	pio_1_ex_export;
	output	[15:0]	pio_2_ex_export;
endmodule

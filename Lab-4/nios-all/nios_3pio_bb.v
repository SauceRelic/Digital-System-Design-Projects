
module nios_3pio (
	clk_clk,
	pio_0_ex_export,
	pio_1_ex_export,
	pio_2_ex_export,
	reset_reset_n);	

	input		clk_clk;
	output	[15:0]	pio_0_ex_export;
	input	[7:0]	pio_1_ex_export;
	output	[15:0]	pio_2_ex_export;
	input		reset_reset_n;
endmodule

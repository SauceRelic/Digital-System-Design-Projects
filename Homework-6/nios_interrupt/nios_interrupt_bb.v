
module nios_interrupt (
	clk_clk,
	reset_reset_n,
	pioa_ext_export,
	piob_ext_export);	

	input		clk_clk;
	input		reset_reset_n;
	input	[7:0]	pioa_ext_export;
	input	[7:0]	piob_ext_export;
endmodule

	nios_basic u0 (
		.clk_clk                              (<connected-to-clk_clk>),                              //                           clk.clk
		.reset_reset_n                        (<connected-to-reset_reset_n>),                        //                         reset.reset_n
		.count_pio_external_connection_export (<connected-to-count_pio_external_connection_export>), // count_pio_external_connection.export
		.swin_pio_external_connection_export  (<connected-to-swin_pio_external_connection_export>),  //  swin_pio_external_connection.export
		.swout_pio_external_connection_export (<connected-to-swout_pio_external_connection_export>)  // swout_pio_external_connection.export
	);

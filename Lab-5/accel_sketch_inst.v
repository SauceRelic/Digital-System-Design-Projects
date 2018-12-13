	accel_sketch u0 (
		.clk_clk                     (<connected-to-clk_clk>),                     //           clk.clk
		.clk_sdram_clk               (<connected-to-clk_sdram_clk>),               //     clk_sdram.clk
		.pio_push_export             (<connected-to-pio_push_export>),             //      pio_push.export
		.pio_sw_export               (<connected-to-pio_sw_export>),               //        pio_sw.export
		.reset_reset_n               (<connected-to-reset_reset_n>),               //         reset.reset_n
		.sdram_wire_addr             (<connected-to-sdram_wire_addr>),             //    sdram_wire.addr
		.sdram_wire_ba               (<connected-to-sdram_wire_ba>),               //              .ba
		.sdram_wire_cas_n            (<connected-to-sdram_wire_cas_n>),            //              .cas_n
		.sdram_wire_cke              (<connected-to-sdram_wire_cke>),              //              .cke
		.sdram_wire_cs_n             (<connected-to-sdram_wire_cs_n>),             //              .cs_n
		.sdram_wire_dq               (<connected-to-sdram_wire_dq>),               //              .dq
		.sdram_wire_dqm              (<connected-to-sdram_wire_dqm>),              //              .dqm
		.sdram_wire_ras_n            (<connected-to-sdram_wire_ras_n>),            //              .ras_n
		.sdram_wire_we_n             (<connected-to-sdram_wire_we_n>),             //              .we_n
		.vga_out_CLK                 (<connected-to-vga_out_CLK>),                 //       vga_out.CLK
		.vga_out_HS                  (<connected-to-vga_out_HS>),                  //              .HS
		.vga_out_VS                  (<connected-to-vga_out_VS>),                  //              .VS
		.vga_out_BLANK               (<connected-to-vga_out_BLANK>),               //              .BLANK
		.vga_out_SYNC                (<connected-to-vga_out_SYNC>),                //              .SYNC
		.vga_out_R                   (<connected-to-vga_out_R>),                   //              .R
		.vga_out_G                   (<connected-to-vga_out_G>),                   //              .G
		.vga_out_B                   (<connected-to-vga_out_B>),                   //              .B
		.accelerometer_I2C_SDAT      (<connected-to-accelerometer_I2C_SDAT>),      // accelerometer.I2C_SDAT
		.accelerometer_I2C_SCLK      (<connected-to-accelerometer_I2C_SCLK>),      //              .I2C_SCLK
		.accelerometer_G_SENSOR_CS_N (<connected-to-accelerometer_G_SENSOR_CS_N>), //              .G_SENSOR_CS_N
		.accelerometer_G_SENSOR_INT  (<connected-to-accelerometer_G_SENSOR_INT>)   //              .G_SENSOR_INT
	);


	practical_nios u0 (
		.accelerometer_I2C_SDAT      (<connected-to-accelerometer_I2C_SDAT>),      // accelerometer.I2C_SDAT
		.accelerometer_I2C_SCLK      (<connected-to-accelerometer_I2C_SCLK>),      //              .I2C_SCLK
		.accelerometer_G_SENSOR_CS_N (<connected-to-accelerometer_G_SENSOR_CS_N>), //              .G_SENSOR_CS_N
		.accelerometer_G_SENSOR_INT  (<connected-to-accelerometer_G_SENSOR_INT>),  //              .G_SENSOR_INT
		.clk_clk                     (<connected-to-clk_clk>),                     //           clk.clk
		.pio_push_export             (<connected-to-pio_push_export>),             //      pio_push.export
		.pio_sw_export               (<connected-to-pio_sw_export>),               //        pio_sw.export
		.reset_reset_n               (<connected-to-reset_reset_n>)                //         reset.reset_n
	);


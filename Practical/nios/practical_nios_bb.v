
module practical_nios (
	accelerometer_I2C_SDAT,
	accelerometer_I2C_SCLK,
	accelerometer_G_SENSOR_CS_N,
	accelerometer_G_SENSOR_INT,
	clk_clk,
	pio_push_export,
	pio_sw_export,
	reset_reset_n);	

	inout		accelerometer_I2C_SDAT;
	output		accelerometer_I2C_SCLK;
	output		accelerometer_G_SENSOR_CS_N;
	input		accelerometer_G_SENSOR_INT;
	input		clk_clk;
	input	[3:0]	pio_push_export;
	input	[9:0]	pio_sw_export;
	input		reset_reset_n;
endmodule

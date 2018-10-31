
module accelerometer (
	accelerometer_I2C_SDAT,
	accelerometer_I2C_SCLK,
	accelerometer_G_SENSOR_CS_N,
	accelerometer_G_SENSOR_INT,
	clk_clk,
	reset_reset_n);	

	inout		accelerometer_I2C_SDAT;
	output		accelerometer_I2C_SCLK;
	output		accelerometer_G_SENSOR_CS_N;
	input		accelerometer_G_SENSOR_INT;
	input		clk_clk;
	input		reset_reset_n;
endmodule

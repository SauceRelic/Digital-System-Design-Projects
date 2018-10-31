	component accelerometer is
		port (
			accelerometer_I2C_SDAT      : inout std_logic := 'X'; -- I2C_SDAT
			accelerometer_I2C_SCLK      : out   std_logic;        -- I2C_SCLK
			accelerometer_G_SENSOR_CS_N : out   std_logic;        -- G_SENSOR_CS_N
			accelerometer_G_SENSOR_INT  : in    std_logic := 'X'; -- G_SENSOR_INT
			clk_clk                     : in    std_logic := 'X'; -- clk
			reset_reset_n               : in    std_logic := 'X'  -- reset_n
		);
	end component accelerometer;

	u0 : component accelerometer
		port map (
			accelerometer_I2C_SDAT      => CONNECTED_TO_accelerometer_I2C_SDAT,      -- accelerometer.I2C_SDAT
			accelerometer_I2C_SCLK      => CONNECTED_TO_accelerometer_I2C_SCLK,      --              .I2C_SCLK
			accelerometer_G_SENSOR_CS_N => CONNECTED_TO_accelerometer_G_SENSOR_CS_N, --              .G_SENSOR_CS_N
			accelerometer_G_SENSOR_INT  => CONNECTED_TO_accelerometer_G_SENSOR_INT,  --              .G_SENSOR_INT
			clk_clk                     => CONNECTED_TO_clk_clk,                     --           clk.clk
			reset_reset_n               => CONNECTED_TO_reset_reset_n                --         reset.reset_n
		);


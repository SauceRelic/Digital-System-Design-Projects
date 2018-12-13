	component practical_nios is
		port (
			accelerometer_I2C_SDAT      : inout std_logic                    := 'X';             -- I2C_SDAT
			accelerometer_I2C_SCLK      : out   std_logic;                                       -- I2C_SCLK
			accelerometer_G_SENSOR_CS_N : out   std_logic;                                       -- G_SENSOR_CS_N
			accelerometer_G_SENSOR_INT  : in    std_logic                    := 'X';             -- G_SENSOR_INT
			clk_clk                     : in    std_logic                    := 'X';             -- clk
			pio_push_export             : in    std_logic_vector(3 downto 0) := (others => 'X'); -- export
			pio_sw_export               : in    std_logic_vector(9 downto 0) := (others => 'X'); -- export
			reset_reset_n               : in    std_logic                    := 'X'              -- reset_n
		);
	end component practical_nios;

	u0 : component practical_nios
		port map (
			accelerometer_I2C_SDAT      => CONNECTED_TO_accelerometer_I2C_SDAT,      -- accelerometer.I2C_SDAT
			accelerometer_I2C_SCLK      => CONNECTED_TO_accelerometer_I2C_SCLK,      --              .I2C_SCLK
			accelerometer_G_SENSOR_CS_N => CONNECTED_TO_accelerometer_G_SENSOR_CS_N, --              .G_SENSOR_CS_N
			accelerometer_G_SENSOR_INT  => CONNECTED_TO_accelerometer_G_SENSOR_INT,  --              .G_SENSOR_INT
			clk_clk                     => CONNECTED_TO_clk_clk,                     --           clk.clk
			pio_push_export             => CONNECTED_TO_pio_push_export,             --      pio_push.export
			pio_sw_export               => CONNECTED_TO_pio_sw_export,               --        pio_sw.export
			reset_reset_n               => CONNECTED_TO_reset_reset_n                --         reset.reset_n
		);


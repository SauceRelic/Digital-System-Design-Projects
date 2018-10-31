/*
* accel.c
*
* Created on: Oct 7, 2017
* Author: johnsontimoj
*
* Basic accelerometer operation
*/
/////////////////
// Includes
/////////////////
#include "altera_up_avalon_accelerometer_spi.h"
#include "system.h"
#include <stdio.h>
#include <unistd.h>
int main(void){
// define a pointer of type alt_up_accelerometer...
// to use as a reference in the register functions
//
alt_up_accelerometer_spi_dev * acc_dev;
// open the Accelerometer port
// - command is in drivers/inc/alter_up_avalon_accelerometer_spi.h
// name reference is in system.h
// - "/dev/accelerometer_spi_0"
//
acc_dev = alt_up_accelerometer_spi_open_dev ("/dev/accelerometer_spi_0");
// Check for error and output to the console
//
if ( acc_dev == NULL)
printf ("Error: could not open acc device \n");
else
printf ("Opened acc device \n");
alt_32 xAccel = 0;
alt_32 yAccel = 0;
alt_32 zAccel = 0;
// read and print values
while(1){
alt_up_accelerometer_spi_read_x_axis(acc_dev, &xAccel);
alt_up_accelerometer_spi_read_y_axis(acc_dev, &yAccel);
alt_up_accelerometer_spi_read_z_axis(acc_dev, &zAccel);
printf("%li %li %li\n", xAccel, yAccel, zAccel);
usleep(100000);// 0.1sec
} // end while
return 0;
}

/*
 * box.c
 *
 *  Created on: Oct 24, 2018
 *      Author: hiemenzpe
 *
 *  Draws a box on the screen.
 */

#include "system.h"
#include "altera_up_avalon_video_pixel_buffer_dma.h"
#include "altera_avalon_pio_regs.h"
#include "sys/alt_irq.h"
#include "alt_types.h"
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

int color_switch(void);

int main(){
	printf("entered main");

	// create pointer to pixel buffer
	alt_up_pixel_buffer_dma_dev* pixel_buffer;
	pixel_buffer = alt_up_pixel_buffer_dma_open_dev("/dev/video_pixel_buffer_dma_0");

	// initial screen clear
	alt_up_pixel_buffer_dma_clear_screen(pixel_buffer,0);
	usleep(200000);


	while(1){
		// redraw every 1/5 sec
		usleep(200000);

		// set the color
		int color = color_switch();

		// draw a box
		alt_up_pixel_buffer_dma_draw_rectangle(pixel_buffer, 100, 70, 220, 170, color, 0);

		// draw a line from top-left to bottom-right
		alt_up_pixel_buffer_dma_draw_line(pixel_buffer, 100, 70, 220, 170, color, 0);

		// draw a line from bottom-left to top-right
		alt_up_pixel_buffer_dma_draw_line(pixel_buffer, 100, 170, 220, 70, color, 0);

		// debug, displays color being drawn on console
		char color_str[4];
		itoa(color,color_str,16);

		printf("\nDrawing color: ");
		printf(color_str);
	}
}

int color_switch(){
	int color = 0;

	// SW2 toggles red
	if((IORD(PIO_SW_BASE,0) & 0b0100) > 0)
		color += (0b11111 << 11);
	// SW1 toggles green
	if((IORD(PIO_SW_BASE,0) & 0b0010) > 0)
		color += (0b111111 << 5);
	// SW0 toggles blue
	if((IORD(PIO_SW_BASE,0) & 0b0001) > 0)
		color += 0b11111;

	return color;
}
/*
 * count.c
 *
 *  Created on: Oct 18, 2018
 *      Author: hiemenzpe
 */

#include "altera_avalon_pio_regs.h"
#include "system.h"
#include <stdio.h>
#include <math.h>
#include <unistd.h>

int hex_bit(int num, int bit);

int main() {
	printf("entered main");
	int count = 0;

	while(1){
		IOWR(COUNT_PIO_BASE, 0,
				(hex_bit(count, 1) << 8)+hex_bit(count,0));

		count++;
		if(count >= 256)
			count = 0;

		usleep(333333);
	};

	return 0;
}

int hex_bit(int num, int bit){

	int div = (int) pow(16,bit);
	int digit = (num / div) % 16;

	int hex;
	switch(digit){
		case 0:  hex = 0b11000000; break;
		case 1:  hex = 0b11111001; break;
		case 2:  hex = 0b10100100; break;
		case 3:  hex = 0b10110000; break;
		case 4:  hex = 0b10011001; break;
		case 5:  hex = 0b10010010; break;
		case 6:  hex = 0b10000010; break;
		case 7:  hex = 0b11111000; break;
		case 8:  hex = 0b10000000; break;
		case 9:  hex = 0b10011000; break;
		case 10: hex = 0b10001000; break;
		case 11: hex = 0b10000011; break;
		case 12: hex = 0b10100111; break;
		case 13: hex = 0b10100001; break;
		case 14: hex = 0b10000110; break;
		case 15: hex = 0b10001110; break;
		default: hex = 0b00111111; break;
	}

	return hex;
}

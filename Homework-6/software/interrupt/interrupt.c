/*
 * interrupt.c
 *
 *  Created on: Oct 23, 2018
 *      Author: hiemenzpe
 */

#include "system.h"
#include "altera_avalon_pio_regs.h"
#include "sys/alt_irq.h"
#include "alt_types.h"
#include <stdio.h>

void PIOA_isr(void* context);

void PIOA_setup();

volatile int PIOA_capture = 0;

int main(void){
	printf("entered main");
	PIOA_setup();
	while(1){
	};
}

void PIOA_isr(void* context){
	// cast context pointer to a volatile int pointer
	//
	// void pointer to global variable PIO_capture is re-cast
	//  as a volatile int pointer
	volatile int* PIOA_capture_ptr;
	PIOA_capture_ptr = (volatile int*) context;

	// dereference volatile int pointer to PIO_capture
	// i.e. save current switch positions to PIO_capture
	*PIO_capture_ptr = IORD(PIOA_BASE,0);

	// clear interrupts
	IOWR(PIOA_BASE,2,0x00);
}

void PIOA_setup(){
	// enable interrupts for all switches
	IOWR_ALTERA_AVALON_PIO_IRQ_MASK(PIOA_BASE, 0xFF);
	// clear interrupt reg
	IOWR_ALTERA_AVALON_PIO_EDGE_CAP(PIOA_BASE, 0x00);

	// cast global variable to context pointer
	//
	// address of global variable PIOA_capture of type
	//  volatile int is assigned to PIOA_capture_ptr
	void* PIOA_capture_ptr;
	PIOA_capture_ptr = (void*) &PIOA_capture;

	// register interrupt
	alt_ic_isr_register(
		PIOA_IRQ_INTERRUPT_CONTROLLER_ID,
		PIOA_IRQ,
		PIOA_isr,
		PIOA_capture_ptr,
		0x00
	);
}

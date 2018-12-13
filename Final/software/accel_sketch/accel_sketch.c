/*
 * accel_sketch.c
 *
 *  Created on: Oct 31, 2018
 *      Author: hiemenzpe
 *
 *  Etch-a-Sketch on VGA with:
 *    - Variable speed accelerometer drawing
 *    - Button enabled drawing/quick erasing
 *    - Color selection via SW 0-8
 *    - Rainbow mode toggled with SW9
 */

#include "system.h"
#include "altera_up_avalon_video_pixel_buffer_dma.h"
#include "altera_up_avalon_accelerometer_spi.h"
#include "altera_avalon_timer_regs.h"
#include "altera_avalon_pio_regs.h"
#include "sys/alt_irq.h"
#include "alt_types.h"
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <math.h>

// function prototypes
int colorCalc(void);
void cursorMove(alt_up_accelerometer_spi_dev* accel_p);
int mapi(float input, float inMin, float inMax, float outMin, float outMax);
float mapf(float input, float inMin, float inMax, float outMin, float outMax);
void timer_0_isr(void* context);

// global variables
// coordinate grid variables
int x = 160;
int y = 120;

// x and y as floats, used for accelerometer calculations
float xFloat = 160;
float yFloat = 120;

// color to be drawn next
int colorToDraw = 0;

// flag to do next rainbow calculation
int rainbowFlag = 0;
// current rainbow position in period, if enabled
// period is split into 60 parts in color calculate function
int tRainbow = 0;

// timer flag for constant time between frames
volatile int timeoutFlag = 0;

int main(){
  printf("entered main");

  // create pointer to pixel buffer
  alt_up_pixel_buffer_dma_dev* pixel_buffer;
  pixel_buffer = alt_up_pixel_buffer_dma_open_dev("/dev/video_pixel_buffer_dma_0");

  // create pointer to accelerometer
  alt_up_accelerometer_spi_dev* accel;
  accel = alt_up_accelerometer_spi_open_dev("/dev/accelerometer_spi_0");

  // initialize timer settings
  IOWR_ALTERA_AVALON_TIMER_CONTROL(TIMER_0_BASE, 0x7);

  // initialize timer IRQ with legacy function
  void* timeoutFlag_ptr = (void*) &timeoutFlag;
  alt_irq_register(
    TIMER_0_IRQ,
    timeoutFlag_ptr,
    timer_0_isr
  );

  // initial screen clear
  alt_up_pixel_buffer_dma_clear_screen(pixel_buffer,0);
  usleep(20000);

  while(1){
    // wait for timeout to prevent flickering
    if(timeoutFlag == 1){
      // calculate color to draw
      colorToDraw = colorCalc();

      // KEY1 allows quick erasing without changing SW
      if(IORD(PIO_PUSH_BASE,0) == 0b01){
        // calculate next cursor position
        cursorMove(accel);

        // move on-screen cursor if position has changed
        if((roundf(xFloat) != x) || (roundf(yFloat) != y)){
          // fill previous position with black; erase
          alt_up_pixel_buffer_dma_draw_box(pixel_buffer,x,y,x,y,0x0000,0);

          // adjust grid coords to follow floating coords
          x = roundf(xFloat);
          y = roundf(yFloat);

          // redraw cursor
          alt_up_pixel_buffer_dma_draw_box(pixel_buffer,x,y,x,y,0xFFFF,0);
        }
      }

      // KEY0 allows drawing calculated color
      if(IORD(PIO_PUSH_BASE,0) == 0b10){
        // calculate next cursor position
        cursorMove(accel);

        // move on-screen cursor if position has changed
        if((roundf(xFloat) != x) || (roundf(yFloat) != y)){
          // fill previous position with color to be drawn
          alt_up_pixel_buffer_dma_draw_box(pixel_buffer,x,y,x,y,colorToDraw,0);

          // adjust grid coords to follow floating coords
          x = roundf(xFloat);
          y = roundf(yFloat);

          // redraw cursor
          alt_up_pixel_buffer_dma_draw_box(pixel_buffer,x,y,x,y,0xFFFF,0);

          // set rainbow flag
          rainbowFlag = 1;
        }
      }

      // both KEYs simultaneously clears screen after holding for 2 sec
      if(IORD(PIO_PUSH_BASE,0) == 0b00){
        usleep(2000000);
        if(IORD(PIO_PUSH_BASE,0) == 0b00){
          alt_up_pixel_buffer_dma_clear_screen(pixel_buffer,0);
          usleep(20000);

          // redraw cursor
          alt_up_pixel_buffer_dma_draw_box(pixel_buffer,x,y,x,y,0xFFFF,0);
        }
      }

      // reset timer flag
      timeoutFlag = 0;
    }
  }
}

//////////////////////////////////////
// Calculates the next color to be drawn on the screen
//  - Displays next color to be drawn on the screen in hex using SSDs
//  - Handles rainbow color calculations
int colorCalc(){
  // input color variables w/ assignment based on SW0-8
  int redIn = (((IORD(PIO_SW_BASE,0) & 0x100) >> 8)* 128) +
              (((IORD(PIO_SW_BASE,0) & 0x080) >> 7)* 85) +
              (((IORD(PIO_SW_BASE,0) & 0x040) >> 6)* 42);
  int greenIn = (((IORD(PIO_SW_BASE,0) & 0x020) >> 5)* 128) +
                (((IORD(PIO_SW_BASE,0) & 0x010) >> 4)* 85) +
                (((IORD(PIO_SW_BASE,0) & 0x008) >> 3)* 42);
  int blueIn = (((IORD(PIO_SW_BASE,0) & 0x004) >> 2)* 128) +
               (((IORD(PIO_SW_BASE,0) & 0x002) >> 1)* 85) +
               (((IORD(PIO_SW_BASE,0) & 0x001)     )* 42);

  // output color variables
  int red;
  int green;
  int blue;

  // rainbow color calculation
  if((IORD(PIO_SW_BASE,0) & 0x200) > 0){
    // additionally check for position change to avoid skipping colors
    if(rainbowFlag == 1){
      red =   round(sin(0.105*tRainbow)         * ((float)redIn/2) + ((float)redIn/2));
      green = round(sin(0.105*tRainbow + 2.094) * ((float)greenIn/2) + ((float)greenIn/2));
      blue =  round(sin(0.105*tRainbow + 4.188) * ((float)blueIn/2) + ((float)blueIn/2));

      // increment and bind rainbow position
      // restricts tRainbow to a single period
      tRainbow++;
      if(tRainbow >= 60)
        tRainbow = 0;

      // send hex color codes to SSDs every rainbow calculation
      IOWR(PIO_HEX_BASE, 0, ((red << 16) + (green << 8) + blue));

      // reset rainbow flag
      rainbowFlag = 0;
    }
    // if no position change, keep current color
    else{
      return colorToDraw;
    }
  }


  else{
    // direct assignment without rainbow mode
    red = redIn;
    green = greenIn;
    blue = blueIn;

    // send hex color codes to SSDs every frame if not in rainbow mode
    IOWR(PIO_HEX_BASE, 0, ((red << 16) + (green << 8) + blue));
  }

  // map/convert hex color codes to 16 bit
  // red to 5 bits
  red = mapi(red,0,255,0,0x1F);
  // green to 6 bits
  green = mapi(green,0,255,0,0x3F);
  // blue to 5 bits
  blue = mapi(blue,0,255,0,0x1F);

  // return final color
  return (red << 11) + (green << 5) + blue;
}

//////////////////////////////////////////////
// Moves the cursor independent of drawing colors
void cursorMove(alt_up_accelerometer_spi_dev* accel_p){
  // capture accelerometer input
  int xAccel;
  int yAccel;
  alt_up_accelerometer_spi_read_x_axis(accel_p, &xAccel);
  alt_up_accelerometer_spi_read_y_axis(accel_p, &yAccel);

  // change floating coords based on accelerometer input
  // max movement speed is 1 px/frame = 20 px/s
  xFloat -= mapf(xAccel,-220,220,-1,1);

  yFloat += mapf(yAccel,-220,220,-1,1);



  // set floating coord boundaries
  if(xFloat <= -0.5)
    xFloat = -0.49;
  if(xFloat >= 319.5)
    xFloat = 319.49;

  if(yFloat <= -0.5)
    yFloat = -0.49;
  if(yFloat >= 238.5)
    yFloat = 238.49;
}

/////////////////////////////////////////////
// Maps a number to an integer range
int mapi(float input, float inMin, float inMax, float outMin, float outMax){
  // bind input
  if(input < inMin)
    input = inMin;
  else if(input > inMax)
    input = inMax;

  // mapping function
  float mapped = outMin + ((outMax - outMin) / (inMax - inMin)) * (input - inMin);

  // return rounded int
  return (int) roundf(mapped);
}

/////////////////////////////////////////////
// Maps a number to a floating point number range
float mapf(float input, float inMin, float inMax, float outMin, float outMax){
  // bind input
  if(input < inMin)
    input = inMin;
  else if(input > inMax)
    input = inMax;

  // mapping function
  float mapped = outMin + ((outMax - outMin) / (inMax - inMin)) * (input - inMin);

  // return float
  return mapped;
}
/////////////////////////////////////////////
// Timer interrupt
//  Activates every 50 ms = 3 frames
//  Creates effective 20 fps
void timer_0_isr(void* context){
  // set timeout flag
  volatile int* timeoutFlag_ptr = (volatile int*) context;
  *timeoutFlag_ptr = 1;

  // clear interrupt
  IOWR_ALTERA_AVALON_TIMER_STATUS(TIMER_0_BASE, 0);
}

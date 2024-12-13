// #################################################################################################
// # << NEORV32 - Blinking LED Demo Program >>                                                     #
// # ********************************************************************************************* #
// # BSD 3-Clause License                                                                          #
// #                                                                                               #
// # Copyright (c) 2021, Stephan Nolting. All rights reserved.                                     #
// #                                                                                               #
// # Redistribution and use in source and binary forms, with or without modification, are          #
// # permitted provided that the following conditions are met:                                     #
// #                                                                                               #
// # 1. Redistributions of source code must retain the above copyright notice, this list of        #
// #    conditions and the following disclaimer.                                                   #
// #                                                                                               #
// # 2. Redistributions in binary form must reproduce the above copyright notice, this list of     #
// #    conditions and the following disclaimer in the documentation and/or other materials        #
// #    provided with the distribution.                                                            #
// #                                                                                               #
// # 3. Neither the name of the copyright holder nor the names of its contributors may be used to  #
// #    endorse or promote products derived from this software without specific prior written      #
// #    permission.                                                                                #
// #                                                                                               #
// # THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS   #
// # OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF               #
// # MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE    #
// # COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,     #
// # EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE #
// # GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED    #
// # AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING     #
// # NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED  #
// # OF THE POSSIBILITY OF SUCH DAMAGE.                                                            #
// # ********************************************************************************************* #
// # The NEORV32 Processor - https://github.com/stnolting/neorv32              (c) Stephan Nolting #
// #################################################################################################


/**********************************************************************//**
 * @file blink_led/main.c
 * @author Stephan Nolting
 * @brief Simple blinking LED demo program using the lowest 8 bits of the GPIO.output port.
 **************************************************************************/

#include <neorv32.h>


/**********************************************************************//**
 * @name User configuration
 **************************************************************************/
/**@{*/
/** UART BAUD rate */
#define BAUD_RATE 19200
/** Use the custom ASM version for blinking the LEDs defined (= uncommented) */
//#define USE_ASM_VERSION
/**@}*/


/**********************************************************************//**
 * ASM function to blink LEDs
 **************************************************************************/
extern void blink_led_asm(uint32_t gpio_out_addr);

/**********************************************************************//**
 * C function to blink LEDs
 **************************************************************************/
void blink_led_c(void);


/**********************************************************************//**
 * Main function; shows an incrementing 8-bit counter on GPIO.output(7:0).
 *
 * @note This program requires the GPIO controller to be synthesized (the UART is optional).
 *
 * @return 0 if execution was successful
 **************************************************************************/
int main() {

  // init UART (primary UART = UART0; if no id number is specified the primary UART is used) at default baud rate, no parity bits, ho hw flow control
  neorv32_uart0_setup(BAUD_RATE, PARITY_NONE, FLOW_CONTROL_NONE);

  // check if GPIO unit is implemented at all
  if (neorv32_gpio_available() == 0) {
    neorv32_uart0_print("Error! No GPIO unit synthesized!\n");
    return 1; // nope, no GPIO unit synthesized
  }

  // capture all exceptions and give debug info via UART
  // this is not required, but keeps us safe
  neorv32_rte_setup();

  // say hello
  neorv32_uart0_print("Blinking LED demo program\n");

  blink_led_c();

  return 0;
}


/**********************************************************************//**
 * C-version of blinky LED counter
 **************************************************************************/
void blink_led_c(void) {
  int M1[6]={1*16,          //Secuencia de estados de los leds en el modo de funcionamiento 1
              2*16,
              4*16,
              8*16,
              4*16,
              2*16
  };

  int M2[5]={0*16,          //Secuencia de estados de los leds en el modo de funcionamiento 2
              1*16,
              3*16,
              7*16,
              15*16
  };
  char estado=0;
  char subest=0;
  uint64_t port_data;
  char bot1=0;
  char bot2=0;

  neorv32_gpio_port_set(0); // clear gpio output

  int cnt = 0;

  while (1) {
  port_data=neorv32_gpio_port_get();
  bot1=port_data & 0b01;                //Primer bit de gpio_i (Boton 1)
  bot2=(port_data & 0b10) >> 1;         //Segundo bit de gpio_i (Boton 2)

  //transicion de estado
  if(bot1 && !bot2){
    estado=0;
    subest=0;
    }
  if(!bot1 && bot2){
    estado=1;
    subest=0;
    }

    switch(estado){
      case 0:
        neorv32_gpio_port_set(M1[subest] & 0xF0); //Valor de modo funcionamiento 1 cada vez (segundo byte)
        if(subest<5) subest++;
        else subest=0;
        break;
      case 1:
        neorv32_gpio_port_set(M2[subest] & 0xF0); //Valor de modo funcionamiento 1 cada vez (segundo byte)
        if(subest<4) subest++;
        else subest=0;
        break;
    }
    //neorv32_gpio_port_set(cnt+=16 & 0xF0); // increment counter and mask for second byte
    neorv32_cpu_delay_ms(200); // wait 200ms using busy wait
  }
}

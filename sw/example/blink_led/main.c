// P1: BLINK_LED

// Librerias
#include <neorv32.h>

// Definiciones
#define BAUD_RATE 19200

// Inicializacion funcion encendido de leds
void blink_led_c(void);

// Funcion principal
int main()
{

  // Init UART (primary UART = UART0; if no id number is specified the primary UART is used) at default baud rate, no parity bits, ho hw flow control
  neorv32_uart0_setup(BAUD_RATE, PARITY_NONE, FLOW_CONTROL_NONE);

  // Check if GPIO unit is implemented at all
  if (neorv32_gpio_available() == 0)
  {
    neorv32_uart0_print("Error! No GPIO unit synthesized!\n");
    return 1; // Nope, no GPIO unit synthesized
  }

  // Capture all exceptions and give debug info via UART
  neorv32_rte_setup();

  // Inicio de programa
  neorv32_uart0_print("Blinking LED demo program\n");

  // Llamada a funcion encendido de leds
  blink_led_c();

  return 0;
}

// Funcion que realiza secuencia de leds dependiendo del boton pulsado
void blink_led_c(void)
{

  // Secuencia de estados de los leds en el modo de funcionamiento 1
  int M1[6] = {1 * 16,
               2 * 16,
               4 * 16,
               8 * 16,
               4 * 16,
               2 * 16};

  // Secuencia de estados de los leds en el modo de funcionamiento 2
  int M2[5] = {0 * 16,
               1 * 16,
               3 * 16,
               7 * 16,
               15 * 16};

  // Secuencia de estados de los leds en el modo de funcionamiento 3
  int M3[2] = {10 * 16,
               5 * 16};

  // Inicializacion estados y variables botones
  int estado = 0;
  int subest = 0;
  uint64_t port_data;
  char bot1 = 0;
  char bot2 = 0;
  char bot3 = 0;

  // Clear gpio output
  neorv32_gpio_port_set(0);

  // Bucle principal
  while (1)
  {
    // Lectura botones de la placa
    port_data = neorv32_gpio_port_get();
    bot1 = port_data & 0b001;        // Primer bit de gpio_i (Boton 1)
    bot2 = (port_data & 0b010) >> 1; // Segundo bit de gpio_i (Boton 2)
    bot3 = (port_data & 0b100) >> 2; // Tercer bit de gpio_i (Boton 3)

    // Eleccion de estado de funcionamiento dependiendo del boton
    if (bot1 && !bot2 && !bot3)
    {
      estado = 0;
      subest = 0;
    }
    if (!bot1 && bot2 && !bot3)
    {
      estado = 1;
      subest = 0;
    }
    if (!bot1 && !bot2 && bot3)
    {
      estado = 2;
      subest = 0;
    }

    // Maquina de estados para realizar una secuencia de leds u otra
    switch (estado)
    {
    case 0:
      neorv32_gpio_port_set(M1[subest] & 0xF0); // Valor de modo funcionamiento 1 cada iteracion (segundo byte de gpio)
      if (subest < 5)
        subest++; // Subestado de la secuencia
      else
        subest = 0;
      break;
    case 1:
      neorv32_gpio_port_set(M2[subest] & 0xF0); // Valor de modo funcionamiento 2 cada iteracion (segundo byte de gpio)
      if (subest < 4)
        subest++; // Subestado de la secuencia
      else
        subest = 0;
      break;
    case 2:
      neorv32_gpio_port_set(M3[subest] & 0xF0); // Valor de modo funcionamiento 3 cada iteracion (segundo byte de gpio)
      if (subest < 1)
        subest++; // Subestado de la secuencia
      else
        subest = 0;
      break;
    }

    // Wait 200ms using busy wait
    neorv32_cpu_delay_ms(200);
  }
}

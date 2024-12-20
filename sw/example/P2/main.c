// P2: KEYBOARD

// Librerias
#include <neorv32.h>

// Definiciones
#define BAUD_RATE 19200

// Inicializacion funcion teclado
void keyboard(void);

// F uncion principal
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
  neorv32_uart0_print("Keyboard demo program\n");

  // Llamada a funcion lectura del teclado
  keyboard();
}

// Funcion que lee las teclas del keyboard conectado y dice cual se ha pulsado
void keyboard(void)
{

  // Declaracion de variables del teclado (fila, columna, teclas existentes, teclas actual y anterior pulsadas)
  int fil = 0;
  int col = 0;
  char tecla[4][4] = {{'1', '2', '3', 'A'}, {'4', '5', '6', 'B'}, {'7', '8', '9', 'C'}, {'0', 'F', 'E', 'D'}};
  char tecla_act;
  char tecla_ant = '-';

  // Clear gpio output
  neorv32_gpio_port_set(0xFF);

  // Bucle principal
  while (1)
  {

    // Inicializacion de tecla pulsada a '0' en cada iteracion
    tecla_act = '-';

    // Se recorre todas las filas y columnas del teclado
    for (col = 0; col < 4; col++)
    {
      neorv32_gpio_pin_clr(col);
      for (fil = 4; fil < 8; fil++)
      {

        // Si se pulsa una tecla, esta se almacena
        if (neorv32_gpio_pin_get(fil) == 0)
        {
          tecla_act = tecla[7 - fil][3 - col];
        }
      }
      neorv32_gpio_pin_set(col);
    }

    // Si se ha pulsado una tecla y no es la anterior pulsada se imprime (Para evitar rebotes)
    if (tecla_act != '-' && tecla_act != tecla_ant)
    {
      neorv32_uart0_printf("Pulsada tecla %c\n", tecla_act);
    }

    // Actualizacion tecla anterior
    tecla_ant = tecla_act;
  }
}

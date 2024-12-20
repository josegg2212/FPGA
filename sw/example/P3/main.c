// P3: PERIFERICO WB

// Librerias
#include <neorv32.h>

// Definiciones
#define BAUD_RATE 19200

// Inicializacion funcion del periferico calculadora
void wb_calculadora(void);

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

  // Inicio programa
  neorv32_uart0_print("Calculadora demo program\n");

  // Bucle principal
  while (1)
  {

    // Llamada a funcion periferico calculadora
    wb_calculadora();
  }
}

// Funcion que utiliza el periferico de registros creado para realizar una calculadora con uart por teclado
void wb_calculadora(void)
{

  // Declaracion de variables calculadora y direccion base registros
  uint32_t operando1;
  uint32_t operando2;
  uint32_t operador;
  uint32_t resultado;
  uint32_t address = 0x90000000;

  // Solicitar el primer operando
  neorv32_uart0_printf("Ingrese el primer operando: \n");
  operando1 = (uint32_t)(neorv32_uart0_getc() - '0');  // Convertir de ASCII a entero
  neorv32_cpu_store_unsigned_word(address, operando1); // Guardar en memoria

  // Solicitar el segundo operando
  neorv32_uart0_printf("Ingrese el segundo operando: \n");
  operando2 = (uint32_t)(neorv32_uart0_getc() - '0');      // Convertir de ASCII a entero
  neorv32_cpu_store_unsigned_word(address + 4, operando2); // Guardar en memoria

  // Solicitar el operador
  neorv32_uart0_printf("Ingrese el operador (+: suma, -: resta, *: multiplicacion, /: division): \n");
  operador = (uint32_t)(neorv32_uart0_getc());
  neorv32_cpu_store_unsigned_word(address + 8, operador); // Guardar en memoria

  // Leer operandos y operador desde memoria
  operando1 = neorv32_cpu_load_unsigned_word(address);
  operando2 = neorv32_cpu_load_unsigned_word(address + 4);
  operador = neorv32_cpu_load_unsigned_word(address + 8);

  // Realizar la operación segun el operador
  switch (operador)
  {
  case '+': // Suma
    resultado = operando1 + operando2;
    break;
  case '-': // Resta
    resultado = operando1 - operando2;
    break;
  case '*': // Multiplicacion
    resultado = operando1 * operando2;
    break;
  case '/': // Division (con validacion)
    if (operando2 != 0)
    {
      resultado = operando1 / operando2;
    }
    else
    {
      resultado = 0xFFFFFFFF; // Resultado especial para division por cero
      neorv32_uart0_printf("Error: Division por cero\n");
    }
    break;
  default:                  // Operador no valido
    resultado = 0xFFFFFFFF; // Resultado especial para error
    neorv32_uart0_printf("Error: Operador no valido\n");
    break;
  }

  // Almacenar el resultado en memoria
  neorv32_cpu_store_unsigned_word(address + 12, resultado);

  // Leer resultado
  resultado = neorv32_cpu_load_unsigned_word(address + 12);

  // Mostrar el resultado
  neorv32_uart0_printf("Resultado: %u\n", resultado);
}

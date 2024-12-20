// P4: PROYECTO

// Librerias
#include <neorv32.h>

// Definiciones
#define BAUD_RATE 19200

// Inicializacion funciones de lectura por teclado y periferico calculadora (con leds)
uint32_t keyboard(void);
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
  neorv32_uart0_print("Project demo program\n");

  // Desactivar canales PWM
  neorv32_pwm_set(0, 0);
  neorv32_pwm_set(1, 0);
  neorv32_pwm_set(2, 0);
  neorv32_pwm_set(3, 0);

  // Configurar reloj PWM
  neorv32_pwm_setup(CLK_PRSC_64);

  // Bucle principal
  while (1)
  {

    // Llamada a funcion calculadora
    wb_calculadora();
  }
}

// Funcion que lee las teclas del keyboard conectado y devuleve cual se ha pulsado
uint32_t keyboard(void)
{

  // Declaracion de variables del teclado (fila, columna, teclas existentes, teclas actual y anterior pulsadas)
  uint32_t tecla_act = 0xFF;
  uint32_t tecla_ant = 0xFF;
  int fil = 0;
  int col = 0;
  uint32_t tecla[4][4] = {{0x1, 0x2, 0x3, 0xA}, {0x4, 0x5, 0x6, 0xB}, {0x7, 0x8, 0x9, 0xC}, {0x0, 0xF, 0xE, 0xD}};

  // Clear gpio output
  neorv32_gpio_port_set(0xFF);

  // Bucle principal del teclado
  while (1)
  {

    // Inicializacion de tecla pulsada a '0' en cada iteracion
    tecla_act = 0xFF;

    // Se recorre todas las filas y columnas del teclado
    for (col = 0; col < 4; col++)
    {
      neorv32_gpio_pin_clr(col);
      for (fil = 4; fil < 8; fil++)
      {

        // Si se pulsa una tecla, esta se almacena y se encienden los leds correspondientes al caracter en binario
        if (neorv32_gpio_pin_get(fil) == 0)
        {
          tecla_act = tecla[7 - fil][3 - col];
          if (tecla_act != 0xFF)
            neorv32_gpio_port_set(((int)(tecla_act) * 16) & 0xF0);
        }
      }
      neorv32_gpio_pin_set(col);
    }

    // Si se ha soltado una tecla y no es la anterior pulsada se devuelve (Para evitar rebotes)
    if (tecla_act == 0xFF && tecla_act != tecla_ant)
    {
      return tecla_ant;
    }

    // Actualizacion tecla anterior
    tecla_ant = tecla_act;
  }
}

// Funcion que utiliza el periferico de registros creado para realizar una calculadora con uart por teclado
void wb_calculadora(void)
{

  // Declaracion de variables calculadora, direccion base registros y canal pwm
  uint8_t pwm = 0;
  uint8_t ch = 0;
  uint32_t operando1 = 0;
  uint32_t operando2 = 0;
  uint32_t operando_in_reg = 0;
  uint32_t operador = 0;
  uint32_t recibido = 0;
  uint32_t resultado;
  uint32_t resultado_in_reg;
  uint32_t address = 0x90000000;

  // Solicitar operacion
  neorv32_uart0_printf("Ingrese el primer operando, el operador y el segundo operando y el enter 'E', en ese orden.\n");
  neorv32_uart0_printf("Operadores: A:+, B:-, C:*, D:/.\n");

  // Se espera a recibir todas las cifras del primer operando hasta operador
  while ((recibido = keyboard()) < 10)
  {
    operando_in_reg = operando_in_reg * 10 + recibido;
  }

  // Se imprime el operando 1
  neorv32_uart0_printf("Operando 1: %u.\n", operando_in_reg);
  neorv32_cpu_store_unsigned_word(address, operando_in_reg); // Guardar en memoria

  // Se imprime el operador
  neorv32_uart0_printf("Operador: %x.\n", recibido);
  neorv32_cpu_store_unsigned_word(address + 8, recibido); // Guardar en memoria

  // Se espera a recibir todas las cifras del segundo operando hasta enter
  operando_in_reg = 0;
  while ((recibido = keyboard()) < 10)
  {
    operando_in_reg = operando_in_reg * 10 + recibido;
  }

  // Se imprime el operando 2
  neorv32_uart0_printf("Operando 2: %u.\n", operando_in_reg);
  neorv32_cpu_store_unsigned_word(address + 4, operando_in_reg); // Guardar en memoria

  // Leer operandos y operador desde memoria
  operando1 = neorv32_cpu_load_unsigned_word(address);
  operando2 = neorv32_cpu_load_unsigned_word(address + 4);
  operador = neorv32_cpu_load_unsigned_word(address + 8);

  // Realizar la operacion segun el operador y cambiar canal pwm (cambiar servo)
  switch (operador)
  {
  case 10: // Suma (10=A=+)
    resultado_in_reg = operando1 + operando2;
    ch = 0;
    break;
  case 11: // Resta (11=B=-)
    resultado_in_reg = operando1 - operando2;
    ch = 1;
    break;
  case 12: // Multiplicacion (12=C=*)
    resultado_in_reg = operando1 * operando2;
    ch = 2;
    break;
  case 13: // Division (con validacion) (13=D=/)
    if (operando2 != 0)
    {
      resultado_in_reg = operando1 / operando2;
      ch = 3;
    }
    else
    {
      ch = 3;
      resultado_in_reg = 0xFFFFFFFF; // Resultado especial para division por cero
      neorv32_uart0_printf("Error: Division por cero\n");
    }
    break;
  default: // Operador no valido
    ch = 4;
    resultado_in_reg = 0xFFFFFFFF; // Resultado especial para error
    neorv32_uart0_printf("Error: Operador no valido\n");
    break;
  }

  // Mover servo segun operacion realizada
  pwm = 100;
  neorv32_pwm_set(ch, pwm);
  neorv32_cpu_delay_ms(1000);
  neorv32_pwm_set(ch, 0);

  // Almacenar el resultado en memoria
  neorv32_cpu_store_unsigned_word(address + 12, resultado_in_reg);

  // Leer resultado
  resultado = neorv32_cpu_load_unsigned_word(address + 12);

  // Mostrar el resultado
  neorv32_uart0_printf("Resultado: %u\n", resultado);
}

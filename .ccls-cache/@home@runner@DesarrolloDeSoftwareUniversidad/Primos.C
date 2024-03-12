#include <stdio.h>

int main() {
  int numero, divisor, primo = 1;

  // Leer el número
  printf("Ingrese un número: ");
  scanf("%d", &numero);

  // Validar si el número es menor o igual a 1
  if (numero <= 1) {
    primo = 0;
  } else {
    // Recorrer los divisores desde 2 hasta el número - 1
    for (divisor = 2; divisor < numero; divisor++) {
      if (numero % divisor == 0) {
        primo = 0;
        break;
      }
    }
  }

  // Imprimir el mensaje
  if (primo) {
    printf("El número %d si es primo.\n", numero);
  } else {
    printf("El número %d no es primo.\n", numero);
  }

  return 0;
}
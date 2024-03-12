#include <stdio.h>

int main() {
  int numero, num_invertido = 0;

  // Leer el número
  printf("Ingrese un número de 4 dígitos: ");
  scanf("%d", &numero);

  // Invertir el número
  while (numero > 0) {
    num_invertido = num_invertido * 10 + numero % 10;
    numero /= 10;
  }

  // Imprimir el número invertido
  printf("El número invertido es: %d\n", num_invertido);

  return 0;
}
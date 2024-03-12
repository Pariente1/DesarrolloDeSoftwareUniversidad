#include <stdio.h>

int main() {
  int numeros[10], i;

  // Leer los 10 números
  for (i = 0; i < 10; i++) {
    printf("Ingrese el número %d: ", i + 1);
    scanf("%d", &numeros[i]);
  }

  // Clasificar los números como pares o impares
  for (i = 0; i < 10; i++) {
    if (numeros[i] % 2 == 0) {
      printf("El número %d es par.\n", numeros[i]);
    } else {
      printf("El número %d es impar.\n", numeros[i]);
    }
  }

  return 0;
}
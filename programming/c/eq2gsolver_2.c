/* eq2gsolver_2.c */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

int main(void)
{
  float a, b, c, delta; /* int declaração de variável inteira, declaração de variável real, %d = mostra como decimal */

  printf("Entre com a: "); scanf("%f", &a);
  printf("Entre com b: "); scanf("%f", &b);
  printf("Entre com c: "); scanf("%f", &c);

  printf("\na = %3.2f \n", a);
  printf("b = %3.2f \n", b);
  printf("c = %3.2f \n\n", c);

  delta = b*b-4*a*c;

  if (delta >= 0){
    float x1 = (-b+sqrt(delta))/(2*a);
    float x2 = (-b-sqrt(delta))/(2*a);

    printf("delta = %3.2f \n\n", delta); /* %f = mostra como float; 0.3 quantidade de decimais na frente do tipo */
    printf("x1 = %3.2f \n", x1);
    printf("x2 = %3.2f \n\n", x2);
  }
  else { /* delta negativo */
    printf("delta = %0.2f \n\n", delta); /* %f = mostra como float; 0.3 quantidade de decimais na frente do tipo */
  }

  return 0;
}

/* eq2gsolver_2.c */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

int main(void)
{
  int a, b, c;
  float delta, x1, x2;
  /* int declaração de variável inteira, declaração de variável real, %d = mostra como decimal */

  printf("Entre com a: "); scanf("%d", &a);

  if (a != 0){
     printf("Entre com b: "); scanf("%d", &b);
     printf("Entre com c: "); scanf("%d", &c);

     delta = b*b-4*a*c;

     if(delta >= 0 ) {
      x1 = (-b+sqrt(delta))/2*a;
      x2 = (-b-sqrt(delta))/2*a;

      printf("\nEntre delta = %3.2f", delta);
      printf("\nEntre x1 = %3.2f", x1);
      printf("\nEntre x2 = %3.2f\n", x2);
     }
     else { 
      printf("\ndelta = %3.2f", delta);
     }
  }
  else {
      printf("\nErro[A=0]. Insira uma funcao do segundo grau.");
  }

  return 0;
}

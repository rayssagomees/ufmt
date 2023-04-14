/*eq2gsolver.c*/
  
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

int main(void)
{
  int a, b, c; /* declaração de variável inteira */
  float delta;  /* declaração de variável real */

  a = 1;
  b = -3;
  c = 2;

  delta = b*b-4*a*c;

  printf("a = %d \n", a); /* %d = mostra como decimal */
  printf("b = %d \n", b); /* %d = mostra como decimal */
  printf("c = %d \n", c); /* %d = mostra como decimal */
  printf("Delta = %f", delta); /* %f = mostra como float */

  return 0;
}

/*lazcponteiro1.c*/
  
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

int main(void)
{
  int a;
  int *pointer1;

  a = 5;
  printf("a = %d \n", a);
  printf("&a = %x \n", &a);

  pointer1 = &a; //variavel ponteiro recebe apenas endereços !
  printf("pointer1 = %d n", *pointer1);

  printf("\n Fim \n");
  return 0;
}
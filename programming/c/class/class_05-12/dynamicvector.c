/*lazcdynamicvector.c*/
  
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

int main(void)
{
  int *v;        //Ponteiro para um vetor de inteiros
  int count;

  printf("Entre com o tamanho do vetor: ");
  scanf("%d", &count);
  //v = (int *) calloc(count, sizeof(int));  //Aloca o vetor e zera as posições
  v = (int *) malloc(count*sizeof(int));     //Aloca o vetor

  for(int i=0; i < count; i++) {
    v[i] = i + 3;
  }
  for(int j=0; j < count; j++) {
    printf("  v[%d] = %d", j, v[j]);
  }

  free(v);  //Libera memoria

  printf("\n Fim \n");
  return 0;
}
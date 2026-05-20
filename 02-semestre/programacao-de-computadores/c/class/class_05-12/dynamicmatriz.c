/*lazcdynamicmatriz.c*/
  
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

int main(void)
{
  int **M;     //Matriz alocada dinamicamente
  int lin=2;
  int col=3;
  /* Aloca as linhas da matriz */
  M = (int **)calloc(lin, sizeof(int *));   //Um vetor com 'lin' ponteiros para int */
  /* Aloca as colunas para cada linha da matriz */
  for (int i = 0; i < lin; i++) {
    M[i] = (int*) calloc(col, sizeof(int)); //'lin' vetores com 'col' int */
  }
  for (int i=0; i < lin; i++) {
    for (int j=0; j < col; j++) {
      M[i][j] = i + j +2;  //Inicializa os dados...
    }
  }
  for (int i=0; i < lin; i++) {
    for (int j=0; j< col; j++) {
      printf("  M[%d][%d}=%d", i, j, M[i][j]);
    }
    printf("\n");
  }
  for (int i = 0; i < lin; i++) { //Libera as linhas
    free(M[i]);
  }
  free(M);  //Libera o vetor de ponteiros
  printf("\n Fim \n");
  return 0;
}
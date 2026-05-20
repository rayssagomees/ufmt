/*lazcmatrizex1.c*/
  
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

int main(void)
{
  int matrix0[2][3];
  int matrix1[2][3] = {{1, 3, 0}, {-1, 5, 9}};

  for (int i=0; i < 2; i++) {   //linhas
    for (int j=0; j < 3; j++) { //linhas
      printf("ml[%d,%d] = %d  ", i, j, matrix1[i][j]);
    }
    printf("\n"); //muda de linha
  }
  printf("\n Fim \n");
  return 0;
}
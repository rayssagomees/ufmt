/* read_1.c */
  
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

int main(void)
{
  FILE *archive2 = fopen("data.txt","r"); // lê o arquivo
  if(archive2 == NULL){
    printf("Não consigo abrir o arquivo.");
    exit(-1);
  }

  int ch;

  while (!feof(archive2)) {
    ch = getc(archive2);
    printf("%c", ch);
  }

  fclose(archive2);
  printf("\n Arquivo lido. \n");

  return 0;
}

/* file _1.c */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

int main(void)
{
FILE *archive1 = fopen("data.txt","w");

  if(archive1 == NULL){
     printf("Não consigo abrir o arquivo"); exit(-1);
  }

  char str1[] = "Olá mundo!";
  int count = strlen(str1);

  for(int i=0; i < count; i++) {
     putc(str1[i], archive1);
  }

  fclose(archive1);
  printf("\n Arquivo criado. \n");

return 0;
}

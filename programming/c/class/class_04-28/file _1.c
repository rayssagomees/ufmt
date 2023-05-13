/* file _1.c */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
                                                   
int main(void)
{
  int a;
  char c;

  FILE *archive1 = fopen("data.txt","w"); // declara e cria o arquivo
  // w = write, * variável de arquivo

  if(archive1 == NULL){
     printf("Não consigo abrir o arquivo.");
     exit(-1); // sai, deu certo = 0, deu errado = -1
  }

  char str1[] = "Olá mundo!"; // str1 é uma variável vetor, ou seja, frase
  int count = strlen(str1);

  for(int i=0; i < count; i++) {
     putc(str1[i], archive1); // coloca coisas dentro do arquivo
  }

  fclose(archive1);
  printf("\n Arquivo criado. \n");

  return 0;
}

/*lazcmainexample.c*/
  
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

int main(int argc, char *argv[])
{
    int i;

    printf("count param = %d \n", argc);

    for(i = 0; i < argc; i++) {  //i = 1 para pular o nome do executavel
      printf("%s\n", argv[i]);
    }
    return 0;
}
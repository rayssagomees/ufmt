/*lazcvectorex1.c*/
  
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

int main(void)
{
    int vector1[4];
    int vector2[] = {10, 11, 12, 13, 14};
    float vector3 [2];
    char vector4[] = "Hello world!";
    char *vector5 = "Hello wordl!";

    printf("v4[0] = %c \n", vector4[0]);
    printf("v4[1] = %c \n", vector4[1]);
    printf("\n");

    printf("v5[0] = %c \n", vector5[0]);
    printf("v5[1] = %c \n", vector5[1]);
    printf("\n");

    printf("&v4 = %x \n", &vector4);
    printf("&v4 = %x \n", &vector4[0]);

    printf("\n");
    printf("&v5 = %x \n", &vector5);   //Endereço "Fixo"...
    printf("\n");
    printf("&v5 = %x \n", &vector5[0]);//Endereço da primeira caixinha
    printf("&v5 = %x \n", &vector5[1]);//Endereço da segunda caixinha
    printf("&v5 = %x \n", &vector5[2]);//Endereço da terceira caixinha

    /*
       for(int i=0; i < 4; i++) {
          printf("Entre com v[%d]= ", i);
          scanf("%d", &vector1[i]);
        }

       vector3 [0]= 2,78;
       vector3 [1]= 4,61;

      */
      printf("\n FIM \n");
      return 0;
}
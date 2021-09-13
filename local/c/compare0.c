#include <stdio.h>

int main(void){
    /*int i;
    int j;*/

    printf("i: ");
    int i = scanf("%i", &i);
    printf("j: ");
    int j = scanf("%i", &j);

    if (i == j)
    printf("same\n");
    else
    printf("different\n");
    
}

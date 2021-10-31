#include <stdio.h>
#include <stdlib.h>

int main(void){
    int m;
    int *a;
    int *b = malloc(sizeof(int));
    a = &m;
    a = b;
    m = 10;
    *b = m + 2;
    free(b);
    *a = 11;

    printf("%i\n", *a);
}
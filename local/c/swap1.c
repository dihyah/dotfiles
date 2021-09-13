#include <stdio.h>

void swap(int *a, int *b);

int main(void){
    int x = 1;
    int y = 2;

    printf("x is %i, y is %i\n", x, y);
    printf("x is %p, y is %p\n", &x, &y);
    swap(&x, &y); //swap the address of x and y
    printf("x is %i, y is %i\n", x, y);
    printf("x is %p, y is %p\n", &x, &y);
}

//swap the actual value of a, b(x, y) a la *
void swap(int *a, int *b){
    int tmp = *a;
    *a = *b;
    *b = tmp;
}

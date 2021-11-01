#include <stdio.h>

void swap0(int x, int y);
void swap1(int *x, int *y);

int main(void){
    int a = 1;
    int b = 2;

    printf("a is %i, b is %i\n", a, b);
    swap0(a, b);
    printf("a is %i, b is %i\n", a, b);

    printf("\n");
    int c = 3;
    int d = 4;

    printf("c is %i, d is %i\n", c, d);
    printf("c is %p, d is %p\n", &c, &d);
    swap1(&c, &d); //swap the address of x and y
    printf("c is %i, d is %i\n", c, d);
    printf("c is %p, d is %p\n", &c, &d);
}

/*swap function did occured but only as copies.
Thus, no manipulation on the original values displayed.*/
void swap0(int x, int y){
    int tmp = x;
    x = y;
    y = tmp;
}

//swap the actual value of a, b(x, y) a la *
void swap1(int *x, int *y){
    int tmp = *x;
    *x = *y;
    *y = tmp;
}


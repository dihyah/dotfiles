#include<stdio.h>

void say_hi(void);
int square(int n)

int main(void) {
    int age = 27;
    say_hi();
    int m = square(2);
    printf("my age is %i & %i!\n", age, m);
}

void say_hi(void) {
    printf("Hello, ");
}

int square(int n) {
    return n * n;
}

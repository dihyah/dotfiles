#include <stdio.h>

int main()
{
    int a[] = {1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024};

    printf("%lu\n", sizeof(a) / sizeof(a[0]));
}
#include <stdio.h>
#include <stdlib.h>

int main(void){
  //malloc
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

  //sizeof
  int a[] = {1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024};

  printf("%lu\n", sizeof(a) / sizeof(a[0]));

  //memory
  int *x = malloc(10 * sizeof(int));
  x[10] = 0;
}


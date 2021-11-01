#include<stdio.h>

int main(void){
  int n;

  printf("Enter anumber for n: ");
  scanf("%i", &n);

  for (int i = 1; i <= n; i++){
    for (int j = 1; j <= i; j++){
      if (i-1 == j)
        printf("*");
      else
        printf("%i", j);
    }

    printf("\n");
  }
}

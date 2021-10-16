#include<stdio.h>
#include<string.h>

int main(void){
  char input[4];

  scanf("%s", input);
  //printf("%li\n", strlen(input));

  for(int i = 0; i < strlen(input); i++){
    printf("Field%i: %c\n", i+1, input[i]);
  }

  int k = 0;
  for (int j = strlen(input)-1; j >= 0; j--){
    printf("Field%i: %c\n", ++k, input[j]); 
  }
}

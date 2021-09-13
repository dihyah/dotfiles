#include <stdio.h>

int main(void){
    //get two strings
    char *s;
    char *t;

    printf("s: ");
    scanf("%s", s);
    printf("t: ");
    scanf("%s", t);

    //compare two strings
    if (s == t)
        printf("same\n");
    else
        printf("different\n");
}

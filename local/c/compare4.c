#include <ctype.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main(void){
    char *s;
    printf("s: ");
    scanf("%s", s);

    char *t = malloc(strlen(s) + 1);

    strcpy(t, s);
    t[0] = toupper(t[0]);

    printf("s= %s\n", s);
    printf("t= %s\n", t);
}

#include <stdio.h>
#include <ctype.h>

int main(void){
    char *s;
    char *t = s;

    printf("s: ");
    scanf("%s", s);
    printf("t: ");
    scanf("%s", t);

    t[0] = toupper(t[0]);

    printf("s: %s\n", s);
    printf("t: %s\n", t);
}
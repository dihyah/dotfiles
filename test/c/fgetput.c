#include <stdio.h>

//fgetc(<file pointer>);
int main(void){
    //opens file
    FILE *file = fopen("phonebook.csv", "r");
    FILE *copy = fopen("cp.txt", "w");

    //copy char from file
    char c;
    while((c = fgetc(file)) != EOF){
        printf("%c", c);
        fputc(c, copy);
    }
    
    //close all files
    fclose(file);
    fclose(copy);
}
#include <stdio.h>
#include <string.h>

int main(void){
    //Opens file
    FILE *file = fopen("phonebook.csv", "a");

    //get strings from user
    char name[20];
    char number[20];
    printf("Name: ");
    scanf("%s", name);
    printf("Number: ");
    scanf("%s", number);

    //print(write) strings to file
    fprintf(file, "%s(%s)\n", name, number);

    //closes file
    fclose(file);
}
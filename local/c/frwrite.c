#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main(void){

    FILE *file = fopen("phonebook.csv", "r");
    FILE *copy = fopen("cp.txt", "w");

    char c;
    //fread(<buffer, <size>, <qty>, <file pointer>);
    while((c = fread(&c, sizeof(char), 10, file)) != EOF){
        fwrite(&c, sizeof(char), 10, copy);
    }
    fclose(file);
}

/*
save on stack memory
int arr[10];
fread(arr, sizeof(int), 10, file ponter);

use malloc to save on heap mem
double *arr = malloc(sizeof(double) * 80);
fread(arr, sizeof(double), 80, file pointer);
*/

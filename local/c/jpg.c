#include <stdio.h>

int main(int argc, char *argv[]){
    // Check usage
    if (argc != 2){
        return 1;
    }

    // Open file
    FILE *file = fopen(argv[1], "r");
    if (!file){
        printf("No file found.\n");
        return 1;
    }

    // Read first three bytes
    unsigned char bytes[3];
    //fread(buffer, size, qty, pointer);)
    fread(bytes, 3, 1, file);

    // Check first three bytes
    if (bytes[0] == 0xff && bytes[1] == 0xd8 && bytes[2] == 0xff)
        printf("Maybe an image\n");
    else
        printf("Not an image\n");

    // Close file
    fclose(file);
}
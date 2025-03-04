#include <stdio.h>

int main (void) {
    
    printf("size of char : %zu\n", sizeof(char));
    printf("size of unsigned char : %zu\n", sizeof(unsigned char));
    printf("size of short int : %zu\n", sizeof(short int));
    printf("size of int : %zu\n", sizeof(int));
    printf("size of long int : %zu\n", sizeof(long int));
    printf("size of int * : %zu\n", sizeof(int *));
    printf("size of float : %zu\n", sizeof(float));
    printf("size of double : %zu\n", sizeof(double));
    printf("size of 1234LL : %zu\n", sizeof(1234LL));

    return 0;
}
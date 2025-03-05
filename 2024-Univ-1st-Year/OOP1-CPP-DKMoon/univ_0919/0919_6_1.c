#include <stdio.h>
#include <stdlib.h>

int main (void) {

    int i;
    int number;
    
    printf("How many? ");
    scanf("%d", &number);

    int * array = (int *) malloc(sizeof(int) * number);

    for (i = 0; i < number; i++) {
        if (scanf("%d", &array[i]) == EOF) {
            number = i;
            break;
        }
    }
    for (int i = 0; i < number; i++) {
        printf("%d-th number: %d\n", i+1, array[i]);
    }
    free(array);

    return 0;
}
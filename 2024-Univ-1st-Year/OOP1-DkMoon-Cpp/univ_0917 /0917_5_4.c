#include <stdio.h>
int main (void) {
    int array[] = {1,2,3};
    int *ptr = array;

    // printf("%d\n", *ptr++);
    printf("%d\n", (*ptr)++);

}
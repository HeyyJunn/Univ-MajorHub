#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void * myrealloc (void *ptr, size_t old_size, size_t new_size) {
    int * newarray = (int *)malloc(new_size);
    memcpy(newarray, ptr, old_size < new_size ? old_size : new_size);
    free(ptr);
    return newarray;
}
int main (void) {
    int *ptr = malloc(sizeof(int) * 3);
    for (int i = 0; i < 3; ++i) { 
        ptr[i] = 100 + i;
    }
    ptr = myrealloc(ptr, sizeof(int) * 3, sizeof(int) * 4);
    printf("ptr[2]: %d\n", ptr[2]);
 
    ptr = myrealloc(ptr, sizeof(int) * 4, sizeof(int) * 2);
    printf("ptr[1]: %d\n", ptr[1]);

    free(ptr);
    return 0;
}


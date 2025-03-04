#include <stdio.h>

int main (void) {

    int n = 0;
    int l = 0;
    char c;
    
    while ((c = getchar()) != EOF) {
        ++n;
        if (c == '\n') {
            ++l;
        }
    }
    printf("characters: %d\n", n);
    printf("lines: %d\n", l);

    return 0;
}
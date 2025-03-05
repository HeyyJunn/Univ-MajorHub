#include <stdio.h>

int strlen (char * str) {
    int i = 0;
    while (str[i] != '\0') {
        ++i;
    }
    return i;
}

int main (void) { 
    printf("%d", strlen("Hello, World"));
    return 0;
}
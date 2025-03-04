#include <stdio.h>

char *strcpy(char *dest, char *src) {
    int i = 0;
    while (src[i] != '\0') {
        dest[i] = src[i];
        ++i;
    }
    dest[i] = '\0';
    return dest;
}
int main (void) {

    char buf[1024];
    char *ptr = "OK";

    strcpy(buf, "Hello");
    printf("%s\n", buf);

    strcpy(buf, ptr);
    printf("%s\n", buf);

    return 0;
}
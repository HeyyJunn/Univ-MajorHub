#include <stdio.h>
int main(void) {

    int c;
    return ((c = getchar()) != '\n' && c != EOF) ? 1 : 0;

}
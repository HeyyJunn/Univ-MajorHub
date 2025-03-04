#include <stdio.h>
int main (void) {

    int num = 0;
    int else_num = 0;
    char c;
    while ((c = getchar()) != EOF) {
        switch (c) {
        case 48:
        case 49:
        case 50:
        case 51:
        case 52:
        case 53:
        case 54:
        case 55:
        case 56:
        case 57:
            ++num;
            break;
        default:
            ++else_num;
            break;
        }
    }
    printf("%d %d", num, else_num);

    return 0;
}
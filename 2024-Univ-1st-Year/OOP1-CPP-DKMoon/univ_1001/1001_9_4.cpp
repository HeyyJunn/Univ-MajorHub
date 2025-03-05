#include <iostream>
using namespace std;

int main (void) {

    char str[] = "hello";

    for (char element : str) {
        if (element == '\0') 
            break;
        cout << char(element - 32);
    }
    cout << endl;

    return 0;
} 
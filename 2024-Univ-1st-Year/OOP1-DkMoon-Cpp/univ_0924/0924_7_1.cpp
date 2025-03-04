#include <iostream>
using namespace std;

int main (void) {
    int width;
    int height;

    cout << "Enter width: ";
    cin >> width;
    cout << "Enter height: ";
    cin >> height;
    if ( !( width >= 0 && height >= 0)  ) {
        cout << "Invalid input";
    } else {
        cout << "Area is " << width * height;
    }

    return 0;
}
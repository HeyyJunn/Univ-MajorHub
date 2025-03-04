#include <iostream>
using namespace std;

int main (void) {

    int numPositives = 0;
    int array[] = { 1, 0, -1, 2, -2};

    auto filter = [&numPositives] (int integer) {
        if (integer > 0) numPositives++;
    };

    for (const auto &element : array) {
        filter(element);
    }
    cout << numPositives << endl;

    return 0;
}
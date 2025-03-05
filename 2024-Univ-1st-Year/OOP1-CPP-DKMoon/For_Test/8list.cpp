#include <iostream>
#include <list>
using namespace std;

int main (void) {

    list<int> l {5,9,1,3,3};
    auto descending = [](const int &a, const int &b) -> bool {
        return a > b;
    };
    l.sort(descending);
    for (const auto &e : l) {
        cout << e << endl;
    }
}
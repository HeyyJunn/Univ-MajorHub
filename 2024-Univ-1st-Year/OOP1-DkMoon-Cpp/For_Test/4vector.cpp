#include <iostream>
#include <vector>
using namespace std;

int main (void) {

    vector<int> v {1,2,3,4,5};
    auto it = v.cbegin();
    advance(it, 2);
    for (; it != v.cend(); ++it) {
        cout << *it << endl;
    } 
}
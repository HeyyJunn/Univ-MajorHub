#include <iostream>
#include <memory>
#include <string>
using namespace std;

int main (void) {

    string * p = new string{"hello"};
    shared_ptr<string> sp{p};

    cout << *sp << endl; // hello
    cout << sp->length() << endl; // 5

    sp.reset(); // sp 는 이제 nullptr
    cout << sp.get() << endl; // 0

    return 0;
}
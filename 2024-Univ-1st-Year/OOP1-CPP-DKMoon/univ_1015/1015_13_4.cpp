#include <iostream>
using namespace std;

class P {
public:
    P() { cout << "P ctor\n"; }
    ~P() { cout << "P dtor\n"; }
};

class M {
public:
    M() { cout << "M ctor\n"; }
    ~M() { cout << "M dtor\n"; }
};

class C : public P {
public:
    C() { cout << "C ctor\n"; }
    ~C() { cout << "C dtor\n"; }
    M m;
};

int main() {
    C c;
    return 0;
}

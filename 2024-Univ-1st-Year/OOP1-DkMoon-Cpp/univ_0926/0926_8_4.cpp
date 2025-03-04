#include <iostream>
using namespace std;

class A {
public:
    A() { cout << "A ctor\n"; }
    ~A() { cout << "A dtor\n"; }
};

class B {
public:
    B() { cout << "B ctor\n"; }
    ~B() { cout << "B dtor\n"; }
};

class C {
public:
    C() { cout << "C ctor\n"; }
    ~C() { cout << "C dtor\n"; }

private:
    A a;
    B b;
};

int main(void) {
    C c;
    return 0;
}
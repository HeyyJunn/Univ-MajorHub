#include <iostream>
#include <typeinfo>
using namespace std;

class A {
public:
    virtual void f() {}
};

class B : public A {};

int main (void) {

    A a;
    try {
        B &b = dynamic_cast<B &>(a);
    } catch (const bad_cast &e) {
        cout << e.what() << endl;
    }
    return 0;
}
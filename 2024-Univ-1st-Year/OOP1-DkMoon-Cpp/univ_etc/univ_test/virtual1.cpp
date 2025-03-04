#include <iostream>
using namespace std;

class Parent {
public:
    virtual void f() const { cout << "P const" << endl; }
    virtual void f() { cout << "P non-const" << endl; } 
};
class Child : public Parent {
public:
    // void f() const { cout << "Child" << endl; }
    void f() { cout << "Child" << endl; }

};
int main (void) {
    Child c;
    c.f();

    Parent& p = c;
    p.f();

    const Parent& cp = c;
    cp.f();

    return 0;
}
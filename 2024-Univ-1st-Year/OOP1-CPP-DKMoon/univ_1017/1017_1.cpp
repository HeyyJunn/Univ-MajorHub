#include <iostream>
using namespace std;

class GrandParent {
public:
    virtual void f() { cout << "GrandParent" << endl; }
};
class Parent : public GrandParent {
public:
    void f() {cout << "parent" << endl; }
};
class Child : public Parent {
public:
    void f() { cout << "Child" << endl; }
};
int main (void ) {
    Child c;
    c. f();
    
    Parent &ref = c;
    ref.f();

    Parent *ptr = &c;
    ptr -> f();

    return 0;
}
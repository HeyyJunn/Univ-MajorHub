#include <iostream>
using namespace std;

class Parent {
public:
    virtual void f() const { cout << "const Parent" << endl; }
    virtual void f() { cout << "Parent" << endl; }
};
class Child : public Parent {
public:
    void f() const { cout << "Child" << endl; }
};
int main (void ) {
    Child c;
    c. f();
    
    Parent &ref = c;
    ref.f();

    const Parent &ref2 = c;
    ref2.f();

    return 0;
}
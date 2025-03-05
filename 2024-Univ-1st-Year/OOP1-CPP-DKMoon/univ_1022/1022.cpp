#include <iostream>
using namespace std;

class Parent {};

class Child: public Parent {
public:
    void f() { cout << "Child1";}
};
void f(Parent &p) {
    Child &downcasted = static_cast<Child &>(p);
    downcasted.f();
}

int main (void) {
    Child c;
    f(c);

    return 0;
}
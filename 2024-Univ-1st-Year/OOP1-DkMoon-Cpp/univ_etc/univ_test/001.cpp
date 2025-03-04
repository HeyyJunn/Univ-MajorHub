#include <iostream>
using namespace std;
class Parent {
public:
    void f() { cout << "Parent" << endl; }
};
class Child : public Parent {
public:
    void f() { cout << "Child" << endl; }
};
void g(Parent& ref) { ref.f(); }


int main (void) {

    Parent p;
    g(p);
    Child c;
    g(c);
    // g 함수는 Parent& 타입을 사용하므로 Parent::f()가 호출됩니다.

    c.f();

    Parent& ref = c;
    ref.f();

    Parent* ptr = &c;
    ptr->f();
    return 0;
}
#include <iostream>
using namespace std;

void f (int a= 10) { cout << a << " " << endl; }

class MyClass {
public:
    void g (int a =20) { cout << a << " " << endl; }
};
int main (void) {
    f();
    f(11);

    MyClass obj;
    obj.g();
    obj.g(21);

    auto l = [] (int a = 30) { cout << a << " " << endl; };
    l();
    l(31);

}


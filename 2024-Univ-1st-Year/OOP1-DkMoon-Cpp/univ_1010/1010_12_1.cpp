#include <iostream>

class MyClass {
private:
    int a;
    friend void f(const MyClass& ref);
};

void f(const MyClass &ref) {
  std::cout << ref.a << std::endl;
}

int main (void) {
    MyClass obj;
    f(obj);
    return 0;
}
#include <iostream>

void f(const int &ref) {
    std::cout << "value: " << ref << std::endl;
    std::cout << "address: " << &ref << std::endl;
}

int main() {
    int a = 10;
    std::cout << "org value: " << a << std::endl;
    std::cout << "org address: " << &a << std::endl;
    
    f(a);
    a = 20;
    f(a);
}
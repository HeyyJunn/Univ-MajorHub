#include <iostream>
using namespace std;

class P {
public:
    P() {
        cout << "P ctor\n";
    }
    ~P() {
        cout << "P dtor\n";
    }
};
class C : public P {
public:
    C() {
        cout << "C ctor\n";
    }
    ~C() {
        cout << "C dtor\n";
    }
};
int main() {
    C c;
}
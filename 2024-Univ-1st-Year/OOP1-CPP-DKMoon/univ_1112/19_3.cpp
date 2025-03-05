#include <iostream>
#include <cstdlib>
#include <ctime>
using namespace std;

class P {};
class C1 : public P {}; // C#N : 부모 p 상속 클래스
class C2 : public P {};
class C3 : public P {};
class C4 : public P {};

void f() {
    int x = rand() % 4;
    switch (x) {  // 다양한 X 상황
        case 0:
            throw C1{};
        case 1:
            throw C2{};
        case 2:
            throw C3{};
        default: 
            cout << "Safe\n";
    }
}
void g() {
    try {
        f();
    } catch (const C1 &e1) {
        // cout << "Catch C1" << endl;
        throw;
    }
}
void h() {
    try {
        g();
    } catch (const C2 &e2) {
        // cout << "Catch C2" << endl;
        throw;
    }
}
int main() {

    srand(time(NULL)); 

    try { 
        h();
    } catch (const P &e) {
        cout << "catch" << endl;
    }

    return 0;
}  
#include <iostream>
using namespace std;
/*
•class A 에 변환 연산자  operator bool() 을 오버로딩한다.
-A 객체의 val 이 0 이면 operator bool() 은 false 를 반환한다.
A 객체의 val 이 0 이 아니면 operator bool() 은 true 를 반환한다.
-아래 코드가 동작해야 된다.
*/
class A {
public:
    explicit operator bool() const { return val == 0 ? false : true; }

    A(int val) : val{val} {}

    A(const A &ref) : val{ref.val} {
        cout << "copy\n";
    }

    A(A &&ref) : val{ref.val} {
        cout << "move\n";
        ref.val = 0;
    }

    void print() const {
        cout << "print: " << this->val << "\n";
    }

    A &operator=(const A &ref) {
        val = ref.val;
        cout << "copy\n";
        return *this;
    }
    

    A &operator=(A &&ref) {
        val = ref.val;
        ref.val = 0;
        cout << "move\n";
        return *this;
    }

private:
    int val;
};
int main (void) {

    const A a{100};

    if (a) {
        cout << "a.val is not zero\n";
    }

    A b{0};

    if (!b) {
        cout << "b.val is zero\n";
    }

    return 0;
}
#include <iostream>
using namespace std;
/*
•class A 에 후위 연산자 operator++ 을 오버로딩한다.
-A 객체의 val 을 1 증가 시키고, 증가하기 이전 val 을 갖는 복사본 객체를 반환한다.
-아래 코드가 동작해야 된다.
*/
class A {
public:

    A operator++ (int) {
        A temp = *this;
        val++;
        return temp;
    }

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

    A a{0};
    const A &b = a++;
    b.print();
    a.print();
    return 0;
}
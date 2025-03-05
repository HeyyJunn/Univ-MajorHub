#include <iostream>
#include <list>
using namespace std;

struct A { // 모든게 public 인 클래스
    A(int v) : val(v) {}
    bool operator< (const A &ref) const {
        return val > ref.val; // 값이 더 크면 true
    }
    int val;
};

ostream &operator<<(ostream &os, const A &a) {
    return (os << a.val);
}

int main (void) {
    list<A> l {A(5), A(9), A(1), A(3), A(3)};
    l.sort(); // 각 원소에 대해서 operator<()에 따라 순서를 정함
    for (const auto &e : l) {
        cout << e << endl;
    }
    // 9 5 3 3 1
    return 0;
}∏
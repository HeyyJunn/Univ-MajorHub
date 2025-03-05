#include <iostream>
using namespace std;

class A {
public:
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
void swapCopy (A &a, A &b) {
    A temp = std::move(a);
    a = std::move(b);
    b = std::move(temp);
}
int main (void) {
    
    A a{100};
    A b{200};
    swapCopy(a,b);
    a.print();
    b.print();
    
    return 0;
}
#include <iostream>
using namespace std;
class Student {
public:
    Student() {
        cout << "ctor called: " << this << "\n";
    }
    ~Student() {
        cout << "dtor called: " << this << "\n";
    }
};

int main (void) {

    Student s1;
    {
        Student s2;
    }
    
    return 0;
}
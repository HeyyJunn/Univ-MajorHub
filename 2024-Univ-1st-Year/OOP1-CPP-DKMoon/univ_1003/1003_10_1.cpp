#include <iostream>
using namespace std;
class Student {
public:
    Student() {cout << "ctor1" << endl;}
    Student(int i) {cout << "ctor2" << endl;}
};
int main (void) {
    Student students[3] {Student(1), };
    return 0;
}
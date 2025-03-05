#include <iostream>
using namespace std;
class Student {
public:
    Student() {
    cout << "ctor called\n";
    }
private:
    int id;
    double gpa;
};

int main (void) {

    Student s;
    
    return 0;
}
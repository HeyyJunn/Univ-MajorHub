#include <iostream>
using namespace std;

class Student {
public:
    Student() {
      cout << "ctor called\n";
    }
    Student(int id, double gpa) {
      cout << "ctor2 called\n";
    }
private:
    int id;
    double gpa;
};

int main() {
  Student s = Student(100, 4.0);
  return 0;
}
#include <iostream>
using namespace std;

class Student {
  public:
    Student() : id{0}, gpa{0.0} {
      cout << "default ctor\n";
    }

    Student(const Student &ref)
      : id{ref.id}, gpa{ref.gpa} {
      cout << "copy ctor\n";
    }

  private:
    int id;
    double gpa;
};

void f(Student arg) {}

int main() {
  Student s;       
  Student copy{s}; 
  f(s);            
}
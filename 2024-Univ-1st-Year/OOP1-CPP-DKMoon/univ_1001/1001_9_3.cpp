#include <iostream> 
using namespace std;

class Student {
public:
    Student(const int id, double gpa) : id(id), gpa(gpa) { }
    
    void print() {
        cout << id << ": " << gpa << "\n";
    }
private:
    const int id;  
    double gpa;  
};
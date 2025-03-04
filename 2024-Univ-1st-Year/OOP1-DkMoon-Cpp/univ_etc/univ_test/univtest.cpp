#include <iostream>
#include <cstdio>
using namespace std;

class arrayTemp {
public:
    int id;
    double gpa;
    arrayTemp() { cout << "객체 배열 : 기본 생성자 호출" << endl; }
};
class Student {
public:
    Student() { cout << "기본생성자 호출" << endl; } // 기본생성자
                // 생성자 : 객체를 초기화 하는 역할
    Student(int id, int gpa) {}
    Student(const Student &ref) : id{ref.id}, gpa{ref.gpa} {} // copy constructor
private:
    int id;
    int gpa;
};
class A {
public:
    A() = default;
    A(int a) {}
};
class C {
public:
     A a;
};
class deepCopyExample {
public:
    deepCopyExample() : ptr{new char[100 * 1024 * 1024]} {}
    deepCopyExample(const deepCopyExample &ref) : ptr{new char[100 * 1024 * 1024]} {
        memcpy(ptr, ref.ptr, 100 * 1024 * 1024);
    }
private:
    char* ptr;
};
class moveExample {
public:
    moveExample() {}
    moveExample(moveExample &&ref) : ptr{ref.ptr} {
        ref.ptr = nullptr;
    }
    ~moveExample() {delete ptr;}
private:
    int* ptr;
};

void f(const int a) {}

int main (void) {
    C c;
    void (*pFunc)(int) = f;
    printf("%p %p\n", f, pFunc);
    arrayTemp temptemp[3];
    /*
        변환생성자 (Conversion Constructor)
            생성자 중 매개변수가 하나 뿐인 경우 묵시적 변환에 이용
            묵시적 형변환은 explicit 키워드로 막을 수 있음
        
        소멸자 (Destructor)
            소멸자는 명시적으로 호출하지 않는다.

        객체 자신을 가르키는 묵시적 포인터 this
            클래스의 멤버 함수는 모든 객체가 공유
            이 함수들에 묵시적 인자로 전달되는 this 라는 포인터 이용
            " 이 포인터는 멤버 함수를 호출한 객체 자신을 가르킨다 "
            Student* this;

        
        클래스의 생성자는 멤버 변수를 모두 초기화 한 뒤에 호출

    */
    int a {100}; // narrowing 을 방지
    Student s1; // 객체 변수를 정의하면 묵시적으로 기본생성자가 호출
    Student s2 = Student(); // 명시적으로 기본

    // !!! 잘못된 문법 !!!
    Student s3(); // 매개변수가 없고 Student 를 반환하는 함수 선언
    Student s4(Student()); // Student() 는 기본 생성자를 호출하여 객체를 반환.
                             // 이러한 표현은 함수의 선언으로 해석
    // 임시 객체에 대해서는 const 가 아닌 lvalue 참조가 허용되지 않는다.
    const int& e = 1;
    f(2);

    moveExample moveA;
    moveExample moveB = std::move(moveA);
    
    return 0;
}
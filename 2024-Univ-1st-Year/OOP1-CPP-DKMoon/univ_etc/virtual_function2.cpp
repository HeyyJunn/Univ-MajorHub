#include <iostream>
using namespace std;

// const 객체는 const 메서드만 호출 가능
class Parent { // 추상클래스
protected:
    // Child 를 통해서만 생성자가 호출 될 수 있다.
    // 직접 객체를 만들 수 없음.
    Parent() {};
public:
    // 다형성에 따라 Parent * p 로 저장된 것을 소멸할 수 있음.
    virtual ~Parent() {} 
    // function overloading
    virtual void f() const { cout << "P const" << endl; }
    virtual void f() { cout << "P non-const" << endl; }
    // pure virtual function
    // 자식이 재정의 하길 원하는 경우
    // 순수 가상 함수를 갖는 클래스는 객체를 만들 수 없음.
    virtual void g() = 0;
};
class Child : public Parent {
// class Child final : public Parent { 모든 가상함수를 final 로 만듦
public:
    // override
    // final keyword
    void f() override final { cout << "Child" << endl; }
    void g() override { cout << "Child" << endl; }
};
void deleteme(Parent *p) { delete p; }
int main (void) {

    // Parent p;
    // 순수 가상 함수를 갖는 클래스는 객체를 만들 수 없음.

    Child c;
    c.f();

    Parent &p = c;
    p.f();

    const Parent &cp = c;
    cp.f();

    Child * temp { new Child };
    deleteme(temp);

    return 0;
}
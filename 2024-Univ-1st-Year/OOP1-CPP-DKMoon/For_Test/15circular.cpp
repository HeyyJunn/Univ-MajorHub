#include <iostream>
using namespace std;

struct MyClass {
    MyClass* target;
    // target은 MyClass 타입의 포인터입니다. 
    // 즉, 다른 MyClass 객체를 가리킬 수 있는 포인터입니다.
};

int main (void) {

    MyClass obj1, obj2;

    obj1.target = &obj2;
    obj2.target = &obj1;

    /*
    .은 객체의 멤버에 접근하는 연산자입니다. 
    객체가 포인터일 경우 -> 연산자를 사용하여 멤버에 접근해야 하지만, 
    위 코드에서는 target이 포인터 타입이 아니기 때문에 .을 사용해 접근하고 있습니다.
    */

}
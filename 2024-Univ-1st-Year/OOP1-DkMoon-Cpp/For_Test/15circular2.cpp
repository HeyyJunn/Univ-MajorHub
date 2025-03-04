#include <iostream>
#include <memory>
using namespace std;

struct MyClass {
    shared_ptr<MyClass> target;
    // 이 target은 다른 MyClass 객체를 가리킬 수 있는 스마트 포인터입니다.
};

int main (void) {
    auto log_and_delete = [](MyClass *arg) {
        cout << "deleted" << endl;
        delete arg;
    };

    shared_ptr<MyClass> obj1{ new MyClass, log_and_delete };
    // new MyClass: MyClass의 객체를 동적으로 생성합니다.

    // shared_ptr<MyClass> obj1{ ... }: shared_ptr로 생성된 객체를 관리합니다. 
    // 첫 번째 인자는 객체의 포인터이고, 두 번째 인자는 커스텀 삭제자입니다.

    shared_ptr<MyClass> obj2{ new MyClass, log_and_delete };
    // shared_ptr이 객체를 더 이상 참조하지 않게 되면, 내부적으로 이 삭제자가 호출되어 delete arg;가 실행되고, “deleted” 메시지가 출력됩니다.
    // 삭제자가 인자로 객체의 포인터를 받기 때문입니다. 
    // 이 때 shared_ptr은 관리하고 있는 객체의 포인터를 삭제자 함수에 넘겨줍니다

    obj1->target = obj2;
    // 스마트 포인터는 실제 객체에 접근할 수 있는 기능도 제공하기 때문에, obj1->target와 같은 문법이 가능
    obj2->target = obj1;

    obj1->target.reset();
    obj2->target.reset();
    // reset() 메서드는 shared_ptr가 관리하는 객체를 해제하고, 해당 포인터를 nullptr로 설정합니다. 
    // 즉, 참조 카운트를 감소시키고, 만약 참조 카운트가 0이 되면 객체를 삭제합니다.
    // obj1->target.reset()은 obj1->target이 가리키던 obj2를 관리하지 않게 되며,
    // 만약 obj2의 참조 카운트가 0이 되면 메모리가 해제됩니다.

    return 0;
}
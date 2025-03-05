#include <iostream>
#include "SP.h"
using namespace std;

int main() {

    SP ptr{new T}; // 동적할당

    if (ptr) cout << "ptr1 not null\n";
    ptr->value = 1; // -> overloading, 대상 포인터를 반환
    // 이름 그대로 포인터처럼 사용.
    
    {
        const SP ptr2 = ptr;
        (*ptr2).value = 2;

        SP ptr3{std::move(ptr)};

        SP ptr4;
        if (ptr4 == false) cout << "ptr4 null\n";
        ptr4 = ptr2;

        SP ptr5;
        ptr5 = std::move(ptr3);

        ptr = ptr4;
    }

    SP ptr6 = ptr;
    cout << ptr6->value << "\n";

    return 0;
}

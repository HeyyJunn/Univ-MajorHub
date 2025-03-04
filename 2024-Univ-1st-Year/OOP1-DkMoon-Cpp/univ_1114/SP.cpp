#include "SP.h"
#include <iostream>
using namespace std;

SP::SP() : ptr{nullptr}, reference(nullptr) {
    cout << "default ctor" << endl;
};
SP::SP(T *ptr) : ptr{ptr}, reference(new RC) {
    cout << "ctor with ptr" << endl;
};
SP::~SP() {
    if (reference != nullptr && reference->Release() == 0) {
        delete ptr;
        cout << "deleted" << endl;   
    }
}
SP::SP(const SP &a) : ptr{a.ptr}, reference{a.reference} {
    reference->AddRef();
    cout << "copy ctor" << endl;
}
SP &SP::operator=(const SP &a) {
    if (reference != nullptr && reference->Release() == 0) {
        delete ptr;
        cout << "deleted2" << endl;
    }
    ptr = a.ptr;
    reference = a.reference;
    reference->AddRef();
    
    cout << "copy operator=" << endl;
    return *this;
}
SP::SP(SP &&a) : ptr{a.ptr}, reference(a.reference) {
    a.ptr = nullptr;
    a.reference = nullptr;
    cout << "move ctor" << endl;
}
SP &SP::operator=(SP &&a) {
    if (reference != nullptr && reference->Release() == 0) {
        delete ptr;
        cout << "deleted2" << endl;
    }
    ptr = a.ptr;
    reference = a.reference;

    a.ptr = nullptr;
    a.reference = nullptr;
    
    cout << "move operator=" << endl;
    return *this;
}
SP::operator bool() const {
    return ptr != nullptr;
}

T *SP::operator->() const {
    return ptr;
}

T &SP::operator*() const {
    return *ptr;
}
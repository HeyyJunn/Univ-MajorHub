#include "MyVector.h"
#include "MyContainer.h"
#include <iostream>
#include <cstring>

MyVector::MyVector() : MyContainer(), storage{new int[1]}, max_size{1}, current_size{0} {}
MyVector::~MyVector() {
    delete[] storage;
}
void MyVector::push_back(const int& Val) {
    if (current_size == max_size) {
        max_size *= 2;
        int * temp_array = new int [max_size];
        memcpy(temp_array, storage, sizeof(int) * current_size);
        delete[] storage;
        storage = temp_array;
    }
    storage[current_size] = Val;
    current_size++;
}
void MyVector::pop_back() {
    if ( current_size > 0 ) { 
        --current_size;
    }
}
int MyVector::size() const {
    return current_size;
}
int &MyVector::operator[] (const int index) {
    // return *storage;
    return  storage[index];
}
const int &MyVector::operator[] (const int index) const {
    return storage[index];
}
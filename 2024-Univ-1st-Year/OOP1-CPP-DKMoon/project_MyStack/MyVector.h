// MyVector.h
#ifndef MyVector_H
#define MyVector_H
#include "MyContainer.h"
#include <cstring>

template <typename T>
class MyVector : public MyContainer<T> {
public:
    MyVector();
    ~MyVector();
    void push_back(const T& Val) override;
    void pop_back() override;
    int size() const override;
    T& operator[](const int index);
    const T& operator[](const int index) const;
private:
    T* storage;
    int max_size;
    int current_size;
};

template <typename T>
MyVector<T>::MyVector() : storage{new T[1]}, max_size{1}, current_size{0} {}

template <typename T>
MyVector<T>::~MyVector() {
    delete[] storage;
}

template <typename T>
void MyVector<T>::push_back(const T& Val) {
    if (current_size == max_size) {
        max_size *= 2;
        T* temp_array = new T[max_size];
        memcpy(temp_array, storage, sizeof(T) * current_size);
        delete[] storage;
        storage = temp_array;
    }
    storage[current_size++] = Val;
}

template <typename T>
void MyVector<T>::pop_back() {
    if (current_size > 0) {
        --current_size;
    }
}

template <typename T>
int MyVector<T>::size() const {
    return current_size;
}

template <typename T>
T& MyVector<T>::operator[](const int index) {
    return storage[index];
}

template <typename T>
const T& MyVector<T>::operator[](const int index) const {
    return storage[index];
}

#endif
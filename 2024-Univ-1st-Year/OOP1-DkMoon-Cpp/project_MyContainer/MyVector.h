#ifndef MyVector_H
#define MyVector_H
#include "MyContainer.h"

class MyVector : public MyContainer {
public:
    MyVector();
    ~MyVector();
    void push_back (const int& Val) override;
    void pop_back() override;
    int size() const override;
    int &operator[] (const int index);
    const int &operator[] (const int index) const;
private:
    int * storage; // 최대 저장 가능한 원소 개수만큼 동적할당한 메모리의 포인터
    int max_size; // 최대 저장 가능한 원소 개수
    int current_size; // 현재 메모리 차지하고 있는 원소 개수
};

#endif
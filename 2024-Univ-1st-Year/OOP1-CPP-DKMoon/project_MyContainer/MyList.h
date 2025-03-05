#ifndef MyList_H
#define MyList_H
#include "MyContainer.h"

class MyList : public MyContainer {
public:
    MyList(); // constructor
    ~MyList(); // destructor
    void push_back (const int& Val) override; // 마지막 원소 뒤에 새 원소를 추가
    void pop_back() override; // 마지막 원소를 삭제
    int size() const override;
    int &back(); // 상수, 마지막 원소의 데이터를 반환
    const int &back() const; // 비상수, 마지막 원소의 데이터를 반환

private:
    class Node {
    public:
        Node(int data);
        ~Node();
        Node * next_node_pointer; // 다음 node 의 포인터
        int data_num;
    };
    Node * first_node_pointer; // 첫번째 node 의 포인터
};

#endif
// MyList.h
#ifndef MyList_H
#define MyList_H
#include "MyContainer.h"

template <typename T>
class MyList : public MyContainer<T> {
public:
    MyList();
    ~MyList();
    void push_back(const T& Val) override;
    void pop_back() override;
    int size() const override;
    T& operator[](int index); 
    const T& operator[](int index) const;
    

private:
    class Node {
    public:
        Node(T data);
        ~Node();
        T data;
        Node* next;
    };
    Node* head;
};

template <typename T>
MyList<T>::MyList() : head{nullptr} {}

template <typename T>
MyList<T>::~MyList() {
    while (head) {
        Node* temp = head->next;
        delete head;
        head = temp;
    }
}

template <typename T>
void MyList<T>::push_back(const T& Val) {
    Node* newNode = new Node(Val);
    if (!head) {
        head = newNode;
    } else {
        Node* temp = head;
        while (temp->next) {
            temp = temp->next;
        }
        temp->next = newNode;
    }
}

template <typename T>
void MyList<T>::pop_back() {
    if (!head) return;
    if (!head->next) {
        delete head;
        head = nullptr;
        return;
    }
    Node* temp = head;
    while (temp->next->next) {
        temp = temp->next;
    }
    delete temp->next;
    temp->next = nullptr;
}

template <typename T>
int MyList<T>::size() const {
    int count = 0;
    Node* temp = head;
    while (temp) {
        temp = temp->next;
        ++count;
    }
    return count;
}

template <typename T>
T& MyList<T>::operator[](int index) {
    Node* temp = head;
    for (int i = 0; i < index && temp; ++i) {
        temp = temp->next;
    }
    return temp->data;
}

template <typename T>
const T& MyList<T>::operator[](int index) const {
    Node* temp = head;
    for (int i = 0; i < index && temp; ++i) {
        temp = temp->next;
    }
    return temp->data;
}

template <typename T>
MyList<T>::Node::Node(T data) : data{data}, next{nullptr} {}

template <typename T>
MyList<T>::Node::~Node() {}

#endif
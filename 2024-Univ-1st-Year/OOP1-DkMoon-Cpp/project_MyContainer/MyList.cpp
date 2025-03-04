#include "MyList.h"
#include "MyContainer.h"
#include <iostream>

MyList::MyList() : MyContainer(), first_node_pointer{nullptr} {}
MyList::~MyList() {
    Node * tempNode = first_node_pointer;
    while (tempNode != nullptr) {
        Node * tempNextNode = tempNode->next_node_pointer;
        delete tempNode;
        tempNode = tempNextNode;
    }
}
MyList::Node::Node(int data) : data_num{data}, next_node_pointer{nullptr} {}
MyList::Node::~Node() {}
void MyList::push_back(const int& Val) {
    // 과제의 특이사항 으로 인하여 push_back (마지막 원소 뒤에 새원소 추가) 만 구현
    Node * newNode = new Node{Val};
    if (first_node_pointer != nullptr) {
        Node * tempNode = first_node_pointer;
        while (tempNode->next_node_pointer != nullptr) {
            tempNode = tempNode->next_node_pointer;
        }
        newNode->next_node_pointer = newNode;
    }
    else { // first_node_pointer == nullptr
        first_node_pointer = newNode;
    }
}
void MyList::pop_back() {
    if (first_node_pointer != nullptr) {
        if (first_node_pointer->next_node_pointer == nullptr) {
            delete first_node_pointer;
            first_node_pointer = nullptr;
        } else {
            Node * tempNode = first_node_pointer;
            while (tempNode->next_node_pointer->next_node_pointer != nullptr) {
                tempNode = tempNode->next_node_pointer;
            }
            delete tempNode->next_node_pointer;
            tempNode->next_node_pointer = nullptr;
        }
    }
}

// void MyList::pop_back() {
//     Node * tempNode = first_node_pointer;
//     if (first_node_pointer != nullptr) {
//         // double pointer 사용
//         while (tempNode->next_node_pointer->next_node_pointer != nullptr) {
//             tempNode = tempNode->next_node_pointer;
//         }
//         delete tempNode->next_node_pointer;
//         tempNode->next_node_pointer = nullptr;
//     else return; // first_node_pointer == nullptr
// }

int MyList::size() const {
    int count = 0;
    Node * tempNode = first_node_pointer;

    while (tempNode != nullptr) {
        tempNode = tempNode->next_node_pointer;
        ++count;
    }
    return count;
}

int& MyList::back() {
    if (first_node_pointer != nullptr) {
        Node * tempNode = first_node_pointer;
        while (tempNode->next_node_pointer != nullptr) {
            tempNode = tempNode->next_node_pointer;
        }
        return tempNode->data_num;
    }
    else {
        static int temp = 0;
        return temp;
    }
}

const int& MyList::back() const {
    if (first_node_pointer != nullptr) {
        Node * tempNode = first_node_pointer;
        while (tempNode->next_node_pointer != nullptr) {
            tempNode = tempNode->next_node_pointer;
        }
        return tempNode->data_num;
    }
    else {
        static int temp = 0;
        return temp;
    }
}
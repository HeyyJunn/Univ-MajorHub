#ifndef MyStack_H
#define MyStack_H

template <typename T, typename C>
class MyStack {
public:
    MyStack();
    ~MyStack();
    bool empty() const;
    void push(const T& val);
    void pop();
    const T& top() const;

private:
    C container;
};

template <typename T, typename C>
MyStack<T, C>::MyStack() {}

template <typename T, typename C>
MyStack<T, C>::~MyStack() {}

template <typename T, typename C>
bool MyStack<T, C>::empty() const {
    return container.size() == 0;
}

template <typename T, typename C>
void MyStack<T, C>::push(const T& val) {
    container.push_back(val);
}

template <typename T, typename C>
void MyStack<T, C>::pop() {
    container.pop_back();
}

template <typename T, typename C>
const T& MyStack<T, C>::top() const {
    return container[container.size() - 1];
}


#endif
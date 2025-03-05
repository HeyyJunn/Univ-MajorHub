// MyContainer.h
#ifndef MyContainer_H
#define MyContainer_H
template <typename T>
class MyContainer {
protected:
    MyContainer() {}
public:
    enum SymbolType {
        VECTOR,
        LIST
    };
    virtual ~MyContainer() {}
    static MyContainer<T>* Create(SymbolType SymbolArg);

    virtual void push_back(const T& Val) = 0;
    virtual void pop_back() = 0;
    virtual int size() const = 0;
};
#endif
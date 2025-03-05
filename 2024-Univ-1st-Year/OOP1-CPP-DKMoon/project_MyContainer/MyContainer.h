#ifndef MyContainer_H
#define MyContainer_H
class MyContainer {
protected:
    MyContainer();
public:
    enum SymbolType {
        VECTOR,
        LIST
    };
    virtual ~MyContainer();
    static MyContainer * Create (SymbolType SymbolArg);

    virtual void push_back(const int& Val) = 0;
    virtual void pop_back() = 0;
    virtual int size() const = 0;
};
#endif // MyContainer.h

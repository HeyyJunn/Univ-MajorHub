#include "MyContainer.h"
#include "MyVector.h"
#include "MyList.h"
#include <iostream>
MyContainer::MyContainer() {}
MyContainer::~MyContainer() {}
MyContainer* MyContainer::Create (SymbolType SymbolArg) {
    if (SymbolArg == MyContainer::LIST) {
        MyList * newMyList = new MyList();
        return newMyList;
    }
    else if (SymbolArg == MyContainer::VECTOR) { // SymbolArg = VECTOR
        MyVector * newMyVector = new MyVector();
        return newMyVector;
    }
    else return nullptr;
} // MyContainer.cpp
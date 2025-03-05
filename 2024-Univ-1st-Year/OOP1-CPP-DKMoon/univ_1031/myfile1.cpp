#include <iostream>
#include "myfile.h"
using namespace std;

namespace N {
    int var;
    
    void f() { cout << "f" << endl; }

    void A::g() { cout << "A::g" << endl; }
    
}
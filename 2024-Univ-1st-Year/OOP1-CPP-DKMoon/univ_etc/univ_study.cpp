#include <iostream>
using namespace std;

class Parent {
};
class Child : public Parent {
};

int main (void) {

    ////////////////////////////////////////////////////////////

    // up & down casting
    Child c;
    Parent *ptr = &c; // up-casting
    Parent &ref = c; // up-casting

    Child *ptr2 = static_cast<Child *>(ptr); // down-casting
    Child &ref2= static_cast<Child &>(ref); // down-casting

    ////////////////////////////////////////////////////////////

    

    return 0;
}
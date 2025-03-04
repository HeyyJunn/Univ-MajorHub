#include <iostream>
using namespace std;
class Animal { // Base Class
public:
    Animal() { cout << "animal constructor" << endl; }
    virtual ~Animal() { cout << "animal destructor" << endl; }
};
class Cat : public Animal {
public:
    Cat() { cout << "cat constructor" << endl; }
    ~Cat() { cout << "cat destructor" << endl; }
};
int main (void) {

    // Animal animal;
    // Cat cat;
    // Animal * animalPtr = new Animal();
    // delete animalPtr;
    // Cat * catPtr = new Cat();
    // delete catPtr;

    Animal * polyCat = new Cat();
    delete polyCat;

    /*
    animal constructor
    cat constructor
    animal destructor
    */

}
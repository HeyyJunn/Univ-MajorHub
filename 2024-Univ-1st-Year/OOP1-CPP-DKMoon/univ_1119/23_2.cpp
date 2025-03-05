#include <iostream>
using namespace std;

class A {
private:
    int a;
    int b;

public:
    // friend istream& operator==()
    friend ostream& operator<<(ostream& output, const A& obj);
    friend istream& operator>>(istream& input, A& obj);
};
ostream& operator<<(ostream& output, const A& obj) {
    cout << obj.a << " " << obj.b << endl;
    return output;
}

istream& operator>>(istream& input, A& obj) {
    int temp1, temp2;
    cin >> temp1 >> temp2;
    obj.a = temp1;        
    obj.b = temp2;
    return input;
}
 
int main(int argc, char* argv[]) {
    A obj;
    cin >> obj;  
    cout << obj;
    return 0;
}
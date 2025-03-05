#include <iostream>
#include <string>
using namespace std;

int main (void) {

    string s("10");

    int i = stoi(s);
    cout << i << endl; // 10

    double d = stod(s);
    cout << fixed << d << endl; // 10.000000

    string s2 = to_string(i);
    cout << s2 << endl; // 10

    string s3 = to_string(d);
    cout << s3 << endl; // 10.000000

    return 0;
}
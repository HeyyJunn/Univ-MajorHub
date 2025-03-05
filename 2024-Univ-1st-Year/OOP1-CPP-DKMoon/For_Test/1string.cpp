#include <iostream>
#include <string>

using namespace std;

int main (void) {

    string s1;
    cout << s1.empty() << endl; // 1
    cout << s1.length() << endl; // 0

    string s2 = "s2";
    cout << s2.empty() << endl; // 0
    cout << s2.size() << endl; // 2
    cout << s2.length() << endl; // 2

    return 0;
}
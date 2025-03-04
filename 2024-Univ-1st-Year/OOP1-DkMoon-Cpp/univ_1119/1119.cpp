#include <iostream>
#include <iomanip>
#include <string>
using namespace std;

int main (int argc, char* argv[]) {
    cout << 1.0 << endl;
    cout.setf(ios::fixed);
    cout << 1.0 << endl;

    cout << 100 << endl;
    cout.unsetf(ios::dec);
    cout.setf(ios::hex | ios::showbase);
    cout<< 100 << endl;

    cout << 100 << endl;
    cout.width(5);
    cout.fill('0');
    cout << 100 << endl;

    cout << 4.0 / 3 << endl;
    cout.precision(3);
    cout << 4.0 /3 << endl;

    cout << 1.0 << endl;
    cout << fixed << 1.0 <<endl;
    cout << 100 << endl;
    cout << hex << showbase << 100 << endl;
    cout << dec << setw(5) << setfill('0') << 100 << endl;


    string s1;
    cout << s1 << endl;
    string s2{"s2"};
    cout << s2 << endl;
    string s3{"s3"};
    s1 = s2;
    cout << s1 << endl;
    s1 = move(s3);
    cout << s1 << endl;
}


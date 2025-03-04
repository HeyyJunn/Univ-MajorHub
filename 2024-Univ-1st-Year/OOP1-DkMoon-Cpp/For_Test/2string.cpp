#include <iostream>
using namespace std;

int main (void) {

    string s = "hello world";
    cout << s.find("l") << endl;
    cout << s.find("w") << endl;
    cout << (s.find("hello", 5) == string::npos) << endl; // 1
    // 5번 인덱스 이후에 "hello"가 없기 때문에 string::npos를 반환하며, 출력은 1 (참, true)입니다.
    cout << (s.find("w", 7) == s.npos) << endl; // 1

    cout << s.rfind("l") << endl; // 9
    cout << (s.rfind("ld", 8) == s.npos) << endl; // 1

    return 0;
}
#include <iostream>
using namespace std;

/*
bigger 는 두 개의 인자를 받고, 큰 값을 반환하는 함수이다.
다음과 같은 코드가 실행될 수 있도록 template 버전의 bigger 함수를 작성하시오.
*/

template<typename T>
T bigger(const T &a, const T &b) {
    return (a > b) ? a : b;
}
int main(void) {
    cout << bigger(10, 20) << endl;               
    cout << bigger<int>(10, 20) << endl;          

    cout << bigger(10.5, 20.5) << endl;           
    cout << bigger<double>(10.5, 20.5) << endl;  

    return 0;
}
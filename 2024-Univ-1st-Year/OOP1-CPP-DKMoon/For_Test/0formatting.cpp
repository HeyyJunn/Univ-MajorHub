#include <iostream>
#include <iomanip>
using namespace std;

int main (void) {

    /*
    1. format flag 지정
        long setf(long flag)
        long unsetf(long flag)
        
        bitwise | 이것으로 조합가능
        flag 로 지정되면 flag 사라질때까지 유효
    */
    cout << 1.0 << endl; // 1
    cout.setf(ios::fixed); // 소수점 형태로 출력
    cout << 1.0 << endl; // 1.000000

    cout << 100 << endl;
    cout.unsetf(ios::dec);
    cout.setf(ios::hex | ios::showbase);
    // 숫자를 16진수로 출력하며(ios::hex), 숫자 앞에 0x 같은 기수 표기를 포함하도록 설정합니다(ios::showbase).
    cout << 100 << endl;

   
    // 2. format 메서드 사용
    cout.unsetf(ios::fixed);
    cout.unsetf(ios::hex | ios::showbase);


    cout << 100 << endl;
    cout.width(5);
    cout.fill('0');
    cout << 100 << endl;

    cout << 4.0 / 3 << endl;
    cout.precision(3);
    cout << 4.0 / 3 << endl;
    
    // 3. 조작자 사용
    // #include <iomanip>
    cout << 1.0 << endl;
    cout << fixed << 1.0 << endl;

    cout << 100 << endl;
    cout << hex << showbase << 100 << endl;
    cout << dec << setw(5) << setfill('0') << 100 << endl;

    return 0;
}
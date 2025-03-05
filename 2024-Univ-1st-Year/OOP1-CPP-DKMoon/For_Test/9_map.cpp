#include <iostream>
#include <map>
using namespace std;

int main (void) {
	map<string, int> m = { // map 생성 및 초기화
		{"부산", 325},
		{"인천", 55}
    };
    // 반환 값은 해당 키를 가르키는 iterator (const 읽기 전용)
    // key 를 찾지 못하면 iterator 는 end() 를 가르킴
    // end()는 검색 실패 또는 범위의 끝을 나타내기 위해 사용됩니다.
    map<string, int>::const_iterator it = m.find("부산");
    // 이 의미는 map<string, int>의 const_iterator 타입의 변수를 선언한 것입니다.
    // 템플릿 컨테이너(map)의 내부 타입(iterator)을 명시적으로 지정하기 위해
    // **범위 지정 연산자(::)**를 사용합니다.
    if ( it != m.end()) {
        cout << it->first << endl;
        cout << it->second << endl;
    }
    it = m.find("제주");
    if (it == m.end()) {
        cout << "not found" << endl;
    }
}

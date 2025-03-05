#include <vector>
#include <iostream>
using namespace std;

int main (void) {

    vector<int> v{1,2,3};
    v.insert(v.begin(), 4);
    for (auto it = v.begin(); it != v.end(); ++it) {
        cout << *it << " "; // 4 1 2 3
    }
    cout << endl;

    vector<int>::iterator it = v.begin();
    advance(it, 1);
    // // 반복자를 첫 번째 요소 다음으로 이동 (4 다음, 즉 1을 가리킴)

    v.erase(it);
    // 반복자가 가리키는 요소를 삭제
    for (auto it = v.begin(); it != v.end(); ++it) {
        cout << *it << " "; // 4 2 3
    }
}
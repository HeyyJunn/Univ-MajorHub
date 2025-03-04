#include "MyStack.h"
#include "MyVector.h"
#include "MyList.h"
#include <iostream>
#include <string>
using namespace std;

template <typename C>
void hanoi(int n, MyStack<int, C>& src, MyStack<int, C>& assist, MyStack<int, C>& dest) {
    // 첫 번째 기둥 원반 ㅊ초기화
    for (int i = n; i >= 1; --i)
        src.push(i);

    int total_moves = (1 << n) - 1; // 총 이동 횟수제한

    // 원반 수가 2n일시에 보조기둥과 목적지기둥을 swap
    if (n % 2 == 0) {
        swap(assist, dest);
    }

    MyStack<int, C>* tower[4];
    tower[1] = &src;
    tower[2] = &assist;
    tower[3] = &dest;

    // 이동 수행
    for (int i = 1; i <= total_moves; ++i) {
        int from, to;

        if (i % 3 == 1) { //
            from = 1;
            to = 3;
        } else if (i % 3 == 2) { // src assist
            from = 1;
            to = 2;
        } else { // assist dest
            from = 2;
            to = 3;
        }

        MyStack<int, C>* fromTower = tower[from];
        MyStack<int, C>* toTower = tower[to];

        if (!fromTower->empty() && (toTower->empty() || fromTower->top() < toTower->top())) {
            int disk = fromTower->top();
            fromTower->pop();
            toTower->push(disk);
            cout << "Move disk " << disk << " from " << from << " to " << to << "\n";
        } else if (!toTower->empty() && (fromTower->empty() || toTower->top() < fromTower->top())) {
            int disk = toTower->top();
            toTower->pop();
            fromTower->push(disk);
            cout << "Move disk " << disk << " from " << to << " to " << from << "\n";
        }
    }
}
int main() {
    string type;
    int n;

    cin >> type;
    cin >> n;

    if (type == "vector") {
        MyStack<int, MyVector<int>> s1, s2, s3;
        hanoi(n, s1, s2, s3);
    } else if (type == "list") {
        MyStack<int, MyList<int>> s1, s2, s3;
        hanoi(n, s1, s2, s3);
    } else {
        cout << "error" << endl;
    }

    return 0;
}
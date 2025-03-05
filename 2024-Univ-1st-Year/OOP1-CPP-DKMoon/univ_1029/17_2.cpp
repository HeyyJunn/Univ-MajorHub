#include <functional>
#include <iostream>
using namespace std;
// 오류 수정 문제, this 포인터 캡처

class A {
public:
    A (int seed) : seed(seed) {}
    function<int(int)> getLambda() const {
        return [this] (int arg) {
            return seed + arg;
        };
    }
private:
    int seed;
};
int main (void) {

    A a (100);
    auto lambda = a.getLambda();
    cout << lambda(200);

    return 0;
}
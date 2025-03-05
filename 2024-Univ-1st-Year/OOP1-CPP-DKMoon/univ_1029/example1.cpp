#include <functional>
#include <iostream>
using namespace std;

function <void(void)> getLamda() {
    int var = 0;
    return [&var] () {
        var = 1;
    };
}
int main (void) {
    auto l = getLamda();
    l();
}
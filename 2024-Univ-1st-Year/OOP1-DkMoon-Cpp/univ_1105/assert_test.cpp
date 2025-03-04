#include <cassert>
int main (void) {
    assert ( 1== 2 );
    return 0;
}

/*
 ✘ minjoon 🌊  ~/Desktop/univ_workspace/univ_1105  clang++ -o assert_test assert_test.cpp
 minjoon 🌊  ~/Desktop/univ_workspace/univ_1105  ./assert_test
Assertion failed: (1== 2), function main, file assert_test.cpp, line 3.
[1]    16113 abort      ./assert_test
 ✘ minjoon 🌊  ~/Desktop/univ_workspace/univ_1105  echo $?   
134
 minjoon 🌊  ~/Desktop/univ_workspace/univ_1105  
*/
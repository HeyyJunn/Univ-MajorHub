// assert() 매크로를 myassert() 매크로로 만들기
#include <iostream>
#include <cstdlib>
#ifdef NDEBUG // NDEBUG 정의 ok
    #define myassert(ok) ((void)0)
#else // NDEBUG -> 정의X
    #define myassert(ok) if(!ok) { std::abort(); }
#endif

int main (void) {

    // myassert(1+2==3);
    // myassert(1+2==4);
    
    return 0;
}
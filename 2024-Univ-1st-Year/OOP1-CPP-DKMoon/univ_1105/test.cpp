#include <cstdlib>

#ifdef NDEBUG // NDEBUG 정의 ok
    #define myassert(ok) ((void)0)
#else // NDEBUG -> 정의X
    #define myassert(ok) if(!(ok)) { std::abort(); }
#endif
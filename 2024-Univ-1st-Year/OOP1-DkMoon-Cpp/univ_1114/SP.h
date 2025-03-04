#ifndef SP_H
#define SP_H

struct T { // public class
    int value;
};

class RC {
// reference counting 방식의 smartpointer
private:
    int count;
public:
    RC() : count{1} {}
    void AddRef() {
        ++count;
    }
    int Release() {
        return --count;
    }
};

class SP {
private:
    T *ptr; // raw pointer
    RC *reference;
public:
    SP();
            // 관리할 포인터를 저장
    SP(T *ptr); // 외부에서 동적할당된 포인터를 넘기면~
    SP(const SP &a);
    SP(SP &&a);
    ~SP(); // 관리하고 욌던 포인터를 delete

    SP &operator=(const SP &a);
    SP &operator=(SP &&a);

    operator bool() const; // nullptr 인지 아닌지 판단
    T *operator->() const; // 대성 포인터 그대로 반환
    T &operator*() const; // 객체 참조 반환
};

#endif
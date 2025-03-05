class A {
public:
    A() : ptr{new int} { }
    A(const A &ref) : ptr{new int(*ref.ptr)} {};
    ~A() {
        delete ptr;
    }
private:
    int* ptr;
};

int main(void) {
    A a;
    A b{a};
    return 0;
}
class MyClass {
  private:
    int a;
    friend class Factory;
};

class Factory {
public:
    static MyClass createMyClass() {
        MyClass ret;
        ret.a = 10;
        return ret;
    }
};

int main (void) {

  Factory::createMyClass();

  return 0;
}
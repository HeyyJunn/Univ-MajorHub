#include <iostream>
#include "MyContainer.h"
#include "MyVector.h"
#include "MyList.h"
#include <exception>
#include <typeinfo>
using namespace std;

/*

mycontainer : 추상클래스, myvector mylist 가 상속
각기 다른 컨테이너가 공통적으로 구현해야 할 인터페이스 정의 

myvector mylist 가 상속받는 . . .
         +---------------------+
         |    MyContainer      |
         |---------------------|
         | +push_back()         |
         | +pop_back()          |
         | +size()              |
         | +Create()            |
         +---------------------+
                 ^
                 |
     +-----------+-----------+
     |                       |
+------------+         +------------+
|  MyVector  |         |  MyList    |
|------------|         |------------|
| +push_back()         | +push_back()|
| +pop_back()          | +pop_back() |
| +size()              | +size()     |
| +operator[]()        | +back()     |
+------------+         +------------+
*/

void updateVectorElement(MyContainer &c, int update) {
  try { MyVector &v = dynamic_cast<MyVector &>(c);
  v[0] = update;
  cout << v[0] << "\n";
  } catch (std::bad_cast &e) {
    cout << "Not a vector" << endl;
  }
}

void updateListElement(MyContainer &c, int update) {
  try { MyList &l = dynamic_cast<MyList &>(c);
  l.back() = update;
  cout << l.back() << "\n";
  } catch (std::bad_cast &e) {
    cout << "Not a List" << endl;
  }
}
int main() {
  try {
    MyContainer *v = MyContainer::Create(MyContainer::VECTOR);

    v->push_back(10);
    cout << v->size() << "\n";
    updateListElement(*v, 30);
    updateVectorElement(*v, 20);
    v->pop_back();

    MyContainer *l = MyContainer::Create(MyContainer::LIST);
    l->push_back(10);
    cout << l->size() << "\n";
    updateVectorElement(*l, 20);
    updateListElement(*l, 30);
    l->pop_back();
  } catch (std::bad_cast &e) {
    cout << e.what() << endl;
  }
}
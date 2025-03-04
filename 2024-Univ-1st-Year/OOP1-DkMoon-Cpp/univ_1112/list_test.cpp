#include <chrono>
#include <cstdlib>
#include <ctime>
#include <iostream>
#include <list>
#include <utility>


// 직접 구현한 클래스가 없는 동안 아래 예제 코드를 실행 시키기 위해서
// C++ 표준 라이브러리의 list 를 이용한다.
// 본인이 MyList 를 구현한 뒤에는 아래 줄을 주석 처리한다.
//using MyList = std::list<int>;

// 본인이 MyList 를 구현한 뒤에는 아래 줄을 주석에서 제거한다.
#include "MyList.h"



////////////////////////////////////////////////////////////////////////
// 이 아래로는 코드를 건드리지 않는다.

using ReferenceList = std::list<int>;

const int MAX_TRIES = 100 * 1000;
const int ADDITION_PERCENT = 70;


int main() {
  MyList v;

  // 결과 비교를 위해 표준 라이브러리 vector 를 이용한다.
  ReferenceList compare;

  srand(time(NULL));

  auto start = std::chrono::system_clock::now();
  for (int i = 0; i < MAX_TRIES; ++i) {
    // 더하기를 할지 빼기를 할지 결정한다.
    int percent = rand() % 100;

    if (percent < ADDITION_PERCENT) {
      // 더하기를 한다.
      // 랜덤한 정수를 집어 넣는다.
      // 직접 구현한 list 의 결과를 비교하기 위해서 표준 라이브러리의 list 에 같은 값을 넣는다.
      int n = rand();
      v.push_back(n);
      compare.push_back(n);
    } else {
      // 빼기를 한다.
      // 이 때 원소가 없는데 빼기를 할 수 없으므로 개수 체크를 한다.
      // 학생 구현에 오류가 있을 수 있으므로 reference 구현의 개수를 기준으로 한다.
      // 만일 학생 구현에 오류가 있어서 원소가 없는데 빼려 한다면 오류가 나든 crash 하든 할 것이다.
      if (compare.size() > 0) {
        v.pop_back();
        compare.pop_back();
      }
    }
  }

  if (v.size() != compare.size()) {
    std::cout << "Tried " << MAX_TRIES << " operations.\n";
    std::cout << "MyList has " << v.size() << " elements, while Reference Vector has " << compare.size() << "\n";
    return 1;
  }

  // 남아 있는 것들을 빌 때까지 pop 하면서 맨 마지막 원소들을 비교한다.
  // 학생들이 empty() 함수를 구현하지 않기 때문에 size() 를 이용해 loop 을 돌면 너무 오래 걸린다.
  // 따라서 reference list 의 empty() 만을 활용한다.
  int nMismatched = 0;
  while (compare.empty() == false) {
    int &compare_back = compare.back();
    int &v_back = v.back();
    if (compare_back != v_back) {
      ++ nMismatched;
    }
    compare.pop_back();
    v.pop_back();
  }

  if (nMismatched > 0) {
    std::cout << nMismatched << " elements were wrong.\n";
    return 2;
  }

  int v_size = v.size();
  if (v_size != 0) {
    std::cout << "v still has " << v_size << " element(s). Wrong.\n";
    return 3;
  }

  auto end = std::chrono::system_clock::now();
  auto duration = end - start;

  std::cout << "Tests were completed. Elapsed " << std::chrono::duration_cast<std::chrono::milliseconds>(duration).count() << " msec\n";
  return 0;
}
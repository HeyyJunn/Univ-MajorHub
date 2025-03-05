// int main() {
//   const int NUM_STUDENTS = 10;
//   const int NUM_TEACHERS = 5;
//   int current = 20;

//   const int* p = &NUM_STUDENTS;
//   *p = 30;

//   p = &NUM_TEACHERS;
//   p = &current;

//   int* p2 = &NUM_STUDNETS;  // 오타, NUM_STUDENTS로 수정 필요
// }

// 1) p 가 가르키는 값이 const 이기 때문에 오류가 발생합니다.
// const int * 로 선언되어있는 포인터는 값을 수정할 수 없습니다.

// 2) int* p2 = &NUM_STUDNETS; 에 오타가 있습니다.
// &NUM_STUDENTS 라고 수정해야 합니다.

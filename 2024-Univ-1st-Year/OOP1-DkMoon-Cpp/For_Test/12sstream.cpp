#include <iostream>
#include <sstream>
#include <string>

int main() {
    std::string input = "42 3.14 Hello";
    std::istringstream iss(input);  // 문자열을 입력 스트림처럼 다룸

    int x;
    double y;
    std::string str;

    iss >> x >> y >> str;  // 공백을 기준으로 데이터를 추출
    std::cout << "x: " << x << ", y: " << y << ", str: " << str << std::endl;  // 출력: "x: 42, y: 3.14, str: Hello"
    return 0;
}
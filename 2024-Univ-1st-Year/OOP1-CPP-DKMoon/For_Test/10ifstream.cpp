#include <fstream>
#include <iostream>
using namespace std;

int main (void) {
    ifstream input{"input.txt"};
    string first, second;
    input >> first >> second;

    string s;
    while (input >> s) cout << s; 
}
#include <iostream> 
#include <fstream>
using namespace std;

int main (void) {

    ofstream output {"output.txt", ios::binary};
    output << "Hello" << 1234 << endl;

    return 0;
}
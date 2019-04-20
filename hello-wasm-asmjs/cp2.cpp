#include <iostream>
#include <algorithm>
using namespace std;

char const*hello(char const* string) {
    return string;
}

int* sortx(int * arr) {
    sort(arr, arr + 5);
    return arr;
}

int main() {
    int array[] = {5,3,2,1,4};
    std::cout << hello("Hello") << ", " << sortx(array)[0] << "\n";
}

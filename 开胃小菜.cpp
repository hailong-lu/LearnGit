#include <iostream>
#include <string>

using std::cout;
using std::endl;

class Test {
    public:
    Test(char *cstr)
        :str(cstr),
         size(str.size())
     {}

    int size;
    std::string str;
};

int main() {
    Test a{"12345"};
    cout << "size:" << a.size << "    str.size:" << a.str.size() << endl;
    return 0;
}
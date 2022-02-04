#include <algorithm>
#include <iostream>
#include <list>

using namespace std;

int main()
{
    int a = 10;
    std::list<int> listInt = {10, 20};
    
    listInt.push_front(10);
    listInt.push_front(20);
    listInt.push_front(30);
    
    listInt.sort();

     for (auto& item: listInt)
         cout << item << endl;
    return 0;
}

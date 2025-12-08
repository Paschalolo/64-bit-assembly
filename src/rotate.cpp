#include <cstdio>
#include <iostream>
#include <cstdint>
extern "C"
{
    uint64_t unint64_rotate(uint64_t, size_t);
}
int main()
{
    uint64_t Num{90};
    std::cout << unint64_rotate(Num, 1);
    return 0;
}
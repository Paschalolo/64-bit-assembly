#include <cstdio>
extern "C"
{
    void asmFunc(void);
};
int main()
{
    std::printf("Calling asm main\n");
    asmFunc();
    std::printf("returnde from asm main\n");
    return 0;
}
#include <iostream>
#include "test1.h"

int main(int argc, char const *argv[])
{
    std::cout<<"Hello c++"<<std::endl;
    test1 t1 = test1();
    int result1 = 0;
    result1 = t1.add(2,4);
    printf("the result is %d \n", result1);
    return 0;
}

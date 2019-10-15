#include <stdio.h>
#include "test1.h"

int add2(int p1, int p2)
{
    return p1 + p2;
}

int main(int argc, char const *argv[])
{
    /* code */
    test1 t1 = test1();
    int result = 0;
    int result2 = 0;
    result = t1.add(2,3);
    result2 = add2(2,3);
    printf("the result is %d; %d \n", result,result2);
    return 0;
}



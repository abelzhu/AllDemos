#include <iostream>
#include "test2.h"

#include "test2.h"
#include "test1.h"

int test2::addUsingTest1(int p1, int p2){

    test1 t1 = test1();
    return t1.add(p1, p2);
}


#include "goldilocks.h"
#include <iostream>
int main(){
    goldilocks a = 100;
    goldilocks b = 1000;
    goldilocks c = a * b;
    a.print();
    b.print();
    c.print();

    goldilocksFp2 d(a, b);
    goldilocksFp2 e = d * d;
    e.print();

    goldilocksFp2 f = e - d + goldilocksFp2(2, 4) * d;
    f.print();
    return 0;
}

/*
g++ -c goldilocks.cpp -o goldilocks.o
ar rcs libgold.a goldilocks.o
ranlib libgold.a
g++ -o test test.cpp -L. -lgold

*/
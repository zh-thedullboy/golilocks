#include "goldilocks.h"
#include <iostream>
int main(){
    goldilocks a(1ull << 60);
    goldilocks b(1ull << 61);
    goldilocks c(1ull << 62);
    goldilocks d(1ull << 63);
    goldilocksFp2 n1(a, b);
    goldilocksFp2 n2(c, d);

    (n1 * n2).print();
    (n1 - n2).print();
    return 0;
}

/*
g++ -c goldilocks.cpp -o goldilocks.o
ar rcs libgold.a goldilocks.o
ranlib libgold.a
g++ -o test test.cpp -L. -lgold

*/
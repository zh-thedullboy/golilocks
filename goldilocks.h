#ifndef _GOLDILOCKS_H_
#define _GOLDILOCKS_H_

#include <cstdint>
typedef uint64_t i64;
typedef __uint128_t i128;
class goldilocks{
    private:
        i64 p = (((1ull << 32) - 1) << 32) + 1;
    public:
        i64 val;
        goldilocks(i64 v);
        goldilocks  operator+(const goldilocks& n) const;
        goldilocks  operator-(const goldilocks& n) const;
        goldilocks  operator*(const goldilocks& n) const;
        goldilocks  operator=(const i64 n) const;
        goldilocks  operator=(const goldilocks n) const;
        void print() const;
};

class goldilocksFp2{
    private:
        // a =
        static goldilocks w; // ω^2 = w
    public:
        goldilocks a, b;
        goldilocksFp2(i64 a, i64 b);
        goldilocksFp2(goldilocks a, goldilocks b);
        goldilocksFp2  operator+(const goldilocksFp2& n) const;
        goldilocksFp2  operator-(const goldilocksFp2& n) const;
        goldilocksFp2  operator*(const goldilocksFp2& n) const;
        void print() const;
};

// class goldilocksFp2 {
//     private:
//         goldilocks high, low;
//         static GoldilocksField w = 7;  // ω^2 = w
//     public:
    
//         goldilocksFp2 operator+(const goldilocksFp2& other) const {
//             return goldilocksFp2(a + other.a, b + other.b);
//         }
    
//         goldilocksFp2 operator-(const goldilocksFp2& other) const {
//             return goldilocksFp2(a - other.a, b - other.b);
//         }
    
//         goldilocksFp2 operator*(const goldilocksFp2& other) const {
//             // (a + bω)(c + dω) = (ac + bd*w) + (ad + bc)ω
//             GoldilocksField ac = a * other.a;
//             GoldilocksField bd = b * other.b;
//             GoldilocksField real = ac + bd * w;
//             GoldilocksField imag = a * other.b + b * other.a;
//             return goldilocksFp2(real, imag);
//         }
    
//         void print() const {
//             std::cout << "(";
//             a.print();
//             std::cout << ") + (";
//             b.print();
//             std::cout << ")ω";
//         }
//     };

#endif
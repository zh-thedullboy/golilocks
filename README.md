# goldilocks

### Usage

##### 生成静态库

```bash
make all
```

##### 编译测试代码并执行

```bash
make test
```

### Syntax

##### 初始化一个goldilocks数:

```cpp
goldilocks fieldelement(123);
//or goldilocks fieldelement = 123;

goldilocksFp2 ex(123, 456);
// or goldilocksFp2 ex(goldilocks, goldilocks);
```

##### 打印

```cpp
fieldelement.print();

// 123
// 123 + 456\omega
```

##### 运算

```cpp
goldilocks a(123), b(456);
a + b;
a - b;
a * b;

goldilocksFp2 e(123, 456), f(456, 123);
e + f;
e - f;
e * f;
```


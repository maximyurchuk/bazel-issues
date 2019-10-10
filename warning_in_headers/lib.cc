#include <foo.h>

#include <iostream>

void bar()
{
    int value = foo();
    std::cout << "foo result = " << value << std::endl;
}
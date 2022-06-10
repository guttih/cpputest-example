# CPPUTest example project

A CppUTest skeleton project I created to use as a template to easily start a 
new Test driven development project in C++ using make

## Requirements

In order to be able to build this project you need to have installed [CppUTest] and [lcov]

### installing requirements

1. lcov (Code coverage)
    ```
    sudo dnf -y install lcov
    ```

2. CppUTest (Unit test framework)
    ```
    mkdir ~/repos
    cd ~/repos
    git clone https://github.com/cpputest/cpputest.git
    cd ~/repos/cpputest/cpputest_build
    autoreconf .. -i
    ../configure
    make
    make install

    ```

### Getting this repository 
```
mkdir -p ~/repos
cd ~/repos
git clone 
```

## references 
- [CppUTest] and the repository at [CppUTest repo]
- [lcov] and the repository at [lcov repo]
- [sparkpost blog getting-started-cpputest](https://www.sparkpost.com/blog/getting-started-cpputest/)

### further to read
 - [Google test Code Coverage Report ](https://medium.com/@naveen.maltesh/generating-code-coverage-report-using-gnu-gcov-lcov-ee54a4de3f11)



[CppUTest]: https://cpputest.github.io/
[CppUTest repo]: https://github.com/cpputest/cpputest
[lcov]: http://ltp.sourceforge.net/coverage/lcov.php
[lcov repo]: https://github.com/linux-test-project/lcov
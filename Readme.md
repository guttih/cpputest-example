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
1. Get this repository
    ```
    mkdir -p ~/repos
    cd ~/repos
    git clone https://github.com/guttih/cpputest-example.git
    cd cpputest-example
    ```

2. Now you need to change the first line in two Make files.
   1. Give the command `pwd` to get the current directory path of the cpputest-example directory.
   2. In the following two files, set the value of the  **PROJECT_DIR** variable to the directory you got from above:
      - Makefile
      - tests/Makefile
3. Test if everything works
    1. Build all
        ```
        cd ~/repos/cpputest-example
        make allcov
        ``` 
    2. Browser should open and show you 33.3% code coverage.

4. Available make commands
    - `make main` : build the app which you can run with command  `./app`
    - `make  test` : build and run the tests
    - `make  all` : build the app and run tests
    - `make allcov` : build the app and run tests and launch code coverage report in a web browser
    - `make  coverage` : create a code coverage report.
    - `make  clean` : remove all build-, object-, and code coverage files
    - `make  clean_coverage` : remove all code coverage files

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
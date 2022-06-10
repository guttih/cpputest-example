#include <stdlib.h>
#include <stdio.h>
#include "code.h"

int untestedFunc( int a, int b )
{
    return a + b;
}

int main( void )
{
    test_func();
    printf( "hello world!\n" );
    printf( "untestedFunc(2,3) = %d\n", untestedFunc( 2, 3 ) );
    exit( 0 );
}
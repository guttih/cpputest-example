#!/usr/bin/env bash

DIR=$( echo "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" )
errorColor=$(echo -en '\033[01;31m')
norm=$(echo -en '\033[0m')


#Function: replaceProjectDir()
#
#Brief: Sets a new project directory in a make file
#
#Argument 1($1): File to change
#Argument 2($2): new value
replaceProjectDir(){
    if [ $# -ne 2 ]; then echo "${errorColor}Invalid number of parameters provided to $FUNCNAME${norm}"; exit 1; fi

    declare FILE=$1
    if [[  ! -f $FILE  ]]; then
        echo "${errorColor}File \"$FILE\" does not exist${norm}"; exit 1;
    fi

    sed -i 's,^\s*PROJECT_DIR=.*$,PROJECT_DIR='"$2"',g' $1
}


replaceProjectDir "$DIR"/Makefile "$DIR"
replaceProjectDir "$DIR"/tests/Makefile "$DIR"


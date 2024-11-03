#!/usr/bin/env bash

main() {
    
    # Test if divisible by 3
    if [ $(($1 % 3)) == 0 ]; then
        var="Pling"
    fi
    # Test if divisible by 5
    if [ $(($1 % 5)) == 0 ]; then
        var="${var}Plang"
    fi
    # Test if divisible by 7
    if [ $(($1 % 7)) == 0 ]; then
        var="${var}Plong"
    fi

    if [ -z "$var" ]; then
        echo "$@"
    else
        echo "$var"
    fi
}

main "$@"
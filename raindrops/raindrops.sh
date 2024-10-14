#!/bin/bash

main() {
    var_pling=""
    var_plang=""
    var_plong=""

    # Test if divisble by 3
    if [ $(($1 % 3)) == 0 ]; then
        var_pling="Pling"
    fi
    # Test if divisble by 5
    if [ $(($1 % 5)) == 0 ]; then
        var_plang="Plang"
    fi
    # Test if divisble by 7
    if [ $(($1 % 7)) == 0 ]; then
        var_plong="Plong"
    fi

    if [[ -z $var_pling && -z $var_plang && -z $var_plong ]]; then
        echo $1
    else
        echo "$var_pling$var_plang$var_plong"
    fi
}

main "$@"
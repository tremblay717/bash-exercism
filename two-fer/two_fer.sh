#!/usr/bin/env bash

main() {

    if [ $# -eq 0 ]; then
        
        echo "One for you, one for me."

    else
        for var in "$@"
        do  
            echo "One for $var, one for me."
            break            
        done
    fi
}

main "$@"
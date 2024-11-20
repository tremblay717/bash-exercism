#!/usr/bin/env bash
main () {

    var1="$1"
    var2="$2"
    
    if [ "$#" -ne 2 ]; then
        echo "Usage: hamming.sh <string1> <string2>"
        return 1 # Specify error    
    elif [ "$var1" = "$var2" ]; then
        echo  "0"
    elif [ ${#var1} -ne ${#var2} ]; then
        echo "strands must be of equal length"
        return 1
    elif [ ${#var1} -eq ${#var2} ]; then
        diff=0
        i=0
        while [ $i -lt ${#var1} ]
        do
            if [ "${var1:i:1}" != "${var2:i:1}" ]; then
                diff=$((diff + 1))
            fi
            i=$((i + 1))
        done
        echo "$diff"
    fi
}

main "$@"
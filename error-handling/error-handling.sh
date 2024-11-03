#!/usr/bin/env bash

main() { 
  if [ "$#" -ne 1 ]; then
    echo "Usage: error_handling.sh <person>"
    return 1 # Specify error
  else
    echo "Hello, $1"
  fi
}

main "$@"
#!/bin/bash

read -p "Enter a number: " var
factorial() {
    if (( $1 <= 1 )); then
        echo 1
    else
        prev=$(factorial $(( $1 - 1 )))
        echo $(( $1 * prev ))
    fi
}

factorial $var

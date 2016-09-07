#!/bin/bash

cmd="adduser"
cmd_UserHome="-M"

if [[ "$1" != 's/*' ]]; then
    cmd_UserHome="-m"

    name="$1"
    userHome=""
    groups=""
    
    if [[ "$2" != 's/*' ]]; then
        userHome="-m -d $2"
    else
        userHome="-M" 
    fi
    
    if [[ "$3" != 's/*' ]]; then
        groups="-G $3"
    fi
    
    exec $cmd $name $userHome $groups
    
else
    echo "FAILURE in 'addUser'. The Username must consist of a valid String! '$1'"
fi

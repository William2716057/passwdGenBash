#!/bin/bash

#set length
length=12

#check if length has been provided
if [ $# -eq 1 ]; then
	length=$1
fi

#generate password
password=$(< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-$length};echo;)

echo "Password: $password"


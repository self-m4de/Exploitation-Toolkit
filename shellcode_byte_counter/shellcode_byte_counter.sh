#!/bin/bash

file=$1

if [[ $# -eq 0 ]] ; then
    echo 'Usage: ./shellcode_byte_counter.sh SHELLCODE_FILE'
    exit 0
fi

sed -i 's/"//g' $file
sed -i 's/\\/\n\\/g' $file
sed -i '/^\s*$/d' $file
cat $file |wc -l

#!/bin/sh

# adding pattern from folder's name to front recursively

for d in */ ; do
    #echo "$d"
    if [[ $d =~ ([0-9]{4}) ]]; then
        echo "matched part is ${BASH_REMATCH[1]}"
        echo "${d//${BASH_REMATCH[1]}/${BASH_REMATCH[1]} }"
        mv "$d" ${BASH_REMATCH[1]}"$d"
    fi
done
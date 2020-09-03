#!/bin/sh

# adding space after pattern in folder's recursively

for d in */ ; do
    if [[ $d =~ ([0-9]{4}) ]]; then
        echo "matched part is ${BASH_REMATCH[1]}"
        echo "${d//${BASH_REMATCH[1]}/${BASH_REMATCH[1]} }"
        mv "$d" "${d//${BASH_REMATCH[1]}/${BASH_REMATCH[1]} }"
    fi
done
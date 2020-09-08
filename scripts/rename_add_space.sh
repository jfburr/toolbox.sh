#!/bin/sh
# Copyright (C) JF Burr (gre39JFroi@burr.soy)

# adding space after pattern in folder's recursively
# $1 pattern to match (example: [0-9]{4})

pattern=$1
datetime=date +"%m-%d-%y_%T"

echo "$datetime: Starting loop"
for d in */ ; do
    if [[ $d =~ ([0-9]{4}) ]]; then
        echo "$datetime: Matched part is ${BASH_REMATCH[1]}"
        mv "$d" "${d//${BASH_REMATCH[1]}/${BASH_REMATCH[1]} }"
    fi
done
echo "$datetime: Done"
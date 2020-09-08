#!/bin/sh
# Copyright (C) JF Burr (gre39JFroi@burr.soy)

# adding pattern from folder's name to front of the name recursively
# $1 pattern to match (example: [0-9]{4})

pattern=$1
datetime=date +"%m-%d-%y_%T"

echo "$datetime: Starting loop"
for d in */ ; do
    if [[ $d =~ ($pattern) ]]; then
        echo "$datetime: Matched part is ${BASH_REMATCH[1]}"
        mv "$d" ${BASH_REMATCH[1]}"$d"
    fi
done
echo "$datetime: Done"
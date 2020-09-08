#!/bin/sh
  
# requires rsync
# recursively collecting all folders with specific pattern in pattern folder

pattern="2014"

mkdir "$pattern" # will fail if exist

for d in */ ; do
    #echo "$d"
    if [[ $d =~ "$pattern" ]]; then
        echo "Moving $d"
        rsync -av "$d"/ "$pattern"/
    fi
done

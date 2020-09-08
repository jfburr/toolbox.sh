#!/bin/sh
# Copyright (C) JF Burr (gre39JFroi@burr.soy)

# requires rsync to be installed
# recursively collecting given folders with specific pattern from given subfolders to destination folder
# $1 is the name/path of the destination folder
# $2 is the pattern for the subfolders the system is supposed to sync content from

dest_folder=$1
folder_pattern=$2
datetime=date +"%m-%d-%y_%T"

mkdir "$sub_folder"

echo "$datetime: Starting loop"
for d in */ ; do
    #echo "$d"
    if [[ $d =~ "$folder_pattern" ]]; then
        echo "$datetime: Moving $d"
        rsync -av  "$d"/ "$dest_folder"/
    fi
done
echo "$datetime: Done"

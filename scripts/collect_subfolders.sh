#!/bin/sh
# Copyright (C) JF Burr (gre39JFroi@burr.soy)

# requires rsync to be installed
# recursively collecting given folders with specific pattern from given subfolders to destination folder
# $1 is the name/path of the destination folder
# $2 is the pattern that needs to match the subfolder of the current folder to sync from
# $3 is the sub-subfolder constently (having always the same names) present in the recursive sub folders

dest_folder=$1
folder_pattern=$2
sub_folder=$3
datetime=date +"%m-%d-%y_%T"

mkdir "$sub_folder"

echo "$datetime: Starting loop"
for d in */ ; do
    if [[ $d =~ "$folder_pattern" ]]; then
        echo "$datetime: Syncing $d"
        rsync -av  "$d$sub_folder"/ "$dest_folder"/
    fi
done
echo "$datetime: Done"

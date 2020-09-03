#!/bin/sh

# requires rsync to be installed
# recursively collecting given folders with specific pattern from given subfolders to destination folder

sub_folder="2009"
dest_folder="2009"
folder_path="drive"

mkdir "$sub_folder"

for d in */ ; do
    #echo "$d"
    if [[ $d =~ "$folder_path" ]]; then
        echo "Moving $d"
        rsync -av  "$d$sub_folder"/ "$dest_folder"/
    fi
done
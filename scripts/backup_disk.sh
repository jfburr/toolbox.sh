#!/bin/sh
# Copyright (C) JF Burr (gre39JFroi@burr.soy)

# requires gzip to be installed
# compresses a given volume from /dev
# $1 volume name
# $2 gzip file name

sudo dd bs=4M if=/dev/$1 | gzip > $2.img.gz

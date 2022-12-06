#!/bin/sh


for file in *\\*; 
	do 
		echo $file
		echo  $file | sed -e 's/\/_/g'
		mv  $file $(echo  $file | sed -e 's/[^A-Za-z0-9._-]/_/g')
done

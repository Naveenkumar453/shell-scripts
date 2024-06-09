#!/bin/bash

source=/opt/src
dest=/opt/bkp/
for file in $source/*txt;
do
	base_name=$(basename "$file")
	timestamp=$(date '+%d-%m-%Y-%H%M%S')
#	cp  $file ${dest}${base_name}_$timestamp
	cp  ${file} ${dest}${base_name}_$timestamp
done

#This script will check the permissions of files from a given path.
#!/bin/bash
if [[ $# -ne 1 ]]
then
	echo "Usage: $0 <path of the directory>"
	exit 1
fi

path=$1
for file in $(ls $path)
do
	if [[ -x $file ]]
	then
		echo "$file has executable permissions"
	else
		echo "$file does not have executable permissions"
	fi
done

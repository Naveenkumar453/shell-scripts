#Script to Monitor Disk Usage and alert
#!/bin/bash
THRESHOLD=80
df -kh |grep -vE 'Filesystem|tmpfs' |awk '{print $5 " " $1}' | while read output;
do
	usage=$(echo $output|awk '{print $1}'|sed 's/%//g')
	partition=$(echo $output |awk '{print $2}')

	if [ $usage -lt $THRESHOLD ];then
		echo "Warning: Disk Usage high detected on $partition ($usage%)"
	else
		echo "Disk usage is under threshold $usage%"
	fi

done

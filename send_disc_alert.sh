#This script monitors disk usage and send email alert
#!/bin/bash
EMAIL="name@domain.com"
DISK_USAGE=$(df -H|egrep -v 'devtmpfs|tmpfs' |grep -w /dev/xvda1 |awk '{print $5}'| sed 's/%//')

if [[ DISK_USAGE -gt 20 ]]
then
	echo "The file systems usage on /dev/xvda is: $DISK_USAGE" |mail -s "Disk alert on /dev/xvda1" $EMAIL
fi

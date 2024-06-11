#this script will send the disk information to email
#!/bin/bash
EMAIL="name@domain.com"
THREASHOLD=400
FREE_MEM=$(free -mt|grep Total|awk '{print $4}')

if [[ $FREE_MEM -lt $THREASHOLD ]]
then
	echo "Server is running with low memory\navailable RAM: $FREE_MEM" | mailq -s "RAM INFO $(date)" $EMAIL
fi
[root@ip-172-31-80-203 shell_scripts]# cat disk_alert.sh
#!/bin/bash
EMAIL="name@domain.com"
echo -e "The file system Disk Utilization on $(hostname -s) is:\n  $(df -H|egrep -v 'devtmpfs|tmpfs')" |mail -s "Disk Utiliztion" $EMAIL

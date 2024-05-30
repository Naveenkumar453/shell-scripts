#This script Monitors CPU Memory and Disk for every 5 seconds. The scripts starts at system seconds and runs upto 100 seconds.
#This vallue 100 in the seconds can be changed according to the reqirement.
#!/bin/bash
printf "Memory\t\tDisk\t\trCPU\n"
end=$((SECONDS+100))

while [ $SECONDS -lt $end ];do
	MEMORY=$(free -m | awk 'NR==2{printf "%.2f%%\t\t", $3*100/$2 }')
	DISK=$(df -h | awk '$NF=="/"{printf "%s\t\t", $5}')
	CPU=$(top -bn1 | grep load | awk '{printf "%.2f%%\t\t\n", $(NF-2)}')

	echo "$MEMORY$DISK$CPU"
	sleep 5
done

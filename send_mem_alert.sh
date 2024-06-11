#This script will check the memory usage and send the memory alerts
#!/bin/bash
EMAIL="name@domain.com"
THREASHOLD=400
FREE_MEM=$(free -mt|grep Total|awk '{print $4}')

if [[ $FREE_MEM -lt $THREASHOLD ]]
then
	echo "Server is running with low memory\navailable RAM: $FREE_MEM" | mailq -s "RAM INFO $(date)" $EMAIL
fi

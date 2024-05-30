#Shell Script to Monitor any kind of Linux Service by just entering the name of service
#!/bin/bash
echo -n "service name to be monitored Ex: mysql, enter your service :"
read SERVICE
if systemctl is-active $SERVICE; then
   echo "$SERVICE is up and running"
else
   echo "Service is down, attempting to start $service"
   systemctl start $SERVICE
   sleep 20  
   if systemctl is-active $SERVICE; then
      echo "$SERVICE restarted successfully"
   else
      echo "Failed to restart the $service"
	exit 1
   fi

fi

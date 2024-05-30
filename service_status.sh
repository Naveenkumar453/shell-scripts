#To check linux system service, Change the service name according to your service
#!/bin/bash
SERVICE="ckey"
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
   fi
fi

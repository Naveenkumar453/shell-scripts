#!/bin/bash
read -p "Enter your Option: " option
if [ $option == start ]
then
	echo "Starting the service"
	systemctl start chronyd
elif [ $option == stop ]
then
	echo "Stopping the $option service"
	systemctl stop chronyd

elif [ $option == status ]
then
	echo "Verifying the status of service $option"
else
	echo "Your option is not valid"
fi

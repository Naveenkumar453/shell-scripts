#!/bin/bash
if [[ $(id -u) -eq 0 ]]
then

	if systemctl status nginx 1>/dev/null 2>/dev/null
	then
		echo "Service is already up and running"
	else
		systemctl start nginx
		echo "Service has been started successfully"
	fi
else
	echo "You do not have permissions, get permissions from sudo"
fi

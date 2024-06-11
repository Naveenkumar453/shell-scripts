#This script can check any service and any action on the respective service in linux
#!/bin/bash
#read -p "Enter your service to execute your action: " servicename
#read -p "Enter your action on the service $servicename :" action

if [[ $# -ne 2 ]]
then
	echo "Hey admin, please run this script as follows"
	echo "Usage: <script name> <servicename> <action>"
	echo "Valid actions are: start stop status restarti"
	exit  1
fi
servicename=$1
action=$2
systemctl $action ${servicename}

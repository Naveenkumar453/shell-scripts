#We need to mentions server list from a file
EOF<< [root@deployment-server ~]# cat servers.txt 
10.76.177.92
10.76.177.79
10.76.177.85
10.76.177.76
10.76.177.86
EOF
==========================
#Script starts here
#!/bin/bash
#for each_serv in 10.76.177.85 10.76.177.86
for each_serv in $(cat servers.txt)
do 
for each_cmd in date uptime "free -g"
do
	echo "The $each_cmd command output on server $each_serv"
	ssh -i /home/cloud-user/cb0459-bcmt-cluster.ppk -t cloud-user@$each_serv "$each_cmd"
	echo "--------------------"
done
done

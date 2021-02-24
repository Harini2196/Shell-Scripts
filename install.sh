#!/bin/bash

#Enter the process 
read -p "Enter the process - " process

#Take user input for service
read -p "Enter the service/package - " service

if [ $process == install ]
then
 if [ $service == httpd ]
 then
    if [ -f /usr/lib/systemd/system/httpd.service ]
    then 
       echo "package already exists"
    else
       sudo yum install $service -y
       sudo service httpd start
    fi
 elif [ $service == all ] 
 then
    sudo yum update -y
 else
    echo "invalid entry"
 fi
elif [ $process == uninstall ]
then
 if [ $service == httpd ]
 then
    if [ -f /usr/lib/systemd/system/httpd.service ]
    then
       echo "package already exists. staring uninstall"
    else
       sudo yum remove $service -y
       sudo service httpd start
    fi
 elif [ $service == all ]
 then
    sudo yum update -y
 else
    echo "invalid entry"
 fi
fi

#!/bin/bash
sudo yum install httpd -y
sudo service httpd -y
sudo yum install -y java-1.8.0-openjdk
java -version
cd /usr/local/src
wget http://www-us.apache.org/dist/maven/maven-3/3.5.4/binaries/apache-maven-3.5.4-bin.tar.gz
tar -xf apache-maven-3.5.4-bin.tar.gz
mv apache-maven-3.5.4/ apache-maven/ 
sudo vim /etc/profile.d/maven.sh

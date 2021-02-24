#!/bin/bash

#Installing dependencies
sudo yum install curl policycoreutils openssh-server postfix -y
sudo service enable sshd
sudo service sshd start
sudo service postfix on
sudo chkconfig postfix on

#running the script for repository 
curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.rpm.sh | sudo bash

#Installing gitlab
sudo yum install gitlab-ce -y

sudo vi /etc/gitlab/gitlab.rb

sudo gitlab-ctl reconfigure

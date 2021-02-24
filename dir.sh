#!/bin/bash

#Take user input for file name to be created

read -p " Enter file name to be created -" filename

export filename

touch $filename

sudo rmdir dir
mkdir dir
cd dir/
sudo rmdir /app2
sudo mkdir /app2

sudo mv $filename dir/app2

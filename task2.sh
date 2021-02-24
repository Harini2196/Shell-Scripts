#!/bin/bash

#create a directory with user input
read -p "Enter the directory name - " dir
mkdir $dir && cd $dir

#creating 4 directories
for i in dev stage qa prod
do
 mkdir $i && cd $i
 touch $i.txt
 cd ..
done

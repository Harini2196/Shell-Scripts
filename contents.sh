#!/bin/bash

#taking user input for content in the file
read -p "ENter the content -" $data

echo $data >> $filename

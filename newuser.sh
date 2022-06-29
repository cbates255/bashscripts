#!/bin/bash

#script to add username with home directory, and check to make sure the username doesn't already exist

echo "Enter the name of the new user"
read newname

grep "$newname" /etc/group >/dev/null

if [ $? -eq 0 ]
then 
	echo "This username already exists"
	exit 1
else
	sudo useradd -m $newname > /dev/null
fi



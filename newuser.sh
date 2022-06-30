#!/bin/bash

#script to add username with home directory, and check to make sure the username doesn't already exist

for newname in "$@"; do

grep "$newname" /etc/passwd >/dev/null

if [ $? -eq 0 ];
then 
	echo "The name $newname already exists"
else
	sudo useradd -m $newname > /dev/null
	echo "The name $newname has been created"
fi
done


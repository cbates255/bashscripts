#!/bin/bash

#script to add username with home directory

echo "Enter the username"
read newuser

sudo useradd -m $newuser >> /dev/null

echo "The user $newuser has been created"

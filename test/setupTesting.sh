#! /bin/bash


#create user 

sudo service ssh status
if [ $? -ne 0 ]; then sudo service ssh start; echo "starting ssh daemon"; fi

# create user

sudo useradd -m "test"

# generate ssh key 
#ssh-keygen -t rsa

sudo userdel "test"

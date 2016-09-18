#! /bin/bash


#create user 
useradd -m "test"


service sshd status
if [$? -ne 0]; then service sshd start; echo "starting ssh daemon"; fi

# generate ssh key 
sh-keygen -t rsa

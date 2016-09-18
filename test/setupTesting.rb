#! /usr/bin/ruby
#create user 

def run(cmd)
	status = system(cmd)
	raise "#{cmd} returned non zero! FAIL" if status == false
end

run("sudo ssh-keygen -t rsa")
run("sudo cat /root/.ssh/id_rsa.pub >> /root/.ssh/authorized_keys")
# generate ssh key 

puts("test ssh localhost")
run("ssh root@127.0.0.1 \"whoami\" ")


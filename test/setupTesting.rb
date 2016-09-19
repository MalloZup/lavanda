#! /usr/bin/ruby
#create user 

def run(cmd)
	status = system(cmd)
	raise "#{cmd} returned non zero! FAIL" if status == false
end

run("sudo ssh-keygen -t rsa -N \"\" -f /root/.ssh/id_rsa")
run("sudo touch /root/.ssh/authorized_keys"
run("sudo touch ~/.ssh/authorized_keys"

# thx to tomas and metan.
run("sudo cat /root/.ssh/id_rsa.pub | sudo tee /root/.ssh/authorized_keys")
run("sudo cat /root/.ssh/id_rsa.pub | sudo tee /~/.ssh/authorized_keys")
# generate ssh key 
run("sudo chmod -R 600 /root/.ssh")
run("sudo chmod -R 600 /~/.ssh")

puts("testing  ssh localhost")
run("ssh root@127.0.0.1 \"whoami\" ")
puts("*********** SETTING UP FOR TWOPENCE DONE *********")

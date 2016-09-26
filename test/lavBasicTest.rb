#! /usr/bin/ruby

require "twopence"
require "lavanda"


## actual tests, (basics).

class LavandaBasic_TEST 
	
	def logger(msg)
	  puts
	  puts "=" * 30
	  puts msg
	  puts "=" * 30
	end

	def logger_test(msg)
	  puts "+" * 30
	  puts msg
	  puts "+" * 30
	end

	# this test init only the twopence target.
	# note that the ssh key has to be copied
	def init_target
		logger_test("INIT_TARGET_TEST")
		$target = Twopence.init("ssh:127.0.0.1")
		cmd = "whoami"
		out, _local, _remote, code = $target.test_and_store_results_together(cmd, "root", 600)
		puts out
		if out.strip != "root" 	
		  puts "OUTPUT GOT : #{out}#" 
		  raise "TWOPENCE SHOULD return root as testcommand" 	
		end
                logger("TWOPENCE TARGET SUCCESSEFULLY INITIALIZED, and WHOAMI_CMD OK!")
        end

	# test the run function
	def run_cmd()
		 $target.extend(LavandaBasic)
		 logger_test("TEST_LAVANDA_BASICS: RUN_CMD")
		 out, code, empty = $target.run("whoami")
		 puts out + "code " + code.to_s
		 raise "3th var should be empty" if not empty.nil?
		 raise "should return root" if out.strip != "root"
		 logger("LAVANDA_BASIC MODULE : RUN test OK!")                 
	end

        def run_basic()
        #        def run(cmd, user = "root" , timeout = 100)
                 out, code = $target.run("whoami", true)
                 raise "code should be 0" if code != 0
                 raise "should return testuser" if out.strip != "root"
                 logger_test("testing timeout")
                 out, code = $target.run("sleep 500", "root", 5)
		 puts "timeout from 500 killed with 5 seconds"
        end



end
# MAIN **************
test = LavandaBasic_TEST.new
test.init_target()
test.run_cmd()
test.run_basic()


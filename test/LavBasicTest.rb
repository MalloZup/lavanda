require 'minitest/autorun'
require "Lavanda.rb"
require "twopence"

# http://ruby-doc.org/stdlib-2.0.0/libdoc/minitest/rdoc/MiniTest/Assertions.html
# http://www.mattsears.com/articles/2011/12/10/minitest-quick-reference/


# to run the test you must copy the ssh key in the machine.
class Twopence_INIT < Minitest::Test
	def init_target
		$locHost = Twopence.init("ssh:127.0.0.1")
		cmd = "whoami"
		out, _local, _remote, code = $locHost.test_and_store_results_together(cmd, "root", 600)
 		assert out == "root"
		assert code == 0

class LavandaBasic < Minitest::Test
	def test_FILE_REMOTE
	  assert "GINO" == "GINO"
	end
end

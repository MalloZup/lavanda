require 'twopence'


# this class is do operations  on files that are remote hosts under tests.
module LAVANDA_REMOTE_FILE
      def file_exist(file)
  	_out, _local, _remote, _code = self.test_and_store_results_together("test -f #{file}", "root", 500)
        raise "file doesn't exist" if code != 0
      end

end


module LAVANDA_BASIC
	def run(cmd, user = "root" , timeout = 100)
  		out, _local, _remote, code = self.test_and_store_results_together(cmd, user, timeout)
		return out, code
	end
end


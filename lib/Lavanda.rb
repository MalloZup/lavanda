require 'twopence'

# this class is do operations  on files that are remote hosts under tests.
module Rem_File
      def file_exist(file)
  	_out, _local, _remote, _code = self.test_and_store_results_together("test -f #{file}", "root", 500)
        raise "file doesn't exist" if code != 0
      end

end

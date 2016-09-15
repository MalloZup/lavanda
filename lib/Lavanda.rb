require 'twopence'

# this class is do operations  on files that are remote hosts under tests.
class Remote_File
      def initialize(node)
          @node = node
      end

      def file_exist(file)
  	_out, _local, _remote, _code = node.test_and_store_results_together("test -f #{file}", "root", 500)
        raise "file doesn't exist" if code != 0
      end

end

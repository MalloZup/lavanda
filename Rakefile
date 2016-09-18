$LOAD_PATH.push(File.join(File.dirname(__FILE__), 'lib'))
require 'bundler/gem_tasks'
require 'rake/testtask'

extra_docs = ['README*', 'TODO*', 'CHANGELOG*']

task default: [:test]

Rake::TestTask.new do |t|
  t.test_files = Dir.glob(File.join(Dir.pwd, '/test/*.rb'))
  t.verbose = true if ENV['DEBUG']
end

task :default => [:test]

desc 'building lavanda gem'
task :build do
  puts "building source code from lavanda gems !"
  cmd =`gem build lavanda.gemspec`
end
desc 'install lavanda'
task :install do
  puts "installing lavanda"
  cmd = `gem install lavanda*.gem`
end
desc 'testing lavanda'
task :test => [:build, :install] do
  puts "Testing Lavanda"
end

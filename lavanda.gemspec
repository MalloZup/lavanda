Gem::Specification.new do |s|
  s.name        = "lavanda"
  s.version     = "0.0.2"
  s.date        = "2016-09-15"
  s.summary     = "lavanda gem"
  s.description = "lavanda ruby testing utilities for multimachines"
  s.authors     = "Dario Maiocchi"
  s.email       = "dmaiocchi@suse.com"
  s.files       = "lib/lavanda.rb"
  s.license     = "GPL-2.0"
  s.homepage	= "https://github.com/MalloZup/lavanda"
  
  s.add_development_dependency('rake', '~> 0')
  s.add_development_dependency('minitest', '~> 0' )
  s.add_development_dependency('minitest-reporters', '~> 0')
  s.add_development_dependency('rubocop', '~> 0')
end

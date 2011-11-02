# coding: UTF-8

Gem::Specification.new do |s|
  s.name              = "week"
  s.version           = "0.0.2"
  s.date              = %q{2011-08-10}
  s.platform          = Gem::Platform::RUBY
  s.authors           = ["Sergey Gerasimov"]
  s.email             = ["mail@grsmv.com"]
  s.homepage          = "http://github.com/grsmv/week"
  s.summary           = "Simple gem to work with weeks as arrays of date objects."
  s.description       = "Simple gem to work with weeks as arrays of date objects."
  s.rubyforge_project = s.name
  s.files             = ['README.md', 'CHANGELOG.md', 'LICENSE', 'lib/week.rb']

  #s.required_rubygems_version = ">= 1.3.6"
  
  # If you have runtime dependencies, add them here
  # s.add_runtime_dependency "other", "~> 1.2"
  
  # If you have development dependencies, add them here
  # s.add_development_dependency "another", "= 0.9"

  # The list of files to be contained in the gem
  # s.executables   = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  # s.extensions    = `git ls-files ext/extconf.rb`.split("\n")
  
  #s.require_path = 'lib/week.rb'

  # For C extensions
  # s.extensions = "ext/extconf.rb"
end

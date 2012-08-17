lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'enat/version'

Gem::Specification.new do |s|
  s.name     = "enat"
  s.version  = Enat::VERSION
  s.platform = Gem::Platform::RUBY

  s.authors            = ["Hari Gopal"]
  s.email              = "harigopal1@gmail.com"
  s.summary            = "Does something every specified interval."
  s.description        = "Executes a block of code at intervals of time, without guarantee of timing."
  s.homepage           = "http://github.com/harigopal/enat"

  s.required_ruby_version = '>= 1.9.2'

  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"

  s.add_dependency "activesupport"

  s.files              = `git ls-files`.split("\n") - ["Gemfile.lock", ".rvmrc"]
  s.test_files         = `git ls-files -- spec/*`.split("\n")
  s.require_paths      = ["lib"]
end
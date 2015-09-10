lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'enat/version'

Gem::Specification.new do |s|
  s.name     = 'enat'
  s.version  = Enat.version
  s.platform = Gem::Platform::RUBY

  s.author             = 'Hari Gopal'
  s.email              = 'harigopal1@gmail.com'
  s.summary            = 'Does something every specified interval.'
  s.description        = 'Executes a block of code at intervals of time, without guarantee of timing.'
  s.homepage           = 'http://github.com/harigopal/enat'
  s.license            = 'MIT'

  s.required_ruby_version = '>= 1.9.3'

  s.add_development_dependency 'appraisal', '~> 2.0'
  s.add_development_dependency 'rake', '~> 10.0'
  s.add_development_dependency 'rspec', '~> 3.0'

  s.add_dependency 'activesupport', '>= 3.2.13'

  s.files              = `git ls-files`.split("\n") - %w(Gemfile.lock .ruby-version)
  s.test_files         = `git ls-files -- spec/*`.split("\n")
  s.require_paths      = %w(lib)
end
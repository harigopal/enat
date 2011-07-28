lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'enat/version'

Gem::Specification.new do |s|
  s.name = "enat"
  s.version = Enat::VERSION

  s.authors            = ["Hari Gopal"]
  s.date               = "2011-07-28"
  s.email              = "harigopal1@gmail.com"
  s.description        = "Executes supplied block every supplied instance without guarantee of timing."
  s.summary            = "Does something every specified interval."

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.add_development_dependency "rspec"

  s.files              = `git ls-files`.split("\n") - ["Gemfile.lock", ".rvmrc"]
  s.test_files         = `git ls-files -- {spec}/*`.split("\n")
  s.require_paths      = ["lib"]
end
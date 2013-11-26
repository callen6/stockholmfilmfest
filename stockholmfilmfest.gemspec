# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stockholmfilmfest/version'

Gem::Specification.new do |spec|
  spec.name          = "stockholmfilmfest"
  spec.version       = Stockholmfilmfest::VERSION
  spec.authors       = ["Cori Allen"]
  spec.email         = ["coriallen@gmail.com"]
  spec.description   = %q{stockholmfilmfest makes working with the Stockholm Film Festival's API easy in Ruby programs}
  spec.summary       = %q{work with film festival api}
  spec.homepage      = ""
  spec.license       = "MIT"


  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependencygem "httparty"
  spec.add_development_dependencygem "json"
end

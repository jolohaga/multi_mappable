# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'multi_mappable/version'

Gem::Specification.new do |spec|
  spec.name          = "multi_mappable"
  spec.version       = MultiMappable::VERSION
  spec.authors       = ["Jose Hales-Garcia"]
  spec.email         = ["jose.halesgarcia@uci.edu"]
  spec.summary       = %q{Map attributes and XML.}
  spec.description   = %q{Mix Virtus and ROXML to produce objects that can map between attributes and XML.}
  spec.homepage      = "https://github.com/ucirvine/multi_mappable"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(spec)/})
  spec.require_paths = ["lib"]
  
  spec.add_dependency "virtus"
  spec.add_dependency "roxml"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency "debugger"
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rake_running/version'

Gem::Specification.new do |spec|
  spec.name          = "rake_running"
  spec.version       = RakeRunning::VERSION
  spec.authors       = ["Colin Young"]
  spec.email         = ["me@colinyoung.com"]
  spec.summary       = %q{Adds Rake.running?. That's it.}
  spec.description   = %q{Adds Rake.running? to determine, well, whether the current ruby program is Rake}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rake"

  spec.add_development_dependency "bundler", "~> 1.6"
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'blank_element/version'

Gem::Specification.new do |spec|
  spec.name          = "blank_element"
  spec.version       = BlankElement::VERSION
  spec.authors       = ["Jun Yokoyama"]
  spec.email         = ["jun@larus.org"]
  spec.summary       = %q{manage blank elements of Array objects.}
  spec.description   = %q{manage blank elements of Array objects.(Rails is not required, but ActiveSupport is required.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_dependency 'activesupport'

  spec.add_development_dependency "rspec"
  spec.add_development_dependency "faker"
end

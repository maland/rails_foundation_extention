# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_foundation_extention/version'

Gem::Specification.new do |spec|
  spec.name          = "rails_foundation_extention"
  spec.version       = RailsFoundationExtention::VERSION
  spec.authors       = ["Muhammad H.M. Härter"]
  spec.email         = ["muhammad.haerter@gmail.com"]
  spec.description   = %q{useful rails extentions for ZURB's Foundation framework}
  spec.summary       = %q{adds some helpers to develop faster responsive views with Foundation}
  spec.homepage      = "https://github.com/maland/rails_foundation_extention"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end

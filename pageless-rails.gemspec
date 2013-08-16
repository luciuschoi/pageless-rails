# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pageless/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "pageless-rails"
  spec.version       = Pageless::Rails::VERSION
  spec.authors       = ["Hyo Seong Choi"]
  spec.email         = ["rorlab@gmail.com"]
  spec.description   = %q{To packge pageless plugin with Bundler}
  spec.summary       = %q{Gemify pageless for Ruby on Rails}
  spec.homepage      = "http://rorlab.github.io/pageless-rails/"
  spec.license       = "MIT"

  # spec.files         = `git ls-files`.split($/)
  spec.files = Dir["{lib,vendor}/**/*"] + ["LICENSE.txt", "README.md"]
  # spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  # spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", ">= 3.1"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end

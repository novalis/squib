# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'squib/version'

Gem::Specification.new do |spec|
  spec.specification_version = 2 if spec.respond_to? :specification_version=
  spec.required_rubygems_version = Gem::Requirement.new(">= 0") if spec.respond_to? :required_rubygems_version=
  spec.rubygems_version = '2.2.2'
  spec.required_ruby_version = '>= 2.0.0'

  spec.name          = "squib"
  spec.version       = Squib::VERSION
  spec.license       = "MIT"

  spec.summary       = %q{A Ruby DSL for prototyping card games}
  spec.description   = %q{Squib is a Ruby DSL for prototyping card games}
  spec.authors       = ["Andy Meneely"]
  spec.email         = ["playconfidencegames@gmail.com"]
  spec.homepage      = "https://github.com/andymeneely/squib"

  spec.rdoc_options = ["--charset=UTF-8"]
  spec.extra_rdoc_files = %w[README.md LICENSE.txt]

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'cairo', '~> 1.12.9'
  spec.add_runtime_dependency 'pango', '~> 2.2.0'
  spec.add_runtime_dependency 'roo', '~> 1.13.2'
  spec.add_runtime_dependency 'rsvg2', '~> 2.2.0'
  spec.add_runtime_dependency 'mercenary', '~> 0.3.4'
  spec.add_runtime_dependency 'ruby-progressbar', '~> 1.6'

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rspec-mocks", "~> 3.0"
  spec.add_development_dependency "redcarpet", '~> 3.1.2'
  spec.add_development_dependency "github-markup", '~> 1.3'
  spec.add_development_dependency "yard"
  spec.add_development_dependency "coveralls"

end

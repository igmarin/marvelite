# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'marvelite/version'

Gem::Specification.new do |spec|
  spec.name          = "marvelite"
  spec.version       = Marvelite::VERSION
  spec.authors       = ["Antonio Antillon"]
  spec.email         = ["antillas21@gmail.com"]
  spec.description   = %q{Simple wrapper around the Marvel Comics API}
  spec.summary       = %q{Simple wrapper around the Marvel Comics API}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files = Dir["{lib,spec}/**/*", "[A-Z]*"] - ["Gemfile.lock"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_path = "lib"

  spec.add_dependency "httparty"
  spec.add_dependency "hashie"
  spec.add_dependency "activemodel"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "fakeweb", "~> 1.3"
end

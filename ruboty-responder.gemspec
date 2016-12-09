# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/responder/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-responder"
  spec.version       = Ruboty::Responder::VERSION
  spec.authors       = ["s-jcs"]
  spec.email         = ["shosundberg@gmail.com"]

  spec.summary       = %q{Ruboty to respond to specific kewords listed in json}
  spec.homepage      = "https://github.com/s-jcs/ruboty-responder"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end

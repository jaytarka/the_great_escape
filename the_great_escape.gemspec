# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'the_great_escape/version'

Gem::Specification.new do |spec|
  spec.name          = "the_great_escape"
  spec.version       = TheGreatEscape::VERSION
  spec.authors       = ["jaytarka"]
  spec.email         = ["jaytarka@hotmail.com"]

	spec.summary       = 'Prints escaped strings to console'
	spec.description	 = 'Escape strings with the Object#escape method. This escapes them so they can printed safely but they are not invalidated. Escape and print strings with one method with Object#escape_puts'
  spec.homepage      = 'https://github.com/jaytarka/the_great_escape'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rspec", "~> 3.3"
  spec.add_development_dependency "rake", "~> 10.0"
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'subtitle_processor/version'

Gem::Specification.new do |spec|
  spec.name          = "subtitle_processor"
  spec.version       = SubtitleProcessor::VERSION
  spec.authors       = ["Diego"]
  spec.email         = ["info@diego-suarez.es"]
  spec.summary       = %q{TODO: Fix problems with time in SubRip file. Required.}
  spec.description   = %q{Time shifting
This gem lets shift time in SubRip files when it has a mistake, and you need to shift everything a few seconds back or ahead.

It creates a command line utility to help us to create a new subrip file that is shifted a given amount of milliseconds.

So, for example, if I want to shift everything 2500ms ahead, I would start with this:
01:32:04,283 --> 01:32:07,769
and end up with:

01:32:06,783 --> 01:32:10,269}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "pry"
end

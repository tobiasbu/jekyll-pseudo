# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "jekyll-pseudocode-b/version"

Gem::Specification.new do |spec|
  spec.name        = "jekyll-pseudocode-b"
  spec.version     = Jekyll::PseudoCodeB::VERSION
  spec.authors     = ["Tobias Ulrich", "Victor Bazterra", "Wiktor Macura"]
  spec.email       = ["tobiasbulrich@gmail.com","bazterra@gmail.com", "wmacura@gmail.com"]
  spec.homepage    = "http://github.com/tobiasbu/jekyll-pseudocode-b"
  spec.summary     = %q{A trivial jekyll plugin for formatting pseudocode}
  spec.description = %q{jekyll-pseudocode helps typeset pseudocode with minimal formatting}
  spec.licenses = ["MIT"]

  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # specify any dependencies here; for example:
  spec.add_runtime_dependency "jekyll", "~> 3.0"


  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rspec", "~> 3.5"
  spec.add_development_dependency "rake", "~> 12"
end

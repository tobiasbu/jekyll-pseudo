# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "jekyll-pseudocode-b/version"

Gem::Specification.new do |s|
  s.name        = "jekyll-pseudocode-b"
  s.version     = Jekyll::Pseudo::VERSION
  s.authors     = ["Tobias Ulrich", "Victor Bazterra", "Wiktor Macura"]
  s.email       = ["tobiasbulrich@gmail.com","bazterra@gmail.com", "wmacura@gmail.com"]
  s.homepage    = "http://github.com/wkm/jekyll-pseudo"
  s.summary     = %q{A trivial jekyll plugin for formatting pseudocode}
  s.description = %q{jekyll-pseudocode helps typeset pseudocode with minimal formatting}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_runtime_dependency "jekyll"
end

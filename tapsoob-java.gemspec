# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "tapsoob/version"

Gem::Specification.new do |s|
  # Metadata
  s.name        = "tapsoob"
  s.version     = Tapsoob::VERSION.dup
  s.authors     = ["Félix Bellanger", "Michael Chrisco"]
  s.email       = "felix.bellanger@faveod.com"
  s.homepage    = "https://github.com/Keeguon/tapsoob"
  s.summary     = "Simple tool to import/export databases."
  s.description = "Simple tool to import/export databases inspired by taps but OOB, meaning databases are imported/exported from the filesystem."
  s.platform    = 'java'
  s.license     = "MIT"

  # Manifest
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # Dependencies
  s.add_dependency "sequel", "~> 5.0.0"

  s.add_development_dependency "jdbc-mysql",    "~> 5.1.44"
  s.add_development_dependency "jdbc-postgres", "~> 42.1.4"
  s.add_development_dependency "jdbc-sqlite3",  "~> 3.20.1"
end
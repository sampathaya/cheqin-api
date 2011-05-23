# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cheqin-api/version"

Gem::Specification.new do |s|
  s.name      = 'cheqin-api'
  s.version   = Chaqin::VERSION
  s.platform  = Gem::Platform::RUBY

  s.summary = "Cheqin API"
  s.description = "API client for cheqin.net"

  s.authors   = ['Sampath Munasinghe']
  s.email     = ['sam@artellectual.com']
  s.homepage  = 'http://github.com/sampathnisha/hoptoad-api'

  s.add_dependency(%q<httparty>, [">= 0.5.2"])
  s.add_dependency(%q<hashie>, [">= 0.2.0"])

  s.add_development_dependency('bundler', '~> 1.0')
  s.add_development_dependency('rake', '~> 0.8')
  s.add_development_dependency('rspec', '~> 2.5.0')
  s.add_development_dependency('yard', '~> 0.6')
  s.add_development_dependency('maruku', '~> 0.6')
  s.add_development_dependency('simplecov', '~> 0.3')
  s.add_development_dependency('fakeweb', '~> 1.3.0')

  # ensure the gem is built out of versioned files
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
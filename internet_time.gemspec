# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "internet_time/version"

spec = Gem::Specification.new do |s|
  s.name        = 'internet_time'
  s.version     = InternetTime::VERSION
  s.author      = 'Paul Philippov'
  s.email       = 'themactep@gmail.com'
  s.homepage    = 'https://github.com/themactep/internet_time'
  s.summary     = %Q{Swatch Internet Time extension to Ruby Time class}
  s.description = %Q{Swatch Internet time extension to Ruby Time class}

  s.rubyforge_project = 'internet_time'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency %q<bundler>, ["~> 1.0"]
  s.add_development_dependency %q<rspec>, ["~> 2.11"]
  s.add_development_dependency %q<yard>, ["~> 0.8"]
  s.add_development_dependency %q<rake>, [">= 0"]
  s.add_development_dependency %q<guard-rspec>
end

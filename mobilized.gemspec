# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mobilized/version"

Gem::Specification.new do |s|
  s.name        = "mobilized"
  s.version     = Mobilized::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jon Buda"]
  s.email       = ["jon@onedesigncompany.com"]
  s.homepage    = "http://onedesigncompany.com"
  s.summary     = %q{A simple way for Rails 3 to determine if a visitor is on a mobile device.}
  s.description = %q{A simple way for Rails 3 to determine if a visitor is on a mobile device.}

  s.rubyforge_project = "mobilized"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency('rails', '~> 3.0')
  
  s.add_development_dependency('rspec', '>= 2.0.0')
end

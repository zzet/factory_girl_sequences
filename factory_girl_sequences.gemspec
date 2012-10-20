# -*- encoding: utf-8 -*-
require File.expand_path('../lib/factory_girl_sequences/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Anton Kalyaev"]
  gem.email         = ["anton.kalyaev@gmail.com"]
  gem.description   = %q{factory_girl_sequences provides a rich collection of FactoryGirl sequences}
  gem.summary       = %q{Collection of FactoryGirl sequences}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "factory_girl_sequences"
  gem.require_paths = ["lib"]
  gem.version       = FactoryGirlSequences::VERSION
end
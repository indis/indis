# -*- encoding: utf-8 -*-
require File.expand_path('../../indis-core/lib/indis-core/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Vladimir Pouzanov"]
  gem.email         = ["farcaller@gmail.com"]
  gem.description   = "Intelligent dissasembly framework"
  gem.summary       = "Intelligent dissasembly framework"
  gem.homepage      = "http://www.indis.org/"
  gem.license       = "GPL-3"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "indis"
  gem.require_paths = ["lib"]
  gem.version       = Indis::VERSION
  
  gem.add_runtime_dependency 'main'
  gem.add_runtime_dependency 'terminal-table'
  
  gem.add_runtime_dependency 'indis-core', '~> 0.1.3'
  gem.add_runtime_dependency 'indis-macho', '~> 0.3.1'
  gem.add_runtime_dependency 'indis-arm', '~> 0.3.1'
end

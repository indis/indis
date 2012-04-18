# -*- encoding: utf-8 -*-

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
  gem.version       = "0.1.0" # FIXME: reference Indis::VERSION from indis-core
  gem.add_runtime_dependency 'main'
  gem.add_runtime_dependency 'terminal-table'
  
  gem.add_runtime_dependency 'indis-core'
  gem.add_runtime_dependency 'indis-macho'
  gem.add_runtime_dependency 'indis-arm'
end

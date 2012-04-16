# -*- encoding: utf-8 -*-
require File.expand_path('../lib/indis/version', __FILE__)

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
end

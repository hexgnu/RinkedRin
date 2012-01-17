# encoding: utf-8
require File.expand_path('../lib/rinkedrin/version', __FILE__)

Gem::Specification.new do |gem|
  gem.add_dependency 'faraday', '0.7.5'
  gem.add_dependency 'faraday_middleware'
  gem.add_development_dependency 'json', '~> 1.6'
  gem.add_development_dependency 'rake', '~> 0.9'
  gem.add_development_dependency 'rdoc', '~> 3.8'
  gem.add_development_dependency 'rspec', '~> 2.6'
  gem.add_development_dependency 'simplecov', '~> 0.5'
  gem.add_development_dependency 'vcr', '~> 1.10'
  gem.add_development_dependency 'webmock', '~> 1.7'
  gem.authors = ["Matt Kirk"]
  gem.description = %q{Ruby Wrapper for Linkedin Rest Api}
  gem.email = ['meteor.kirk@gmail.com']
  gem.files = `git ls-files`.split("\n")
  gem.homepage = 'http://github.com/hexgnu/rinkedrin'
  gem.name = 'rinkedrin'
  gem.require_paths = ['lib']
  gem.summary = gem.description
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.version = RinkedRin::VERSION::STRING
end
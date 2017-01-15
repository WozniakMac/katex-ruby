# frozen_string_literal: true
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'katex/version'

Gem::Specification.new do |s|
  s.name = 'katex'
  s.version = Katex::VERSION
  s.authors = ['Gleb Mazovetskiy']
  s.email = ['glex.spb@gmail.com']

  s.summary = 'Renders KaTeX from Ruby.'
  s.description = 'Exposes KaTeX server-side renderer via mini_racer.'
  s.homepage = 'https://github.com/glebm/katex-ruby'
  s.license = 'MIT'

  s.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  s.bindir = 'exe'
  s.executables = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_development_dependency 'bundler', '~> 1.13'
  s.add_development_dependency 'rake', '~> 10.0'
  s.add_development_dependency 'rspec', '~> 3.0'
  s.add_development_dependency 'rubocop'
end

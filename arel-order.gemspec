# encoding: UTF-8
# frozen_string_literal: true

require File.expand_path('../lib/arel-order/version', __FILE__)

Gem::Specification.new do |s|
  s.name            = 'arel-order'
  s.version         = ArelOrder::VERSION
  s.author          = 'Yaroslav Konoplov'
  s.email           = 'eahome00@gmail.com'
  s.summary         = 'Adds several methods which help to build ORDER BY statements.'
  s.description     = 'Adds several methods which help to build ORDER BY statements.'
  s.homepage        = 'https://github.com/yivo/arel-order'
  s.license         = 'MIT'

  s.files           = `git ls-files -z`.split("\x0")
  s.test_files      = `git ls-files -z -- {test,spec,features}/*`.split("\x0")
  s.require_paths   = ['lib']

  s.add_dependency 'arel', '>= 6.0'
  s.add_dependency 'arel-to-sql', '~> 1.0'
  s.add_development_dependency 'rake', '~> 12.0'
  s.add_development_dependency 'test-unit', '~> 3.2'
  s.add_development_dependency 'bundler', '~> 1.7'
  s.add_development_dependency 'appraisal', '~> 2.1'
end

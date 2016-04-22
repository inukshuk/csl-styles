# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'csl/styles/version'

Gem::Specification.new do |s|
  s.name        = 'csl-styles'
  s.version     = CSL::Styles::VERSION.dup
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Sylvester Keil']
  s.email       = ['http://sylvester.keil.or.at']
  s.homepage    = 'https://github.com/inukshuk/csl-styles'
  s.summary     = 'CSL styles and locales'
  s.description =
    """
    The official Citation Style Language (CSL) styles and locale files.
    """

  s.license     = 'CC-BY-SA-3.0'
  s.date        = Time.now.strftime('%Y-%m-%d')

  s.add_dependency('csl', ['~>1.0'])

  s.files = Dir['**/*'].select { |path|
    path.split(/\//)[-1].length < 101 &&
      path =~ /^README|^lib|^vendor\/(locales.+xml$|styles.+csl$)/
  }

  s.test_files   = []
  s.executables  = []
  s.require_path = 'lib'
end

# vim: syntax=ruby

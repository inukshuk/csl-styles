require_relative 'lib/csl/styles/version'

Gem::Specification.new do |s|
  s.name        = 'csl-styles'
  s.version     = CSL::Styles::VERSION
  s.authors     = ['Sylvester Keil']
  s.email       = ['sylvester@keil.or.at']
  s.homepage    = 'https://github.com/inukshuk/csl-styles'
  s.licenses    = ['CC-BY-SA-3.0']
  s.summary     = 'CSL styles and locales'
  s.description = 'The official Citation Style Language (CSL) styles and locale files.'

  s.metadata = {
    'source_code_uri' => 'https://github.com/inukshuk/csl-styles',
    'bug_tracker_uri' => 'https://github.com/inukshuk/csl-styles/issues',
    'rubygems_mfa_required' => 'true'
  }

  s.required_ruby_version = '>= 3.1'
  s.add_dependency 'csl', '~> 2.0'

  # File names must be shorter than 101 characters (tar format limit)
  s.files = Dir[
    'README.md',
    'lib/**/*.rb',
    'vendor/locales/**/*.xml',
    'vendor/styles/**/*.csl'
  ].select { |path| File.basename(path).length < 101 }
end

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'google_directions_api/version'

Gem::Specification.new do |spec|
  spec.name = 'google_directions_api'
  spec.version = GoogleDirectionsApi::VERSION
  spec.authors = ['JungleCoders', 'Anton Bogdanov']
  spec.email = ['kortirso@gmail.com']

  spec.summary = 'Google Directions API'
  spec.description = 'Integration with Google Directions API'
  spec.homepage = 'https://github.com/WebGents/google_directions_api'
  spec.license = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.5.1'

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop', '~> 0.57.2'
  spec.add_dependency 'dotenv', '~> 2.5'
  spec.add_dependency 'httparty', '~> 0.16'
end

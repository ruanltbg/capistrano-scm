
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/scm/static/version'

Gem::Specification.new do |spec|
  spec.name          = 'capistrano-scm-static2'
  spec.version       = Capistrano::SCM::Static::VERSION
  spec.authors       = %w[sushant12 ruanltbg]
  spec.email         = %w[sussyoung9@gmail.com ruanltbg@gmail.com]
  spec.summary       = %q{A plugin for capistrano scm to deploy static site}
  spec.description   = %q{Deploy your static site through capistrano}
  spec.homepage      = 'https://github.com/ruanltbg/capistrano-scm'
  spec.license       = 'MIT'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.add_dependency 'capistrano', '>= 3.7.0', '< 3.18.0'
  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end

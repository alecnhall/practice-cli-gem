# frozen_string_literal: true

require_relative 'lib/practice_gem/version'

Gem::Specification.new do |spec|
  spec.name          = 'practice_gem'
  spec.version       = PracticeGem::VERSION
  spec.authors       = ['Alec Hall']
  spec.email         = ['alecnhall@gmail.com']

  spec.summary       = 'This is a practice CLI gem.'
  spec.description   = 'This is a practice CLI gem.'
  spec.homepage      = ''
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path('..', __dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end

# frozen_string_literal: true

version = File.read(File.expand_path('VERSION', __dir__)).strip

Gem::Specification.new do |spec|
  spec.name          = 'sqs-consumer'
  spec.version       = version
  spec.authors       = ['NONE']
  spec.email         = ['some@example.com']

  spec.summary       = 'some'
  spec.description   = ''
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.require_paths = ['lib']
  spec.files += Dir['lib/**/*', 'bin/*']
  spec.files << 'VERSION'
  spec.executables = ['sqs_consumer']

  spec.add_dependency('aws-sdk-sqs', '~> 1') # for ActiveJob
  spec.add_dependency('railties', '>= 5.2.0') # encrypted credentials
  spec.add_dependency('concurrent-ruby', '~> 1') # Utilities for concurrent processing
end

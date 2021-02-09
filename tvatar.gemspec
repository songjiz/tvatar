# frozen_string_literal: true

require_relative "lib/tvatar/version"

Gem::Specification.new do |spec|
  spec.name          = "tvatar"
  spec.version       = Tvatar::VERSION
  spec.authors       = ["songji"]
  spec.email         = ["lekyzsj@gmail.com"]

  spec.summary       = "Simple avatar generator with letters."
  spec.description   = "Simple avatar generator with letters."
  spec.homepage      = "https://github.com/songjiz/tvatar"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/songjiz/tvatar"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end

  spec.require_paths = ["lib"]
end

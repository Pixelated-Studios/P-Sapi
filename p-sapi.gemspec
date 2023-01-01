require_relative 'lib/P_Sapi/version'
Gem::Specification.new do |spec|
  spec.name = 'P_Sapi'
  spec.version = P_Sapi::VERSION
  spec.authors = ['VetheonGames','Pixelated Studios']
  spec.email = ['support@pixelatedstudios.net']

  spec.summary = %q{A Programming Interface for Pixelated Studios}
  spec.description = %q{This Gem provides simple ways to do semi-complex to complex things things in Ruby}
  spec.homepage = "https://github.com/Pixelated-Studios/P-Sapi"
  spec.license = 'GPL-3.0'
  spec.required_ruby_version = Gem::Requirement.new('3.0.0')

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage
  spec.files        = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ["lib"]
end
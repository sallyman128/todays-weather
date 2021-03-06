require_relative 'lib/todays_weather/version'

Gem::Specification.new do |spec|
  spec.name          = "todays_weather"
  spec.version       = TodaysWeather::VERSION
  spec.authors       = ["Salmaan"]
  spec.email         = ["salmaan.arif.ali@gmail.com"]

  spec.summary       = %q{Todays weather details}
  spec.description   = %q{Provides user with their desired location weather info.}
  spec.homepage      = "https://github.com/sallyman128/todays-weather"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/sallyman128/todays-weather"
  spec.metadata["changelog_uri"] = "https://github.com/sallyman128/todays-weather"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end

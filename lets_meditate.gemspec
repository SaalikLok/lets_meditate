require "rake"

Gem::Specification.new do |s|
  s.name = "lets_meditate"
  s.version = "0.0.2"
  s.executables << "lets_meditate"
  s.summary = "Meditation in your terminal."
  s.description = "Let's meditate is a gem that allows you to meditate in the comfort of your terminal."
  s.authors = ["Saalik Lokhandwala"]
  s.email = "saalikl111@gmail.com"
  s.homepage =
    "https://rubygems.org/gems/lets_meditate"
  s.license = "MIT"
  s.required_ruby_version = ">= 2.7.0"

  s.add_development_dependency "standard", "~> 1.5.0"
  s.add_development_dependency "rspec", "~> 3.10.0"
  s.add_runtime_dependency "colorize", "~> 0.8.1"

  s.files = Dir["{lib}/**/*.rb", "*.wav", "bin/*", "LICENSE", "*.md"]
  s.require_path = "lib"
end

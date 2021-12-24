Gem::Specification.new do |s|
  s.name = "lets_meditate"
  s.version = "0.0.1"
  s.summary = "Meditation in your terminal."
  s.description = "Let's meditate is a gem that allows you to meditate in the comfort of your terminal."
  s.authors = ["Saalik Lokhandwala"]
  s.email = "saalikl111@gmail.com"
  s.files = Dir["lib/*"] + Dir["bin/*"]
  s.homepage =
    "https://rubygems.org/gems/lets_meditate"
  s.license = "MIT"

  s.add_development_dependency "standard"
  s.add_development_dependency "rspec"
end

$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "canvas_cukes/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "canvas_cukes"
  s.version     = CanvasCukes::VERSION
  s.authors     = ["Michael Nacos"]
  s.email       = ["michael@github.leemail.me"]
  s.homepage    = "FIXME"
  s.summary     = "FIXME: Summary of CanvasCukes."
  s.description = "FIXME: Description of CanvasCukes."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.12"

  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "sqlite3"
end

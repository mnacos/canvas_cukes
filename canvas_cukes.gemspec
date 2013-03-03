$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "canvas_cukes/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "canvas_cukes"
  s.version     = CanvasCukes::VERSION
  s.authors     = ["Michael Nacos"]
  s.email       = ["michael@github.leemail.me"]
  s.homepage    = "https://github.com/mnacos/canvas_cukes"
  s.summary     = "Cucumber support for FB canvas apps"
  s.description = "Provides a test environment for FB canvas rails apps"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.12"
  s.add_dependency "rspec-rails"
  s.add_dependency "capybara"
  s.add_dependency "capybara-webkit"
  s.add_dependency "cucumber-rails"
  s.add_dependency "factory_girl_rails"
  s.add_dependency "database_cleaner"
  s.add_dependency "koala"

  s.add_development_dependency "sqlite3"
end

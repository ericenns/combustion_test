$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "combustion_test/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "combustion_test"
  s.version     = CombustionTest::VERSION
  s.authors     = ["Eric Enns"]
  s.email       = ["eric.enns@phac-aspc.gc.ca"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of CombustionTest."
  s.description = "TODO: Description of CombustionTest."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.4"

  s.add_development_dependency "sqlite3"
end

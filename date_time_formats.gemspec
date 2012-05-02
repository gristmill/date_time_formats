$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "date_time_formats/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "date_time_formats"
  s.version     = DateTimeFormats::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of DateTimeFormats."
  s.description = "TODO: Description of DateTimeFormats."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.3"

  s.add_development_dependency "sqlite3"
end

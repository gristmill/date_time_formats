$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "date_time_formats/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "date_time_formats"
  s.version     = DateTimeFormats::VERSION
  s.authors     = ["Sean Behan"]
  s.email       = ["sean@gristmill.io"]
  s.homepage    = "http://github.com/gristmill/date_time_formats"
  s.description = "Common formats for Time in Rails apps."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.3"

  s.add_development_dependency "sqlite3"
end

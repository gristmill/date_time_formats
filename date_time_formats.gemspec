$:.push File.expand_path("../lib", __FILE__)

require "date_time_formats/version"

Gem::Specification.new do |s|
  s.name        = "date_time_formats"
  s.version     = DateTimeFormats::VERSION
  s.authors     = ["Sean Behan"]
  s.email       = ["sean@gristmill.io"]
  s.homepage    = "http://github.com/gristmill/date_time_formats"
  s.summary     = "Common formats for Time in Rails apps."
  s.description = "Common formats for Time in Rails apps using YAML configuration."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.3"

  s.add_development_dependency "sqlite3"
end

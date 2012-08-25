$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "liking/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "liking"
  s.version     = Liking::VERSION
  s.authors     = ["wuwx"]
  s.email       = ["wuweixin@gmail.com"]
  s.homepage    = "http://github.com/wuwx/liking"
  s.summary     = "Summary of Liking."
  s.description = "Description of Liking."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.8"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end

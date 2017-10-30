$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "social_links/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "social_links"
  s.version     = SocialLinks::VERSION
  s.authors     = ["pawelztef"]
  s.email       = ["pawelztef@gmail.com"]
  s.homepage    = "http://pawelztef.me"
  s.summary     = "Summary of SocialLinks."
  s.description = "Description of SocialLinks."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5"

  s.add_development_dependency "sqlite3"
end

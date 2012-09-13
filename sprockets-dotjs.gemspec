$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "sprockets-dotjs/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "sprockets-dotjs"
  s.version     = SprocketsDotjs::VERSION
  s.authors     = ["Joe Mifsud"]
  s.email       = ["joe@mifsud.me"]
  s.homepage    = ""
  s.summary     = "Precompile doT.js templates from Sprockets"
  s.description = ""

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "sprockets"
  s.add_dependency "therubyracer"
end

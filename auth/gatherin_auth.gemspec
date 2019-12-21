$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "gatherin/auth/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "gatherin_auth"
  spec.version     = Gatherin::Auth::VERSION
  spec.authors     = ["Karim Almur"]
  spec.email       = ["karimit.g@gmail.com"]
  # TODO spec.homepage    = "TODO"
  spec.summary     = "Authentication engine for Gatherin"
  spec.description = "Authentication engine for Gatherin"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = ""
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  spec.test_files = Dir["spec/**/*"]
end

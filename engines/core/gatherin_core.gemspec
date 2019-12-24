require_relative "lib/gatherin/core/version"

$:.push File.expand_path("lib", __dir__)

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "gatherin_core"
  spec.version     = Gatherin.version
  spec.authors     = ["Karim Almur"]
  spec.email       = ["karimit.g@gmail.com"]
  spec.summary     = "Gatherin's core"
  spec.description = "Gatherin's core"
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

  spec.add_dependency "image_processing", "~> 1.10"
  spec.add_dependency "name_of_person", "~> 1.1", ">= 1.1.1"
end

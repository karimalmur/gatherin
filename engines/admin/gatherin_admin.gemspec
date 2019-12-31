require_relative "../core/lib/gatherin/core/version"

$:.push File.expand_path("lib", __dir__)

Gem::Specification.new do |spec|
  spec.name        = "gatherin_admin"
  spec.version     = Gatherin.version
  spec.authors     = ["karim"]
  spec.email       = ["karimit@live.com"]
  spec.summary     = "Gatherin Admininstration Engine"
  spec.description = "Gatherin Admininstration Engine"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = ""
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.2", ">= 6.0.2.1"

  spec.add_dependency "gatherin_auth", spec.version
  spec.add_dependency "gatherin_core", spec.version
end

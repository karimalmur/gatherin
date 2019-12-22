module Gatherin
  module Auth
    class Engine < ::Rails::Engine
      # Look up "Isolated Engine" in https://edgeapi.rubyonrails.org/classes/Rails/Engine.html
      isolate_namespace Gatherin::Auth
      config.generators.api_only = true

      config.generators do |generators|
        generators.test_framework :rspec
      end
    end
  end
end

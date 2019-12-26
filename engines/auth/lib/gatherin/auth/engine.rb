module Gatherin
  module Auth
    class Engine < ::Rails::Engine
      isolate_namespace Auth
      config.generators.api_only = true

      config.generators do |generators|
        generators.test_framework :rspec
      end
    end
  end
end

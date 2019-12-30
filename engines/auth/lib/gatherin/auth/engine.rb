module Gatherin
  module Auth
    class Engine < ::Rails::Engine
      isolate_namespace Auth
      config.generators.api_only = true

      config.to_prepare do
        Dir.glob(Engine.root + "app/concerns/**/*.rb").each do |c|
          require_dependency(c)
        end
      end

      config.generators do |generators|
        generators.test_framework :rspec
      end
    end
  end
end

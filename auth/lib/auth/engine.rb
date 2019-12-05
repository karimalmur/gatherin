module Auth
  class Engine < ::Rails::Engine
    isolate_namespace Auth
    config.generators.api_only = true
  end
end

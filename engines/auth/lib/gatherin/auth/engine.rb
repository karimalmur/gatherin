module Gatherin
  module Auth
    class Engine < ::Rails::Engine
      isolate_namespace Auth

      config.api_only = false
      config.middleware.use Rack::MethodOverride
      config.middleware.use ActionDispatch::Flash
      config.middleware.use ActionDispatch::Cookies
      config.middleware.use ActionDispatch::Session::CookieStore

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

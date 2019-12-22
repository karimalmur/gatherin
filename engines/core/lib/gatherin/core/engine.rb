module Gatherin
  module Core
    class Engine < ::Rails::Engine
      isolate_namespace Gatherin
      config.generators.api_only = true
    end
  end
end

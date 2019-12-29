module Gatherin
  module Core
    class ApplicationController < ActionController::API
      include Gatherin::Response
      include Gatherin::ErrorHandlers
    end
  end
end

module Gatherin
  module Core
    class ApplicationController < ActionController::API
      include Concerns::Response
      include Concerns::ErrorHandlers
    end
  end
end

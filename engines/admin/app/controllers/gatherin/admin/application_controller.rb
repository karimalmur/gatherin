module Gatherin
  module Admin
    class ApplicationController < ActionController::Base
      protect_from_forgery prepend: true
      skip_before_action :verify_authenticity_token,
                         if: -> { controller_name == "sessions" && action_name == "create" }
    end
  end
end

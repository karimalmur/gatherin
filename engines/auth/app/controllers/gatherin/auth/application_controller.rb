module Gatherin
  module Auth
    class ApplicationController < ActionController::Base
      include Gatherin::Core::Concerns::Response
      include Gatherin::Core::Concerns::ErrorHandlers

      protect_from_forgery prepend: true
      skip_before_action :verify_authenticity_token,
                         if: -> { controller_name == "sessions" && action_name == "create" }

      before_action :configure_permitted_params, if: :devise_controller?

      protected

      def configure_permitted_params
        attrs = %i[email first_name last_name name]

        devise_parameter_sanitizer.permit :sign_up, keys: attrs
        devise_parameter_sanitizer.permit :account_update, keys: attrs
      end

      def current_resource_owner
        User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
      end
    end
  end
end

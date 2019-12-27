module Gatherin
  module Auth
    class ApplicationController < ActionController::API
      before_action :configure_permitted_params, if: :devise_controller?
      # before_action :doorkeeper_authorize!

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

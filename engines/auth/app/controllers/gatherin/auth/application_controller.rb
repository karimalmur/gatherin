module Gatherin
  module Auth
    class ApplicationController < ActionController::API
      before_action :configure_permitted_params, if: :devise_controller?
      protected

      def configure_permitted_params
        attrs = %i[email first_name last_name name]

        devise_parameter_sanitizer.permit :sign_up, keys: attrs
        devise_parameter_sanitizer.permit :account_update, keys: attrs
      end
    end
  end
end

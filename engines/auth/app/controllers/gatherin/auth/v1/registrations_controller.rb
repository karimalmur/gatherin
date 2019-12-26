# frozen_string_literal: true

module Gatherin
  module Auth
    module V1
      class RegistrationsController < Devise::RegistrationsController
        # before_action :configure_sign_up_params, only: [:create]
        # before_action :configure_account_update_params, only: [:update]

        respond_to :json

        # POST /resource
        def create
          build_resource(sign_up_params)

          resource.save
          yield resource if block_given?
          if resource.persisted?
            unless resource.active_for_authentication?
              expire_data_after_sign_in!
              # TODO Set custom attribute indicating that the user is not active (need confirmation or locked)
            end
            render json: resource
          else
            clean_up_passwords resource
            set_minimum_password_length
            respond_with resource # TODO custom serialization
          end
        end

        # PUT /resource
        # def update
        #   super
        # end

        # DELETE /resource
        # def destroy
        #   super
        # end

        # GET /resource/cancel
        # Forces the session data which is usually expired after sign
        # in to be expired now. This is useful if the user wants to
        # cancel oauth signing in/up in the middle of the process,
        # removing all OAuth session data.
        # def cancel
        #   super
        # end

        # protected

        # If you have extra params to permit, append them to the sanitizer.
        # def configure_sign_up_params
        #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
        # end

        # If you have extra params to permit, append them to the sanitizer.
        # def configure_account_update_params
        #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
        # end
      end
    end
  end
end

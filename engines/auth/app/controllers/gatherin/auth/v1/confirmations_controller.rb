# frozen_string_literal: true

module Gatherin
  module Auth
    module V1
      class ConfirmationsController < Devise::ConfirmationsController
        # POST /resource/confirmation
        # def create
        #   super
        # end

        # protected

        # The path used after resending confirmation instructions.
        # def after_resending_confirmation_instructions_path_for(resource_name)
        #   super(resource_name)
        # end

        # The path used after confirmation.
        # def after_confirmation_path_for(resource_name, resource)
        #   super(resource_name, resource)
        # end
      end
    end
  end
end

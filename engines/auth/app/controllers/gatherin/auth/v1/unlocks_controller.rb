# frozen_string_literal: true

module Gatherin
  module Auth
    module V1
      class UnlocksController < Devise::UnlocksController
        # POST /resource/unlock
        # def create
        #   super
        # end

        # protected

        # The path used after sending unlock password instructions
        # def after_sending_unlock_instructions_path_for(resource)
        #   super(resource)
        # end

        # The path used after unlocking the resource
        # def after_unlock_path_for(resource)
        #   super(resource)
        # end
      end
    end
  end
end

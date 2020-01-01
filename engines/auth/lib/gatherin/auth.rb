# frozen_string_literal: true

require "devise"
require "doorkeeper"
require "gatherin/auth/engine"

module Gatherin
  module Auth
    NATIVE_OAUTH_APP_NAME = "Gatherin-Native"
    WEB_OAUTH_APP_NAME    = "Gatherin-Web"
    OAUTH_REDIRECT_URI    = "gatherin://oauth-callback"

    class << self
      attr_accessor :additional_mappings
    end

    def self.add_devise_mapping(resource_name, options)
      self.additional_mappings ||= {}
      additional_mappings[resource_name] = options
    end
  end
end

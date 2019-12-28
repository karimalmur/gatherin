# frozen_string_literal: true

require "devise"
require "doorkeeper"
require "gatherin/auth/engine"

module Gatherin
  module Auth
    NATIVE_OAUTH_APP_NAME = "Gatherin-Native"
    WEB_OAUTH_APP_NAME = "Gatherin-Web"
    OAUTH_REDIRECT_URI = "gatherin://oauth-callback"
  end
end

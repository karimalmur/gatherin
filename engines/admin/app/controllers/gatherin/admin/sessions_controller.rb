module Gatherin
  module Admin
    class SessionsController < Devise::SessionsController
      layout "admin/application"
    end
  end
end

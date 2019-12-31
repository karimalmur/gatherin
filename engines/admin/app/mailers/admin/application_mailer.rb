module Gatherin
  module Admin
    class ApplicationMailer < ActionMailer::Base
      default from: "admin@gatherin.com"
      layout "mailer"
    end
  end
end

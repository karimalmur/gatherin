require_dependency(Gatherin::Core::Engine.root.join("app", "models", "gatherin", "user").to_s)

module Gatherin
  module Auth
    module AuthenticatableUser
      extend ActiveSupport::Concern

      included do
        devise :database_authenticatable, :registerable, :confirmable,
               :recoverable, :validatable, :lockable, stretches: 13

        has_many :access_grants,
                 class_name: "Doorkeeper::AccessGrant",
                 foreign_key: :resource_owner_id,
                 dependent: :delete_all # or :destroy if you need callbacks

        has_many :access_tokens,
                 class_name: "Doorkeeper::AccessToken",
                 foreign_key: :resource_owner_id,
                 dependent: :delete_all # or :destroy if you need callbacks

        # Use ActiveJob (with sidekiq as backend) to deliver mail
        def send_devise_notification(notification, *args)
          devise_mailer.send(notification, self, *args).deliver_later
        end
      end
    end
  end
end

Gatherin::User.include Gatherin::Auth::AuthenticatableUser

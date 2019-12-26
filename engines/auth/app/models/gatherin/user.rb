module Gatherin
  class User < ApplicationRecord
    devise :database_authenticatable, :registerable, :confirmable,
           :recoverable, :validatable, :lockable, stretches: 13

    has_many :access_grants,
             class_name: "Doorkeeper::AccessGrant",
             foreign_key: :resource_owner_id,
             dependent: :delete_all # or :destroy if you need callbacks

    has_many :access_tokens,
             class_name: "Doorkeeper::AccessToken",
             foreign_key: :resource_owner_id,
             dependent: :delete_all # or :destroy if you need ca

    def self.reconfirmable
      false
    end
  end
end

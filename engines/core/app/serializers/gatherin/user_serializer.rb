module Gatherin
  class UserSerializer
    include ::FastJsonapi::ObjectSerializer

    attributes :first_name, :last_name, :name, :email, :gender, :created_at, :updated_at

    attribute :avatar do |user|
      if user.avatar.attached?
        Rails.application.routes.url_helpers.rails_blob_path(user.avatar, only_path: true)
      end
    end
  end
end

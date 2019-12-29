module Gatherin
  class UserSerializer
    include ::FastJsonapi::ObjectSerializer

    attributes :first_name, :last_name, :name, :email, :gender, :created_at, :updated_at
  end
end

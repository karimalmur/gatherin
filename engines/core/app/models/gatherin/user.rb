module Gatherin
  class User < ApplicationRecord
    rolify role_cname: "::Gatherin::Role"
    has_one_attached :avatar
    has_person_name
  end
end

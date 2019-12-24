module Gatherin
  class User < ApplicationRecord
    has_one_attached :avatar # main profile picture
    has_person_name
  end
end

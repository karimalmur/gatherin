module Gatherin
  class User < ApplicationRecord
    devise :database_authenticatable, :registerable, :confirmable, :recoverable, stretches: 13
  end
end

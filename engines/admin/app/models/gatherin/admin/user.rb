module Gatherin
  module Admin
    class User < ApplicationRecord
      devise :database_authenticatable, :recoverable, :rememberable, :validatable
    end
  end
end

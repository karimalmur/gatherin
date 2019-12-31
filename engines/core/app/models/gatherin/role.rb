module Gatherin
  class Role < ApplicationRecord
    has_and_belongs_to_many :gatherin_users, join_table: :gatherin_users_roles
    belongs_to :resource, polymorphic: true, optional: true

    validates :resource_type, inclusion: { in: Rolify.resource_types }, allow_nil: true
    validates :name, inclusion: { in: %w[admin banned] }

    scopify
  end
end

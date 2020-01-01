require "gatherin/admin/engine"

module Gatherin
  module Admin
    Gatherin::Auth.add_devise_mapping(
      :admin_user,
      class_name: "Gatherin::Admin::User",
      module: "gatherin/admin",
      singular: :admin_user,
      only: %i[sessions],
      path: "admin",
    )
  end
end

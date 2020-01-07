# Doorkeeper needs to be drawn into the parent's app routes
Rails.application.routes.draw do
  use_doorkeeper do
    # No need to register client apps
    skip_controllers :applications, :authorized_applications
  end
end

Gatherin::Auth::Engine.routes.draw do
  api_version(
    module: "v1",
    defaults: { format: :json },
    header: { name: "Accept", value: "application/vnd.gatherin.com; version=1" },
  ) do
    devise_for(
      :users,
      class_name: "Gatherin::User",
      skip: %i[sessions],
      singular: :user,
      path: "",
    )
  end

  Gatherin::Auth.additional_mappings.each do |resource_name, options|
    devise_for resource_name, options
  end
end

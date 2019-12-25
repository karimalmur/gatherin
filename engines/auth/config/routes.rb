Gatherin::Auth::Engine.routes.draw do
  namespace :auth do
    api_version(
      module: "v1",
      default: true,
      defaults: { format: :json },
      header: { name: "Accept", value: "application/vnd.gatherin.com; version=1" },
    ) do
      devise_for :users, class_name: "Gatherin::User", path: "", controllers: {
        registrations: "v1/registrations",
      }, skip: %i[sessions password]
    end
  end
end

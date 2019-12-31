Rails.application.routes.draw do
  mount Gatherin::Auth::Engine, at: "/auth"
  mount Gatherin::Admin::Engine, at: "/admin"
end

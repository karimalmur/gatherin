Rails.application.routes.draw do
  mount Gatherin::Auth::Engine, at: "/auth"
end

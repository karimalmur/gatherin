Rails.application.routes.draw do
  mount Gatherin::Auth::Engine => "/auth"
end

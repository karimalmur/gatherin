Rails.application.routes.draw do
  mount Gatherin::Admin::Engine => "/admin"
end

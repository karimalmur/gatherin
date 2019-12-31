require "sidekiq/web"

Gatherin::Admin::Engine.routes.draw do
  mount Sidekiq::Web => "/sidekiq"
end

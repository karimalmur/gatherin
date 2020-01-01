require "sidekiq/web"

Gatherin::Admin::Engine.routes.draw do
  authenticate :admin_user do
    mount Sidekiq::Web => "/sidekiq"
  end
end

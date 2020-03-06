Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  post "/graphql", to: "graphql#execute"
  mount Gatherin::Auth::Engine,  at: "/auth"
  mount Gatherin::Admin::Engine, at: "/admin"
end

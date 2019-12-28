# Application intended for use with web clinets
unless Doorkeeper::Application.exists?(name: Gatherin::Auth::WEB_OAUTH_APP_NAME)
  Doorkeeper::Application.create(
    name: Gatherin::Auth::WEB_OAUTH_APP_NAME,
    scopes: "read write",
    confidential: false,
    redirect_uri: Gatherin::Auth::OAUTH_REDIRECT_URI,
  )
end

# Application intended for use with native mobile clients
unless Doorkeeper::Application.exists?(name: Gatherin::Auth::NATIVE_OAUTH_APP_NAME)
  Doorkeeper::Application.create(
    name: Gatherin::Auth::NATIVE_OAUTH_APP_NAME,
    scopes: "read write",
    confidential: false,
    redirect_uri: Gatherin::Auth::OAUTH_REDIRECT_URI,
  )
end

Rails.application.routes.draw do
  mount Auth::Engine => "/auth"
end

Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  concern :base_api do
    post 'users/register', to: 'users#register'
    post 'users/login', to: 'users#login'
  end

  namespace :v1 do
    concerns :base_api
  end
end

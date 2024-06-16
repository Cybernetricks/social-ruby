Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  post 'users/register', to: 'users#register'
  post 'users/login', to: 'users#login'
end

Rails.application.routes.draw do
  resources :users
  resources :posts
  resources :sessions, only: %w(new create destroy)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"
end

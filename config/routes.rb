Rails.application.routes.draw do
  resources :phones
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users, only: [:create]

  post "/login", to: "users#login"
end

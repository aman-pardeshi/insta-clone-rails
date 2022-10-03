Rails.application.routes.draw do
  devise_for :accounts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/dashboard" => "accounts#index"

  resources :posts, only: [:new, :create, :show]

  root to: 'public#homepage'
end

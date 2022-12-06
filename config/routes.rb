Rails.application.routes.draw do
  devise_for :users
  get 'dashboard', to: "dashboard#index"
  root 'dashboard#index'

  # allows us to use user_path(user) to get url for user's profile
  get ':id', to: 'dashboard#show', as: :user
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

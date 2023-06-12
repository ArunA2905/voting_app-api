Rails.application.routes.draw do
  resources :user_stats
  resources :data
  resources :upload, only: [:show, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

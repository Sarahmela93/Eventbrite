Rails.application.routes.draw do
  resources :attendances
  resources :events
  get 'static_pages/secret'
  devise_for :users
  root 'static_pages#index'
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  #root "events#index"
end

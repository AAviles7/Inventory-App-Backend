Rails.application.routes.draw do

  resources :inventory_items
  resources :order_items
  resources :food_items
  resources :orders
  resources :restaurants
  resources :users

  get '/login', to: 'users#token_authenticate'
  post '/login', to: 'auth#create'
  post 'signup', to: 'users#create'
  get '/profile', to: 'users#profile'

end

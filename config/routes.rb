Rails.application.routes.draw do
  resources :inventory_items
  resources :order_items
  resources :food_items
  resources :orders
  resources :restaurants
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

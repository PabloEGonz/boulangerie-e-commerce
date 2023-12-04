Rails.application.routes.draw do
  devise_for :users

  resources :products, only: [:index, :show]
  resources :users, only: [:index, :show]
  resources :cart_items, only: [:create, :destroy]
  root 'products#index'
end

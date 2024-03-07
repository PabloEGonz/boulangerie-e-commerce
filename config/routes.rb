Rails.application.routes.draw do
  devise_for :users

  resources :products, only: [:index, :show] do 
    resources :cart_items, only: [:create, :update, :destroy]
  end

  resources :users, only: [:index, :show]
  resources :shopping_sessions, only: [:index, :show, :create]
  get 'all_products', to: 'products#all'
  root 'products#index'
end

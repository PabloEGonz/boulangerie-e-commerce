Rails.application.routes.draw do
  devise_for :users

  resources :products, only: [:index, :show] do 
    resources :cart_items, only: [:create, :destroy]
  end

  resources :users, only: [:index, :show]
  root 'products#index'
end

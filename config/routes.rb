Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root to: "welcome#index"
  resources :products
  resources :categories
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
end

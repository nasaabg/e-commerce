Rails.application.routes.draw do
  get 'carts/show'

	devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root to: "welcome#index"
  resources :products
	resources :categories
end

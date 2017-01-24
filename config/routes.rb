Rails.application.routes.draw do
  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'carts/show'

	devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root to: "welcome#index"
  resources :products
	resources :categories
end

class WelcomeController < ApplicationController
	def index
		@products = Product.order(created_at: :desc).first(3)
	end
end

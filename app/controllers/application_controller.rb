class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order
  before_action :set_categories

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end

  def set_categories
    @categories ||= Category.order(:name)
  end
end

class CategoriesController < ApplicationController
  before_action :set_category
  before_action :authenticate_user!

  def show
    @products = @category.products
    @order_item = current_order.order_items.new
  end

  private
  def set_category
    @category ||= Category.find(params[:id])
  end
end

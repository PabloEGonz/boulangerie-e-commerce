class ShoppingSessionsController < ApplicationController
  before_action :initialize_shopping_session
  def index 
    @cart_items = @shopping_session.cart_items.includes(:product)
  end
  def show 
     @order = Order.new
  end
end
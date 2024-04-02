class ShoppingSessionsController < ApplicationController
  before_action :initialize_shopping_session
  def index 
  end
  def show 
     @order = Order.new
  end
end
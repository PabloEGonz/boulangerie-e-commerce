class ShoppingSessionsController < ApplicationController
  def index 
    @shopping_session = current_user.shopping_session || ShoppingSession.create(user_id: current_user.id)
    @cart_items = @shopping_session.cart_items.includes(:product)
  end
end
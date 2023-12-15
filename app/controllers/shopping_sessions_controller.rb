class ShoppingSessionsController < ApplicationController
  def index 
    @shopping_session = current_user.shopping_session || ShoppingSession.create(user_id: current_user.id)
    if @shopping_session.nil? 
      redirect_to login_path
    end
    @cart_items = @shopping_session.cart_items.includes(:product)
  end
end
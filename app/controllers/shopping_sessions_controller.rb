class ShoppingSessionsController < ApplicationController
  def index 
    redirect_to new_user_session_path if current_user.nil?
    if current_user  
      @shopping_session = current_user.shopping_session || ShoppingSession.create(user_id: current_user.id)
      @cart_items = @shopping_session.cart_items.includes(:product)
    end
  end
end
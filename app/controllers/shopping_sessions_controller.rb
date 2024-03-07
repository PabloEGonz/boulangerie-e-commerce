class ShoppingSessionsController < ApplicationController
  def index 
    if current_user  
      @shopping_session = current_user.shopping_session || ShoppingSession.create(user_id: current_user.id)
      @cart_items = @shopping_session.cart_items.includes(:product)
    else 
      flash[:notice] = "Please login to continue"
      redirect_to new_user_session_path
    end
  end
  def show
    
  end
end
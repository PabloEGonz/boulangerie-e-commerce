class ShoppingSessionsController < ApplicationController
  before_action :set_shopping_session
  def index 
  end
  def show  
  end

  def set_shopping_session
    @shopping_session = current_user.shopping_session || ShoppingSession.create(user_id: current_user.id)
    if current_user  
      @cart_items = @shopping_session.cart_items.includes(:product)
    else 
      flash[:notice] = "Please login to continue"
      redirect_to new_user_session_path
    end
  end
end
class CartItemsController < ApplicationController
  before_action :initialize_shopping_session
  def create
    @cart_item = CartItem.new(cart_item_params)
    @shopping_session = current_user.shopping_session || ShoppingSession.create(user_id: current_user.id)
    @cart_item.shopping_session_id = current_user.shopping_session.id
    @cart_item.save
    redirect_to root_path
    flash[:notice] = "Item was added to cart"
  end

  def update
    @cart_item = CartItem.find_by(product_id: params[:id])
    @cart_item.update(cart_item_params)
    redirect_to root_path
    flash[:notice] = "Item quantity was updated"
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to shopping_sessions_path
    flash[:notice] = "Item was removed from cart"
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:quantity, :product_id)
  end
end

class CartItemsController < ApplicationController
  def create
    @cart_item = CartItem.new(cart_item_params)
    @shopping_session = current_user.shopping_session || ShoppingSession.create(user_id: current_user.id)
    @cart_item.shopping_session_id = current_user.shopping_session.id
    sum_total
    @cart_item.save
    redirect_to "/"
  end

  def update
    @cart_item = CartItem.find(params[:id])
    @cart_item.update(cart_item_params)
    redirect_to cart_path(current_cart)
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to cart_path(current_cart)
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:quantity, :product_id)
  end

  def sum_total 
    price = @cart_item.product.price
    @shopping_session.total +=  price * params[:cart_item][:quantity].to_i
    @shopping_session.save
  end
end

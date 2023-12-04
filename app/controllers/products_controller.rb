class ProductsController < ApplicationController
    def index
    @products = Product.all
    @shopping_session = current_user.shopping_session || ShoppingSession.create(user_id: current_user.id)
    @cart_items = @shopping_session.cart_items
    end

    def show
    @product = Product.find(params[:id])
    @cart_item = CartItem.new
    end
end

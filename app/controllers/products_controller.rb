class ProductsController < ApplicationController
    def index
    @breads = Product.all.where(category: "Bread")
    if current_user
        @shopping_session = current_user.shopping_session || ShoppingSession.create(user_id: current_user.id)
        @cart_items = @shopping_session.cart_items
    end
    end

    def show
    @product = Product.find(params[:id])
    @cart_item = CartItem.find_by(product_id: @product.id) || CartItem.new
    end

    def all
        @breads = Product.all.where(category: "Bread")
        @pastries = Product.all.where(category: "Sweet")
        @seasonal = Product.all.where(category: "Seasonal")
    end
end

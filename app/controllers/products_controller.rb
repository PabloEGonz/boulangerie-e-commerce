class ProductsController < ApplicationController
    before_action :check_current_user
    def index
    @breads = Product.all.where(category: "Bread")
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

    private
    def check_current_user
        initialize_shopping_session if current_user
    end
end

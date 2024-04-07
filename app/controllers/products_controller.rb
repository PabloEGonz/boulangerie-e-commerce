class ProductsController < ApplicationController
    before_action :check_current_user
    def index
        get_products
    end

    def show
    @product = Product.find(params[:id])
    @cart_item = CartItem.find_by(product_id: @product.id) || CartItem.new
    end

    def all
        get_products
        @seasonal = Product.all.where(category: "Seasonal")
    end

    private
    def check_current_user
        initialize_shopping_session if current_user
    end

    def get_products
        @breads = Product.all.where(category: "Bread")
        @pastries = Product.all.where(category: "Sweet")
        @cakes = Product.all.where(category: "Cake")
    end
end

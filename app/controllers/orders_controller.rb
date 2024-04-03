class OrdersController < ApplicationController
    def create 
        @order = Order.new(user_id: current_user.id, deliveryStatus: "Pending")
        @items = current_user.shopping_session.cart_items
        if @order.save
            create_order_items
            total = current_user.shopping_session.total
            Payment.create(order_id: @order.id, total: total, paid: true)
            redirect_to root_path
            current_user.shopping_session.destroy
        else
            flash[:notice] = "Something went wrong"
            render :new  
        end
    end

    private

    def create_order_items
        @items.each do |item|
           order_item =  OrderItem.create(order_id: @order.id, product_id: item.product_id)
           order_item.save
           product = Product.find(item.product_id)
           product.stock -= item.quantity
           product.save
        end
    end
end
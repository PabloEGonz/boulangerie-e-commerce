class ApplicationController < ActionController::Base
    before_action :initialize_shopping_session

    def initialize_shopping_session 
        if current_user 
        @shopping_session = current_user.shopping_session || ShoppingSession.create(user_id: current_user.id)
        end
    end
end

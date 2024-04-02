class ApplicationController < ActionController::Base
    def initialize_shopping_session 
        if current_user 
        @shopping_session = current_user.shopping_session || ShoppingSession.create(user_id: current_user.id)
        else 
            flash[:notice] = "Please login to continue"
            redirect_to new_user_session_path
        end
    end
end

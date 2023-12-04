class ShoopingSessionsController < ApplicationController
  def create
    @shopping_session = ShoppingSession.new(current_user.id)
    @shopping_session.add_attributes(shopping_session_params)
    @shopping_session.save
  end

  private

  def shopping_session_params
    params.require(:shopping_session).permit(:user_id)
  end
end
require 'rails_helper'

RSpec.describe ShoppingSession, type: :model do
  context "validations" do 
    it "creates a valid shopping session" do
      shopping_session = ShoppingSession.create(user_id: 5)
      shopping_session.save
      expect(shopping_session).to be_a_new(ShoppingSession)
    end
    it "creates an invalid shopping session using a string" do 
      shopping_session = ShoppingSession.create(user_id: '5')
      expect(shopping_session).not_to be_valid
    end
    it "creates a shopping session with an actual user" do 
      user = User.create(email: 'test@gmail.com', password: '1234568')
      user.save
      shopping_session = ShoppingSession.create(user_id: user.id)
      expect(shopping_session).to be_valid
    end
  end
end

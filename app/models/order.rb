class Order < ApplicationRecord
  belongs_to :user
  has_many :products
  has_one :payment
end

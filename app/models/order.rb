class Order < ApplicationRecord
  belongs_to :user

  has_many :carts

  has_many :items, through: :carts

  monetize :amount_cents

  def total_amount
  	sum = 0
  	carts.each do |cart|
  		sum += cart.item.price.to_i
  	end
  	sum
  end
end

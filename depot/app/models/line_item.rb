class LineItem < ActiveRecord::Base
	belongs_to :product
	belongs_to :cart
  attr_accessible :cart_id, :product, :product_id, :quantity
end

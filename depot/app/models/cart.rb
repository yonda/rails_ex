class Cart < ActiveRecord::Base
	has_many :line_items, dependent: :destroy
  attr_accessible :cart_id, :product
end

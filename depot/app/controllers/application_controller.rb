class ApplicationController < ActionController::Base
  helper_method :date_loaded
  before_filter :set_date
  protect_from_forgery
  def date_loaded
  	return Time.now
  end
  def set_date
  	@date_loaded = Time.now
  end

  private
  	def current_cart
  		Cart.find(session[:cart_id])
  	rescue ActiveRecord::RecordNotFound
  		cart = Cart.create
  		session[:cart_id] = cart.id
  		cart
  	end
end

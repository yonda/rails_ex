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
end

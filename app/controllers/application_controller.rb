class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
  # include ApplicationHelper

  before_filter :store_current_location, :unless => :devise_controller?

  private
    # override the devise helper to store the current location so we can
    # redirect to it after loggin in or out. This override makes signing in
    # and signing up work automatically.
    def store_current_location
    	store_location_for(:user, request.url)
    end
    
    def after_sign_out_path_for(resource)
    	request.referrer || root_path
    end
end

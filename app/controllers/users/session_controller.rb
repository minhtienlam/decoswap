class Users::SessionsController < Devise::SessionsController
  skip_before_filter :verify_authenticity_token, only: [:destroy]
  respond_to :json, :html

  def after_sign_in_path_for(resource)
    session[:previous_url] || root_path
  end
end
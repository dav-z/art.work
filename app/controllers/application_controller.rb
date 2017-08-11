class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_sign_up_params_params, if: :devise_controller?
  before_action :configure_account_update_params, if: :devise_controller?
  protected

  def configure_sign_up_params_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:fname, :lname, :email, :username, :bio, :location, :propic, :password, :password_confirmation])
  end

  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:fname, :lname, :email, :username, :bio, :location, :propic, :discipline_ids, :password, :password_confirmation, :current_password])
  end

  def after_sign_in_path_for(resource_or_scope)
    # takes users to home page when they are signed in
    root_path
  end

  def authorize_admin
    redirect_to root_path, status: 401 unless current_user.admin
    #redirects to home page
  end

end

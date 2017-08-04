class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:fname, :lname, :email, :username, :bio, :hometown, :propic, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:fname, :lname, :email, :username, :bio, :hometown, :propic, :password, :password_confirmation, :current_password)
  end

  def after_update_path_for(resource_or_scope)
    profile_path(current_user.username)
  end

end

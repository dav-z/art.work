class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:fname, :lname, :email, :username, :bio, :location, :propic, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:fname, :lname, :email, :username, :bio, :location, :propic, :discipline_ids, :password, :password_confirmation, :current_password)
    if params[:user][:discipline_ids]
        @user.media = Discipline.where( id: params[:user][:discipline_ids] )
    end
  end

  def after_update_path_for(resource_or_scope)
    profile_path(current_user.username)
  end

end

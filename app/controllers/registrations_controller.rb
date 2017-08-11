class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:fname, :lname, :email, :username, :bio, :location, :propic, :password, :password_confirmation)
  end

  def account_update_params
    # setting up parameters for updating account info
    data = params.require(:user).permit(:fname, :lname, :email, :username, :bio, :location, :propic, :discipline_ids, :password, :password_confirmation, :current_password)
    # if disciplines are selected then do this
    if params[:user][:discipline_ids]
      # destroy all user_disciplines and rebuild from list
      Discipline.transaction do
        current_user.user_disciplines.destroy_all
        params[:user][:discipline_ids].each do |discipline_id|
          UserDiscipline.create(
            user_id: current_user.id,
            discipline_id: discipline_id
          )
        end
      end
    # if no disciplines are selected, then delete all disciplines for user
    else
      Discipline.transaction do
        current_user.user_disciplines.destroy_all
      end
    end
    # output the params
    data
  end

  def after_update_path_for(resource_or_scope)
    # goes to profile page when user updates profile/account
    profile_path(current_user.username)
  end

  def after_sign_up_path_for(resource_or_scope)
    # goes to edit profile page when user signs up
    edit_user_registration_path
  end

end

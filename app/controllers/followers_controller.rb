class FollowersController < ApplicationController
  before_action :authenticate_user!
  respond_to :js

  def create
    @user = User.find(params[:user_id])
    current_user.follow(@user)
    redirect_to profile_path(@user.username)
  end

  def destroy
    @user = User.find(params[:user_id])
    current_user.stop_following(@user)
    redirect_to profile_path(@user.username)
  end
end

class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
        @user_articles = @user.articles
    end

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

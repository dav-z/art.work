class StaticController < ApplicationController

  def index
  end

  # link the path to the user profile page
  def profile
    @user = User.find_by_username(params[:username])

  end

  def home
    @jobs = Job.all
  end

end

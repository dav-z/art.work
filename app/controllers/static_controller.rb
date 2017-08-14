class StaticController < ApplicationController
  before_action :authenticate_user!, :except => [:home, :profile, :explore]

  def index
  end

  # link the path to the user profile page
  def profile
    @user = User.find_by_username(params[:username])
  end

  def home
    @jobs = Job.all
  end

  def following
  end

  def explore
    @arts = Art.all
  end

end

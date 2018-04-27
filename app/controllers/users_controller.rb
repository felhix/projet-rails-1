class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.create(params.permit(:username, :bio))
    if @user.save
      redirect_to @user
    else
      redirect_to user_creation_error_path
    end
  end

  def show
    @user = User.find_by_username(params[:username])
  end

end

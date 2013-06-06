class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
  end

  def create
    user = User.create!(user_params)
    redirect_to root_path, notice: "Created user #{user.email}."
  end

  helper_method :new_user

  private
  def new_user
    User.new
  end

  def user_params
    params.require(:user).permit(:email)
  end
end

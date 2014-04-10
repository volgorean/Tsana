class UsersController < ApplicationController
  def show
    @user = User.find(user_info)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_info)
    @user.save
    redirect_to :back
  end

  def edit
  end

  def update
    user.update(user_info)
  end

private
  def user_info
    params.require(:user).permit(:username, :email, :password, :password_confirmation);
  end
end

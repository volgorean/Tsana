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
    @user = User.find(current_user.id)
  end

  def update
    @user = User.find(current_user.id)
    @user.update(user_info)
    redirect_to :back
  end

private
  def user_info
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :avatar);
  end
end

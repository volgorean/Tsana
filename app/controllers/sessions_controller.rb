class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to "/", notice: "Welcome!"
    else
      flash.now.alert = "Invalid login."
      redirect_to "/"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/', notice: "Securely logged out."
  end
end

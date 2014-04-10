class MainController < ApplicationController
  def index
    if !current_user
      redirect_to "/sessions/new"
    end
  end
end

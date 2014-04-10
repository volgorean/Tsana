class JoinsController < ApplicationController
  def create
    @project = Project.find(params[:id])
    current_user.projects << @project
    redirect_to :back
  end
end

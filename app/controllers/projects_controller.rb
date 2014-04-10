class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.create(project_info)
    current_user.projects << @project
    redirect_to "/projects/#{@project.id}"
  end

  def destroy
  end

  def edit
  end

  def update
  end

  def show
    @project = Project.find(params[:id])
  end

private
  def project_info
    params.require(:project).permit(:name, :mission, :description)
  end
end

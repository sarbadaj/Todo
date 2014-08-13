class ProjectsController < ApplicationController

  def new
    @project = Project.new
  end

  def create
    @user = current_user
    @project = @user.projects.create(project_params)
    redirect_to users_path
  end

  def show
    @project = Project.find(params[:id])  
  end

  private
    def project_params
      params.require(:project).permit(:title, :body)
    end

end

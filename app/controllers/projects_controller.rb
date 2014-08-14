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

  def edit
    @user = current_user
    @project = Project.find(params[:id])  
  end

  def update
    @project = Project.find(params[:id]) 
    if @project.update(project_params)
      redirect_to users_path
    else
      render 'users/index'
    end
  end

  def destroy
    @user = current_user
    @project = @user.projects.find(params[:id])
    @project.destroy
    redirect_to users_path
  end

  private
    def project_params
      params.require(:project).permit(:title, :body)
    end

end

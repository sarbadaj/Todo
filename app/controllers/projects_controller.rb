class ProjectsController < ApplicationController

  def new
<<<<<<< HEAD
  	@project = Project.new
  	@user = current_user
=======
    @project = Project.new
    @user = current_user
>>>>>>> develop
  end

  def create
    @user = User.find(params[:user_id])
    @project = @user.projects.create(project_params)
    redirect_to users_path
  end

  private
    def project_params
      params.require(:project).permit(:title, :body)
    end

end

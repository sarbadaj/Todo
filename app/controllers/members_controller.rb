class MembersController < ApplicationController
  def new
  	@project = Project.find(params[:project_id])
  	@member = Member.new
  end
  
  def create
  	@project = Project.find(params[:project_id])
    @member = @project.members.create(member_params)
    redirect_to project_tasks_path(@project)
  end

  def index
  	@project = Project.find(params[:project_id])
  	@members = Member.all
  end

  def show
  	@member = Member.find(params[:id])
  end

  def destroy
  	@project = Project.find(params[:project_id])
  	@member = @project.members.find(params[:id])
  	@member.destroy
  	redirect_to project_tasks_path(@project)
  end

  private
  	def member_params
  		params.require(:member).permit(:name, :email)
  	end
end

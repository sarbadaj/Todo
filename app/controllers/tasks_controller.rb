class TasksController < ApplicationController
  
  def new
    @project = Project.find(params[:project_id])
  	@task = Task.new
  end

 	def create
    @project = Project.find(params[:project_id])
    @task = @project.tasks.create(task_params)
    redirect_to project_tasks_path(@project)
    TaskInfoMailer.task_info(@task).deliver
  end

  def index
    @project = Project.find(params[:project_id])
  	@tasks = Task.new
  end

  def show
    @task = Task.find(params[:id])  
  end

  def destroy
    @project = Project.find(params[:project_id])
    @task = @project.tasks.find(params[:id])
    @task.destroy
    redirect_to project_tasks_path(@project)
  end
  private
    def task_params
      params.require(:task).permit(:title, :body, :member)
    end

end
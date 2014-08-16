class TasksController < ApplicationController
  
  def new
  	@task = Task.new
  end

 	def create
    @project = Project.find(params[:project_id])
    @task = @project.tasks.create(task_params)
    redirect_to tasks_path
  end

  def index
  	@tasks = Task.new
  end
  def show
    @task = Task.find(params[:id])  
  end

  private
    def task_params
      params.require(:task).permit(:title, :body, :member)
    end

end

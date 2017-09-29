class TasksController < ApplicationController
    before_action :set_task, only: [:show, :edit, :update, :destroy]
  def index
    @tasks = Todolist.all
  end
  def show
  end
  def new
    @task = Todolist.new
  end
  def create
    @task = Todolist.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end
  def edit
  end
  def update
    @task.update(task_params)
    redirect_to tasks_path
  end
  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:description)
  end

def set_task
  @task = Todolist.find(params[:id])
end


end

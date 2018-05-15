class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    redirect_to tasks_path
    # This redirects to tasks, which is the index path
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to tasks_path
  end

  def destroy
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
    # Here we are allowing params to take info from a post.
  end

  def set_task
    @task = Task.find(params[:id])
  end
end

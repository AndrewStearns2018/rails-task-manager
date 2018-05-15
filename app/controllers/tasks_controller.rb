class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end
end

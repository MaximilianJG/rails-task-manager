class TasksController < ApplicationController

  # An option to get rid of the "@task = Task.find(params[:id])" in many of the actions below
  # before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new # don't quite understand why this needs to be there.
  end

  def create
    @task = Task.create(strong_task_params)
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(strong_task_params)
    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def strong_task_params # You specify which keys in the params hash you allow
    params.require(:task).permit(:title, :details, :completed)
  end

  # def before_action
  #   @task = Task.find(params[:id])
  # end
end

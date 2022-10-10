class TasksController < ApplicationController
  def index
    list = List.find(params[:id])
    @tasks = list.tasks
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @list = List.find(params[:list_id])
    @task = Task.new
  end

  def create
    @list = List.find(params[:list_id])
    @task = Task.new(task_params)
    @task.list = @list
    if @task.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to list_path(@task.list)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to list_path(@task.list), status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:name, :description)
  end
end

class TasksController < ApplicationController
  def index
    list = List.find(params[:id])
    @tasks = list.tasks
  end

  def show
    @task = Task.find(params[:id])
  end
end

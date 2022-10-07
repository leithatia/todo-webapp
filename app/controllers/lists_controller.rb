class ListsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_list, only: %w[show edit update destroy]

  def index
    @lists = current_user.lists
  end

  def new
    @list = List.new
  end

  def create
    @list = current_user.lists.new(list_params)
    @list.save
    redirect_to lists_path
  end

  def update
    @list.update(list_params)
    redirect_to lists_path
  end

  def destroy
    @list.destroy
    redirect_to lists_path, status: :see_other
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name)
  end
end

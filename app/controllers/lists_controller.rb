class ListsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @lists = current_user.lists
  end

  def show
  end
end

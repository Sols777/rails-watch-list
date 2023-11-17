class ListsController < ApplicationController
  before_action :set_list, only: [:show]
  def index
    @lists = List.all
    @list = List.new
  end

  def new
    @list = List.new
  end

  def show
    @bookmark = Bookmark.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      @lists = List.all
      render "lists/index", status: :unprocessable_entity
    end
  end

  def article_params
    params.require(:article).permit(:title, :body, :photo)
  end

  private

  def list_params
    params.require(:list).permit(:name,:photo)
  end

  def set_list
    @list = List.find(params[:id])
  end
end

class SearchesController < ApplicationController
  # before_action :authenticate_user!, except: [:show, :index]

  def index
    @searches = Search.all
  end

  def new
    @search = Search.new(user_id: params[:id])
  end

  def create
    @search = Search.new(search_params)
    if @search.save
      redirect_to @search
    else
      render :new
    end
  end

  # Looking at results for a search
  def show
    @search = Search.find(params[:id])
  end

  private

  # TODO: Add zip to params
  def search_params
    params.require(:search).permit(:city, :state, :user_id)
  end
end

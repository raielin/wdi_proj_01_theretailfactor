class SearchesController < ApplicationController
  # before_action :authenticate_user!, except: [:show, :index]

  def new
    @search = Search.new
  end

  def create
    # TODO: Associate the current user with this
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

  def search_params
    params.require(:search).permit(:city, :state, :zip)
  end
end

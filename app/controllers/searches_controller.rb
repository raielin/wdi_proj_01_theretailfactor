class SearchesController < ApplicationController
  # Showing a form to create a new search
  def new
    @search = Search.new
  end

  # Creating a new search
  def create
    # Make a new search and now do something
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
    params.require(:search).permit(:name, :description)
  end
end

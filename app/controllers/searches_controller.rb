class SearchesController < ApplicationController
  # Showing a form to create a new search
  def new
    @search = Search.new
  end

  # Creating a new search
  def create
    # Make a new search and now do something

    redirect_to @search
  end

  # Looking at results for a search
  def show
    @search = Search.find(params[:id])
  end
end

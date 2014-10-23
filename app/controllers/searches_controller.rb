class SearchesController < ApplicationController
  # before_action :authenticate_user!, except: [:show, :index]
  before_action :find_search, only: [:show, :destroy]

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
    # TODO: Set up search method so this code doesn't have to go here? i.e. something like:
    # @search.results
    @results = Rubillow::Neighborhood.region_children({state: @search.state, city: @search.city, childtype: "neighborhood"})
    @neighborhoods = []
    @results.regions.each do |region|
      @neighborhoods << region.neighborhood
    end
  end

  def destroy
    @search.destroy
    # TODO: Add destroy confirmation notice.
    redirect_to searches_path
  end

  private

  def find_search
    @search = Search.find(params[:id])
  end

  # TODO: Add zip to params
  def search_params
    params.require(:search).permit(:user_id, :city, :state)
  end
end

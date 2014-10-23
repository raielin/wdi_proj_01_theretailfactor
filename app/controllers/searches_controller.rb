class SearchesController < ApplicationController
  # before_action :authenticate_user!, except: [:show, :index]
  before_action :results, only: :show

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
    # TODO: See note in search model re: setting up search method so this code doesn't have to go here, i.e. something like:
    # Search.find(params[:id]).results
    @results = Rubillow::Neighborhood.region_children({state: @search.state, city: @search.city, childtype: "neighborhood"})
    @neighborhoods = []
    @results.regions.each do |region|
      @neighborhoods << region.neighborhood
    end
  end

  private

  # TODO: Add zip to params
  def search_params
    params.require(:search).permit(:city, :state, :user_id)
  end
end

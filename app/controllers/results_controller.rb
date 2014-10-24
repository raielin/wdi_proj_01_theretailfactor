class ResultsController < ApplicationController
  before_action :authenticate_user!

  def show
    @result = Rubillow::Neighborhood.region_children({state: @search.state, city: @search.city, childtype: "neighborhood"})
    @neighborhoods = []
    @result.regions.each do |region|
      @neighborhoods << region.neighborhood
    end
  end

  private

  def result_params
    params.require(:result).permit(:search_id)
  end


end

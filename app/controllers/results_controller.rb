class ResultsController < ApplicationController
  before_action :authenticate_user!

  def show
    @results = Rubillow::Neighborhood.region_children({state: @search.state, city: @search.city, childtype: "neighborhood"})
    @neighborhoods = []
    @results.regions.each do |region|
      @neighborhoods << region.neighborhood
    end
  end

end

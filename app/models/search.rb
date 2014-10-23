class Search < ActiveRecord::Base
  belongs_to :user


  # TODO: Create method to run search.
  # TODO: Add zip as optional field.
  def self.results(city, state)
    Rubillow::Neighborhood.region_children({state: state, city: city, childtype: "neighborhood"})
    @neighborhoods = []
    query.regions.each do |region|
      @neighborhoods << region.neighborhood
    end
  end


end

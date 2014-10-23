class Search < ActiveRecord::Base
  belongs_to :user


  # TODO: Not sure if this is the right way to set it up - define method in model and call in search controller action?
  # TODO: Add zip as optional field.
  # TODO: Validate input
  # def results
  #   @results = Rubillow::Neighborhood.region_children({state: @self.state, city: @self.city, childtype: "neighborhood"})
  #   @neighborhoods = []
  #   @results.regions.each do |region|
  #     @neighborhoods << region.neighborhood
  #   end
  # end


end

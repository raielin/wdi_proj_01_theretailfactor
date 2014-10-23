require 'pry'
require 'dotenv'
require 'rubillow'

Dotenv.load

Rubillow.configure do |configuration|
  configuration.zwsid = ENV['ZILLOW_KEY']
end

# property = Rubillow::HomeValuation.zestimate({ :zpid => '48749425' })
# binding.pry
# if property.success?
#   puts property.price
# else
#   puts false
# end



# demos = Rubillow::Neighborhood.demographics({ state: "WA", city: "Seattle", neighborhood: "Ballard"})
# if demos.success?
#   puts demos.charts['Median Home Value']
# else
#   puts false
# end


# http://www.zillow.com/howto/api/GetRegionChildren.htm

query = Rubillow::Neighborhood.region_children({state:"MA", city: "Boston", childtype: "neighborhood"})
# if query.success?
#   query.regions.each do |region|
#     puts region.neighborhood
#   end
# else
#   puts false
# end

neighborhoods = []
query.regions.each do |region|
  neighborhoods << region.neighborhood
end

=begin

neighborhoods = Rubillow::Neighborhood.region_children({state:"MA", city: "Boston", childtype: "neighborhood"})

neighborhoods.region.id                       => "44269"
neighborhoods.regions[1].id                   => "54232"
neighborhoods.regions.count                   => 29
neighborhoods.regions[0].neighborhood         => ""

=end

# Modify Rubillow file /lib/rubillow/models/region.rb.
# Try one:
  # @neighborhood = @parser.xpath('//neighborhood').first.text
  # @neighborhood = @parser.xpath('//neighborhood').attribute('name').value

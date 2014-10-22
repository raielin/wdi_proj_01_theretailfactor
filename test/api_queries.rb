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



demos = Rubillow::Neighborhood.demographics({ state: "WA", city: "Seattle", neighborhood: "Ballard"})
if demos.success?
  puts demos.charts['Median Home Value']
else
  puts false
end

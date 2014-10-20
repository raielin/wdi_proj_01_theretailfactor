require 'pry'
require 'dotenv'
require 'rubillow'

Dotenv.load

Rubillow.configure do |configuration|
  configuration.zwsid = ENV['ZILLOW_KEY']
end

property = Rubillow::HomeValuation.zestimate({ :zpid => '48749425' })

binding.pry

if property.success?
  puts property.price
else
  puts false
end

binding.pry


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Searches.delete_all

searches_list = [
  ["Boston", "MA", 1],
  ["Chicago", "IL", 1],
  ["Oakland", "CA", 1],
  ["Atlanta", "GA", 1],
  ["Baltimore", "MD", 1]
]

searches_list.each do |city, state, user_id|
  search.create(city: city, state: state, user_id: user_id)
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

CITY_NAMES = ["New York", "California", "Texas", "San Diego", "Dallas", "Detroit", "Washington"].freeze
SHORT_CITY_NAMES = ["NYC", "CFC", "TXC", "SDC", "DLC", "DTC", "WSC"]

CITY_NAMES.each_with_index do |city_name, index|
  Airport.create(city: city_name, short_name: SHORT_CITY_NAMES[index])
end

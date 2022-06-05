# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

CITY_NAMES = ["New York", "California", "Texas", "San Diego", "Dallas", "Detroit", "Washington", "Brooklyn"].freeze
SHORT_CITY_NAMES = ["NYC", "CFC", "TXC", "SDC", "DLC", "DTC", "WSC", "BKC"]
AIRPORTS_IDS = [1, 2, 3, 4, 5, 6, 7, 8].freeze

CITY_NAMES.each_with_index do |city_name, index|
  Airport.create(city: city_name, short_name: SHORT_CITY_NAMES[index])
end

AIRPORTS_IDS.each do |airport_id|
  break if airport_id == AIRPORTS_IDS.size

  unless Flight.where(departure_airport_id: airport_id).exists? || Flight.where(arrival_airport_id: airport_id).exists?
    Flight.create(departure_airport_id: airport_id, arrival_airport_id: airport_id + 1, start_datetime: Time.local(2022, 06, 3, 12), flight_duration: Time.now)
  end
end

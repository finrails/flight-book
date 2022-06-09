# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

CITY_NAMES = ["New York", "California", "Texas", "San Diego", "Dallas", "Detroit", "Washington", "Brooklyn"].freeze
SHORT_CITY_NAMES = ["NYC", "CFC", "TXC", "SDC", "DLC", "DTC", "WSC", "BKC"]
DEPARTURE_DATE = %w[ 2022-06-10 2022-06-11 2022-06-12 2022-06-13 2022-06-14 2022-06-15 2022-06-16 2022-06-17 ]
ARRIVAL_DATE = %w[ 2022-06-11 2022-06-12 2022-06-13 2022-06-14 2022-06-15 2022-06-16 2022-06-17 2022-06-18 ]

CITY_NAMES.each_with_index do |city_name, index|
  Airport.create(city: city_name, short_name: SHORT_CITY_NAMES[index])
end

CITY_NAMES.size.times do |airport_id|
  unless Flight.where(departure_airport_id: airport_id).exists? || Flight.where(arrival_airport_id: airport_id).exists?
    Flight.create(departure_airport_id: airport_id, arrival_airport_id: airport_id + 1, start_datetime: DEPARTURE_DATE[airport_id], flight_duration: ARRIVAL_DATE[airport_id])
  end
end

class FlightBooksController < ApplicationController
  def new
    @booking = Booking.new

    @selected_flight = Flight.find(params[:flight_id])
    @total_passengers_count = params[:total_passengers].to_i

    @total_passengers_count.times { @booking.passengers.build }
  end

  def index
    @flight = Flight.new

    @future_flights = Flight.where(departure_airport_id: params[:flight][:departure_airport], arrival_airport_id: params[:flight][:arrival_airport], start_datetime: params[:flight][:departure_time]) if params[:flight]
  end
end

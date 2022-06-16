class FlightBooksController < ApplicationController
  def new
  end

  def index
    @flight = Flight.new

    @future_flights = Flight.where(departure_airport_id: params[:flight][:departure_airport], arrival_airport_id: params[:flight][:arrival_airport], start_datetime: params[:flight][:departure_time]) if params[:flight]
  end
end
